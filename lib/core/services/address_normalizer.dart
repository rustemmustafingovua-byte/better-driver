class AddressNormalizer {
  static final Map<String, String> _renames = {
    'Машиностроителей': 'Київська',
    'Кирова': 'Київська',
    'Ленина': 'Соборна',
    'Коминтерна': 'Незалежності',
    'Октябрьская': 'Жовтнева',
    'Советская': 'Радянська',
    'Гагарина': 'Підгірна',
    'Куйбышева': 'Хрещатик',
    'Фрунзе': 'Василя Стуса',
    'Калинина': 'Володимирська',
    'Пархоменка': 'Дмитра Яворницького',
    'Котовского': 'Січових Стрільців',
    'Чкалова': 'Героїв Небесної Сотні',
    'Ватутіна': 'Юрія Коноплі',
    'Орджоникидзе': 'Віталія Шухевича',
    'Короленко': 'Павла Зіборова',
  };

  static final Map<String, String> _ruToUa = {
    'улица': 'вулиця',
    'переулок': 'провулок',
    'площадь': 'площа',
    'шоссе': 'шосе',
    'проспект': 'проспект',
    'бульвар': 'бульвар',
  };

  static String normalize(String input) {
    final text = input.trim();
    final lower = text.toLowerCase();

    final isUa = lower.contains('вулиця') ||
        lower.contains('проспект') ||
        lower.contains('провулок') ||
        lower.contains('майдан') ||
        lower.contains('площа');

    if (isUa) return _applyRenames(text);

    final isRu = lower.contains('улица') ||
        lower.contains('проспект') ||
        lower.contains('переулок') ||
        lower.contains('площадь') ||
        lower.contains('шоссе');

    if (isRu) {
      final result = text.split(' ').map((part) {
        final clean = part.toLowerCase();
        return _ruToUa[clean] ?? part;
      }).join(' ');
      return _applyRenames(result);
    }

    return _applyRenames(text);
  }

  static String _applyRenames(String text) {
    var result = text;
    for (final entry in _renames.entries) {
      if (result.contains(entry.key)) {
        result = result.replaceAll(entry.key, entry.value);
      }
    }
    return result;
  }

  static List<String> variants(String street) {
    final normalized = normalize(street);
    final variants = <String>{normalized};

    for (final entry in _renames.entries) {
      if (normalized.contains(entry.value)) {
        variants.add(normalized.replaceAll(entry.value, entry.key));
      }
    }

    return variants.toList();
  }
}
