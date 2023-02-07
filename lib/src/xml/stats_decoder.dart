import 'package:bgg_api/src/model/stats.dart';
import 'package:xml/xml.dart';

import 'decoder.dart';

class StatsDecoder extends XmlDecoder<Stats?> {
  const StatsDecoder();

  final RankDecoder rankDecoder = const RankDecoder();

  @override
  Stats? decode(XmlNode? xml) {
    if (xml == null) {
      return null;
    }
    final data = getElement(xml, "ratings");
    return Stats(
      weight: readDoubleValue(data!, 'averageweight'),
      avgRating: readDoubleValue(data!, 'average'),
      ranks: findElements(getElement(data!, 'ranks'), 'rank').map((e) => rankDecoder.decode(e)).toList(),
    );
  }
}

class RankDecoder extends XmlDecoder<Rank> {
  const RankDecoder();

  @override
  Rank decode(XmlNode xml) {
    return Rank(
      type: readStringAttribute(xml, 'type'),
      id: readIntAttribute(xml, 'id'),
      shortName: readStringAttribute(xml, 'name'),
      fullName: readStringAttribute(xml, 'friendlyname'),
      value: readIntAttribute(xml, 'value'),
    );
  }
}

