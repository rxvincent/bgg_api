import 'package:bgg_api/src/model/link_ref.dart';
import 'package:xml/xml.dart';

import 'decoder.dart';

class LinkRefDecoder extends XmlDecoder<LinkRef> {
  const LinkRefDecoder();

  @override
  LinkRef decode(XmlNode xml) {
    return LinkRef(
      type: readStringAttribute(xml, 'type'),
      id: readId(xml),
      value: readStringAttribute(xml, 'value'),
    );
  }
}
