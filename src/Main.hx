using utils.ValueUtils;

import pm.common.Constants;

function main() {
  var speedNormal = Constants.SMALL_FONT_SIZE;
  var a = new DyV();
  var b = DyV.createNum(3);
  var result: Int = ~a;
  var resultTwo: Int = ~b;
  var resultThree: Int = ~DyV.createNum(10);

  trace(result, resultTwo, resultThree, 'Main result');
  trace(speedNormal, 'Speed normal from Constants');
  trace('Paper Maker plugin from Haxe programming language');
}
