import 'Author.dart';
import 'Role.dart';

abstract class Film {
  String get type;
  String get title;
  String get overview;
  String get dateRelease;
  String get duration;
  String get posterAsset;
  String get backdropAsset;
  String? get certificate;

  int get userScore;
  Map<Author, Role>? get authors;
  List<String>? get genres;
  List<String>? get keywords;
  List<String>? get postersNetwork;
}