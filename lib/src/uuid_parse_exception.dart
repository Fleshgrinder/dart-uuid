// This is free and unencumbered software released into the public domain.

class UuidParseException implements Exception {
  final String input;

  final String message;

  final int offset;

  const UuidParseException(this.message, this.input, [this.offset = 0]);

  const UuidParseException.tooLong(this.input, int count)
      : message = 'Expected no more than 32 hexadecimal digits, gut bot ${count}',
        offset = 0;

  const UuidParseException.tooShort(this.input, int count)
      : message = 'Expected at least 32 hexadecimal digits, but got ${count}',
        offset = 0;

  UuidParseException.fromFormatException(this.input, FormatException e)
      : message = e.toString().replaceFirst(e.runtimeType.toString(), 'UuidParseException'),
        offset = e.offset;

  @override
  String toString() => message;
}
