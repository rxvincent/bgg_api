import 'package:xml/xml.dart';

import '../model/board_game_version.dart';
import 'decoder.dart';

class BoardGameVersionDecoder extends XmlDecoder<BoardGameVersion> {
  const BoardGameVersionDecoder();

  @override
  BoardGameVersion decode(XmlNode xml) {
    return BoardGameVersion(
      id: readId(xml),
      versionName: readStringValueWithAttribute(xml, 'name', 'type', 'primary'),
      thumbnail : readUri(xml, 'thumbnail'),
      image: readUri(xml, 'image'),
    );
  }
}
