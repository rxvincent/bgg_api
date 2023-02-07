import 'package:bgg_api/src/xml/video_decoder.dart';
import 'package:bgg_api/src/xml/board_game_version_decoder.dart';
import 'package:bgg_api/src/xml/link_ref_decoder.dart';
import 'package:bgg_api/src/xml/stats_decoder.dart';
import 'package:xml/xml.dart';

import '../model/board_game.dart';
import 'decoder.dart';

class BoardGameDecoder extends XmlDecoder<BoardGame> {
  const BoardGameDecoder();

  final VideoDecoder videoDecoder = const VideoDecoder();
  final BoardGameVersionDecoder versionDecoder = const BoardGameVersionDecoder();
  final LinkRefDecoder linkRefDecoder = const LinkRefDecoder();
  final StatsDecoder statsDecoder = const StatsDecoder();

  @override
  BoardGame decode(XmlNode xml) {
    return BoardGame(
      id: readId(xml),
      name: readStringValueWithAttribute(xml, 'name', 'type', 'primary'),
      description: readStringUnescaped(xml, 'description'),
      yearPublished: readIntValue(xml, 'yearpublished'),
      minPlayers: readIntValue(xml, 'minplayers'),
      maxPlayers: readIntValue(xml, 'maxplayers'),
      playingTime: readIntValue(xml, 'playingtime'),
      minPlayTime: readIntValue(xml, 'minplaytime'),
      maxPlayTime: readIntValue(xml, 'maxplaytime'),
      minAge: readIntValue(xml, 'minage'),
      thumbnail: readUri(xml, 'thumbnail'),
      image: readUri(xml, 'image'),
      videos: findElements(getElement(xml, 'videos'), 'video').map((e) => videoDecoder.decode(e)).toList(),
      names: findElements(xml, 'name').map((e) => e.getAttribute('value')).whereType<String>().toList(),
      versions: findElements(getElement(xml, 'versions'), 'item').map((e) => versionDecoder.decode(e)).toList(),
      category: findElements(xml,'link').where((e) => e.getAttribute('type') == 'boardgamecategory').map((e) => linkRefDecoder.decode(e)).toList(),
      mechanic: findElements(xml,'link').where((e) => e.getAttribute('type') == 'boardgamemechanic').map((e) => linkRefDecoder.decode(e)).toList(),
      family: findElements(xml,'link').where((e) => e.getAttribute('type') == 'boardgamefamily').map((e) => linkRefDecoder.decode(e)).toList(),
      expansion: findElements(xml,'link').where((e) => e.getAttribute('type') == 'boardgameexpansion').map((e) => linkRefDecoder.decode(e)).toList(),
      intergration: findElements(xml,'link').where((e) => e.getAttribute('type') == 'boardgameintegration').map((e) => linkRefDecoder.decode(e)).toList(),
      compilation: findElements(xml,'link').where((e) => e.getAttribute('type') == 'boardgamecompilation').map((e) => linkRefDecoder.decode(e)).toList(),
      designer: findElements(xml,'link').where((e) => e.getAttribute('type') == 'boardgamedesigner').map((e) => linkRefDecoder.decode(e)).toList(),
      artist: findElements(xml,'link').where((e) => e.getAttribute('type') == 'boardgameartist').map((e) => linkRefDecoder.decode(e)).toList(),
      publisher: findElements(xml,'link').where((e) => e.getAttribute('type') == 'boardgamepublisher').map((e) => linkRefDecoder.decode(e)).toList(),
      stats: statsDecoder.decode(getElement(xml, 'statistics')),
    );
  }
}
