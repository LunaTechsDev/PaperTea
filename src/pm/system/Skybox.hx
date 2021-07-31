package pm.system;

extern class Skybox extends Base {
  function new(?json: {});
  var front: Float;
  var back: Float;
  var top: Float;
  var bot: Float;
  var left: Float;
  var right: Float;

  /**
    Create the textures for the background
  **/
  function createTextures(): Array<Dynamic>;

  static var prototype: Skybox;
}
