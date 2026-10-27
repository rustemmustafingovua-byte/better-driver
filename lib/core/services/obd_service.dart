import 'dart:async';
import 'dart:convert';
import 'dart:io';

class ObdService {
  Socket? _socket;
  final StreamController<Map<String, dynamic>> _dataController =
      StreamController.broadcast();

  Stream<Map<String, dynamic>> get dataStream => _dataController.stream;

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

    return result;
  }
}
