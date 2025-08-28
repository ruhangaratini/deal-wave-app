enum BaseRegexEnum {
  number;

  RegExp getRegex() => switch (this) {
    BaseRegexEnum.number => RegExp(r'^[0-9]+.?[0-9]*'),
  };
}
