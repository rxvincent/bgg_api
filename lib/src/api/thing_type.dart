enum ThingType { boardgame, boardgameexpansion, boardgameaccessory, boardgameversion, videogame, rpgitem, rpgissue }

extension ThingTypeName on ThingType {
  String name() {
    return toString().split('.').last;
  }
}
