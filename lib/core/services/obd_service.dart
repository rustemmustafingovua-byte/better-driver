import 'dart:async';
import 'dart:convert';
import 'dart:io';

class ObdService {
  Socket? _socket;
  final StreamController<Map<String, dynamic>> _dataController =
      StreamController.broadcast();

  Stream<Map<String, dynamic>> get dataStream => _dataController.stream;
  final List<String> _dtcs = [];

  Future<void> connect(String host, {int port = 35000}) async {
    try {
      _socket = await Socket.connect(host, port, timeout: const Duration(seconds: 5));
      _listenToObd();
    } catch (e) {
      _dataController.addError(e);
    }
  }

  Future<void> _listenToObd() async {
    if (_socket == null) return;
    final subscription = _socket!.listen((data) {
      final response = utf8.decode(data);
      final parsed = _parseObdResponse(response);
      _dataController.add(parsed);
    }, onError: (e) {
      _dataController.addError(e);
    });
    await subscription.asFuture();
  }

  Future<void> sendCommand(String cmd) async {
    if (_socket == null) return;
    _socket!.writeln(cmd);
  }

  List<String> readDtcs() {
    return List.unmodifiable(_dtcs);
  }

  Future<void> disconnect() async {
    await _socket?.close();
    _socket = null;
  }

  Map<String, dynamic> _parseObdResponse(String response) {
    final result = <String, dynamic>{};

    final rpmMatch = RegExp(r'41 0C ([0-9A-F]{2})').firstMatch(response);
    if (rpmMatch != null) {
      final hex = rpmMatch.group(1)!;
      final rpm = int.parse(hex, radix: 16) / 4;
      result['rpm'] = rpm.toInt();
    }

    final speedMatch = RegExp(r'41 0D ([0-9A-F]{2})').firstMatch(response);
    if (speedMatch != null) {
      final hex = speedMatch.group(1)!;
      final speed = int.parse(hex, radix: 16);
      result['speed'] = speed;
    }

    final tempMatch = RegExp(r'41 05 ([0-9A-F]{2})').firstMatch(response);
    if (tempMatch != null) {
      final hex = tempMatch.group(1)!;
      final temp = int.parse(hex, radix: 16) - 40;
      result['coolantTemp'] = temp;
    }

    final fuelMatch = RegExp(r'41 2F ([0-9A-F]{2})').firstMatch(response);
    if (fuelMatch != null) {
      final hex = fuelMatch.group(1)!;
      final fuel = int.parse(hex, radix: 16) * 100 / 255;
      result['fuel'] = fuel.toInt();
    }

    final intakeMatch = RegExp(r'41 0F ([0-9A-F]{2})').firstMatch(response);
    if (intakeMatch != null) {
      final hex = intakeMatch.group(1)!;
      result['intakeTemp'] = int.parse(hex, radix: 16) - 40;
    }

    final throttleMatch = RegExp(r'41 11 ([0-9A-F]{2})').firstMatch(response);
    if (throttleMatch != null) {
      final hex = throttleMatch.group(1)!;
      result['throttle'] = (int.parse(hex, radix: 16) * 100 / 255).toInt();
    }

    final loadMatch = RegExp(r'41 04 ([0-9A-F]{2})').firstMatch(response);
    if (loadMatch != null) {
      final hex = loadMatch.group(1)!;
      result['load'] = (int.parse(hex, radix: 16) * 100 / 255).toInt();
    }

    final dtcMatch = RegExp(r'43 ([0-9A-F ]+)').firstMatch(response);
    if (dtcMatch != null) {
      final hex = dtcMatch.group(1)!.replaceAll(' ', '');
      final codes = <String>[];
      for (var i = 0; i < hex.length; i += 4) {
        if (i + 4 <= hex.length) {
          codes.add(hex.substring(i, i + 4));
        }
      }
      _dtcs.clear();
      _dtcs.addAll(codes);
      result['dtcCount'] = codes.length;
    }

    return result;
  }
}
