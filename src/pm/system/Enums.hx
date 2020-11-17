package pm.system;

enum abstract CommandMoveKind(Int) from Int to Int {
  public var MoveNorth = 0;
  public var MoveSouth = 1;
  public var MoveWest = 2;
  public var MoveEast = 3;
  public var MoveNorthWest = 4;
  public var MoveNorthEast = 5;
  public var MoveSouthWest = 6;
  public var MoveSouthEast = 7;
  public var MoveRandom = 8;
  public var MoveHero = 9;
  public var MoveOppositeHero = 10;
  public var MoveFront = 11;
  public var MoveBack = 12;
  public var ChangeGraphics = 13;
}
