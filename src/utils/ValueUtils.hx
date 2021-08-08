package utils;

import pm.system.DynamicValue;

@:forward
@:forwardStatics
abstract DyV(DynamicValue) {
  public inline function new(?d: DynamicValue) {
    if (d == null) {
      this = DynamicValue.createNone();
    } else {
      this = d;
    }
  }

  public inline static function createNum(num: Float) {
    return new DyV(DynamicValue.createNumber(num));
  }

  public inline static function createDouble(num: Float) {
    return new DyV(DynamicValue.createNumberDouble(num));
  }

  public inline static function createMsg(msg: String) {
    return new DyV(DynamicValue.createMessage(msg));
  }

  public inline static function createKB(key: Int) {
    return new DyV(DynamicValue.createKeyBoard(cast key));
  }

  @:op(~A) public inline function getVal<T>(): T {
    return this.getValue();
  }
}

inline function toDyv(dValue: DynamicValue) {
  return new DyV(dValue);
}
