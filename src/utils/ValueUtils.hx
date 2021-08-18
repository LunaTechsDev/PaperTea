package utils;

import pm.system.DynamicValue;

@:forward
@:forwardStatics
abstract DyV(DynamicValue) {
  public inline function new(?d: DynamicValue) {
    this = d == null ? DynamicValue.createNone() : d;
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

  public inline static function createProp(id: Float) {
    return new DyV(DynamicValue.createProperty(id));
  }

  public inline static function createParam(id: Float) {
    return new DyV(DynamicValue.createParameter(id));
  }

  public inline static function createVar(id: Float) {
    return new DyV(DynamicValue.createVariable(id));
  }

  public inline static function createSwtch(switchValue: Bool) {
    return new DyV(DynamicValue.createSwitch(switchValue));
  }

  @:op(~A) public inline function getVal<T>(): T {
    return this.getValue();
  }
}

inline function toDyv(dValue: DynamicValue) {
  return new DyV(dValue);
}
