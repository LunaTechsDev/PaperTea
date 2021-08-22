package pm.eventcommand;

import pm.core.Enums.FadeType;
import pm.system.DynamicValue;

@:native('FadeScreen')
@:js.import('../../System/EventCommand/FadeScreen.js')
extern class FadeScreen extends Base {
  public var colorID: DynamicValue;
  public var duration: DynamicValue;
  public var speed: DynamicValue;

  public var fadeType: FadeType;

  function new(command: Array<Dynamic>);
}
