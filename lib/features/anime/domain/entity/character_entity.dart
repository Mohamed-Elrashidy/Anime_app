import '../../../../core/enums/character_role.dart';

class CharacterEntity {
  final int id;
  final String name;
  final String imageUrl;
  final String animeName;
  final int hugs; // Number of hugs/likes
  final CharacterRole role;

  const CharacterEntity({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.animeName,
    required this.hugs,
    required this.role,
  });
}
