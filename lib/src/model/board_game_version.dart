class BoardGameVersion {
  final int? id;
  final String? versionName;
  final Uri? thumbnail;
  final Uri? image;

  BoardGameVersion({
    required this.id,
    this.versionName,
    this.thumbnail,
    this.image
  });
}