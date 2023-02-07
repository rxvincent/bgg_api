class Stats {
  final double? avgRating;
  final double? weight;
  final List<Rank> ranks;

  Stats({
    this.avgRating,
    this.weight,
    this.ranks = const []
  });
}

class Rank {
  final String? type;
  final int? id;
  final String? shortName;
  final String? fullName;
  final int? value;

  Rank({
    this.type,
    this.id,
    this.shortName,
    this.fullName,
    this.value,
  });
}