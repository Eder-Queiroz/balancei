extension HexColorConverter on String {
  String _normalizeColorString() {
    return 'ff${toLowerCase().replaceAll('#', '')}';
  }

  int toHexColor() {
    final normalizedColor = _normalizeColorString();
    return int.parse(normalizedColor, radix: 16);
  }
}
