import 'package:xml/xml.dart';

import '../model/board_game_version.dart';
import 'link_ref_decoder.dart';
import 'decoder.dart';

class BoardGameVersionDecoder extends XmlDecoder<BoardGameVersion> {
  const BoardGameVersionDecoder();

  @override
  BoardGameVersion decode(XmlNode xml) {
    return BoardGameVersion(
      id: readId(xml),
      yearPublished: readIntValue(xml, 'yearpublished'),
      versionName: readStringValueWithAttribute(xml, 'name', 'type', 'primary'),
      thumbnail : readUri(xml, 'thumbnail'),
      image: readUri(xml, 'image'),
      language: LinkRefDecoder().decode(findElements(xml,'link').firstWhere((e) => e.getAttribute('type') == 'language')),
      artist: findElements(xml,'link').where((e) => e.getAttribute('type') == 'boardgameartist').map((e) => LinkRefDecoder().decode(e)).toList(),
      publisher: findElements(xml,'link').where((e) => e.getAttribute('type') == 'boardgamepublisher').map((e) => LinkRefDecoder().decode(e)).toList()
    );
  }
}
