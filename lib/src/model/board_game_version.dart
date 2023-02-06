class BoardGameVersion {
  final int? id;
  final String? versionName;
  final int? yearPublished;
  final Uri? thumbnail;
  final Uri? image;

  BoardGameVersion({
    required this.id,
    this.versionName,
    this.thumbnail,
    this.image,
    this.yearPublished
  });
}