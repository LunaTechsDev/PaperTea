package pm.system;

import pm.core.Types.IconJSON;
import haxe.DynamicAccess;

/** 

  * Something at least including an icon
  * @extends {Lang}
  * @property {number} pictureID The icon picture ID
  * @param {Object} [json=undefined] Json object describing the icon
 */
@:native('Icon')
@:js.import('../../System/System/Icon.js')
extern class Icon extends Lang {
  public function new(?json: IconJSON): Void;
  public function setup(): Void;
  public function read(json: IconJSON): Void;
}
