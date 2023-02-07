import 'link_ref.dart';

class BoardGameVersion {
  final int? id;
  final String? versionName;
  final int? yearPublished;
  final Uri? thumbnail;
  final Uri? image;
  final LinkRef? language;
  final List<LinkRef> publisher;
  final List<LinkRef> artist;

  BoardGameVersion({
    required this.id,
    this.versionName,
    this.thumbnail,
    this.image,
    this.yearPublished,
    this.language,
    this.publisher = const [],
    this.artist = const []
  });
}