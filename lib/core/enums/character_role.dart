enum CharacterRole {
  main,
  supporting,
  background;

  String get displayName {
    switch (this) {
      case CharacterRole.main:
        return 'Main';
      case CharacterRole.supporting:
        return 'Supporting';
      case CharacterRole.background:
        return 'Background';
    }
  }
}