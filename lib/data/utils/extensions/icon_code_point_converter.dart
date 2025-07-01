extension IconCodePointConverter on String {
  int toIconCodePoint() {
    return int.parse(this, radix: 16);
  }
}
