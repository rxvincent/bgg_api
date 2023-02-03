import 'video.dart';
import 'board_game_version.dart';

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
    this.videos = const [],
    this.names = const [],
    this.versions = const [],
  });

  @override
  String toString() {
    return 'BoardGame{id: $id, name: $name, description: $description, yearPublished: $yearPublished, minPlayers: $minPlayers, maxPlayers: $maxPlayers, playingTime: $playingTime, minPlayTime: $minPlayTime, maxPlayTime: $maxPlayTime, minAge: $minAge, thumbnail: $thumbnail, image: $image, videos: $videos}';
  }
}
