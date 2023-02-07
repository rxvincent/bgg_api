import 'video.dart';
import 'board_game_version.dart';
import 'link_ref.dart';
import 'stats.dart';

class BoardGame {
  final int? id;
  final String? name;
  final String? description;
  final int? yearPublished;
  final int? minPlayers;
  final int? maxPlayers;
  final int? playingTime;
  final int? minPlayTime;
  final int? maxPlayTime;
  final int? minAge;
  final Uri? thumbnail;
  final Uri? image;
  final List<Video> videos;
  final List<String> names;
  final List<BoardGameVersion> versions;
  final List<LinkRef> category;
  final List<LinkRef> mechanic;
  final List<LinkRef> family;
  final List<LinkRef> expansion;
  final List<LinkRef> intergration;
  final List<LinkRef> compilation;
  final List<LinkRef> designer;
  final List<LinkRef> artist;
  final List<LinkRef> publisher;
  final Stats? stats;
  
  BoardGame({
    required this.id,
    required this.name,
    required this.description,
    required this.yearPublished,
    required this.minPlayers,
    required this.maxPlayers,
    required this.playingTime,
    required this.minPlayTime,
    required this.maxPlayTime,
    required this.minAge,
    required this.thumbnail,
    required this.image,
    this.stats,
    this.videos = const [],
    this.names = const [],
    this.versions = const [],
    this.category = const [],
    this.mechanic = const [],
    this.family = const [],
    this.expansion = const [],
    this.intergration = const [],
    this.compilation = const [],
    this.designer = const [],
    this.artist = const [],
    this.publisher = const [],
  });

  @override
  String toString() {
    return 'BoardGame{id: $id, name: $name, description: $description, yearPublished: $yearPublished, minPlayers: $minPlayers, maxPlayers: $maxPlayers, playingTime: $playingTime, minPlayTime: $minPlayTime, maxPlayTime: $maxPlayTime, minAge: $minAge, thumbnail: $thumbnail, image: $image, videos: $videos}';
  }
}
