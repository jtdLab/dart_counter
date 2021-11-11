/// Error that may occur when parsing a String to a [Enum]
class EnumParseError<T extends Enum> extends Error {
  final String notParsableString;

  EnumParseError(this.notParsableString);

  @override
  String toString() => 'Error parsing $notParsableString to enum';
}
