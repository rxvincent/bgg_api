import 'package:bgg_api/bgg_api.dart';
import 'package:test/test.dart';

void main() {
  test('should search board games by name', () async {
    Bgg bgg = Bgg();
    var searchGames = await bgg.searchBoardGames('list miłosny');
    expect(searchGames, hasLength(greaterThan(0)));
    expect(searchGames.every((e) => e.name.toLowerCase().contains('list miłosny')), isTrue);
  });

  test('should find board game by id', () async {
    Bgg bgg = Bgg();
    var boardGame = await bgg.getBoardGame(148228);
    expect(boardGame.name, equals('Splendor'));
    expect(boardGame.yearPublished, equals(2014));
    expect(boardGame.minPlayers, equals(2));
    expect(boardGame.maxPlayers, equals(4));
    expect(boardGame.minPlayTime, equals(30));
    expect(boardGame.minPlayTime, equals(30));
    expect(boardGame.playingTime, equals(30));
    expect(boardGame.minAge, equals(10));
    expect(boardGame.description, startsWith('Splendor is a game of chip-collecting'));
    expect(boardGame.thumbnail.toString(), startsWith('https://cf.geekdo-images.com/thumb'));
    expect(boardGame.image.toString(), startsWith('https://cf.geekdo-images.com/original'));
  });
}