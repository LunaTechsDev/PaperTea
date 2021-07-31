import pm.common.Common;
import pm.manager.Manager;
import pm.core.Core;
import pm.datas.Datas;
import pm.system.System;
import pm.scene.Scene;
import pm.event.EventCommand;

// Turns into the form import { RPM } from "../path.js"

@:js.import('../path.js')
extern class RPM {
  public static var Manager: Manager;
  public static var Core: Core;
  public static var Datas: Datas;
  public static var EventCommand: EventCommand;
  public static var Scene: Scene;
  public static var Common: Common;
  public static var System: System;
}

var CommonA: Common;
