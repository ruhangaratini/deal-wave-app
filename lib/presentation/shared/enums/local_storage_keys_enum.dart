enum LocalStorageKeysEnum {
  isDarkMode;

  String getKey() => switch (this) {
    LocalStorageKeysEnum.isDarkMode => 'isDarkMode',
  };
}
