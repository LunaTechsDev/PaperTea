package pm.core;

@:native('Portion')
extern class Portion {
  function new(?x: Float, ?y: Float, ?z: Float);
  var x: Float;
  var y: Float;
  var z: Float;

  /**
    Test if a portion is equal to another.
  **/
  function equals(portion: Portion): Bool;

  /**
    Get the portion file name.
  **/
  function getFileName(): String;

  static var prototype: Portion;

  /**
    Create a portion from an array.
  **/
  static function createFromArray(array: Array<Float>): Portion;

  /**
    Create a portion from a three.js Vector3.
  **/
  static function createFromVector3(position: Vector3): Portion;
}
