package js.lib;

typedef NewableFunction = {
  /**
    Calls the function with the specified object as the this value and the elements of specified array as the arguments.
  **/
  @:overload(function<T, A>(thisArg: T, args: A): Void {})
  function apply<T>(thisArg: T): Void;

  /**
    Calls the function with the specified object as the this value and the specified rest arguments as the arguments.
  **/
  function call<T, A>(thisArg: T, args: haxe.extern.Rest<Any>): Void;

  /**
    For a given function, creates a bound function that has the same body as the original function.
    The this object of the bound function is associated with the specified object, and has the specified initial parameters.
  **/
  @:overload(function<A0, A, R>(thisArg: Dynamic, arg0: A0): {} {})
  @:overload(function<A0, A1, A, R>(thisArg: Dynamic, arg0: A0, arg1: A1): {} {})
  @:overload(function<A0, A1, A2, A, R>(thisArg: Dynamic, arg0: A0, arg1: A1, arg2: A2): {} {})
  @:overload(function<A0, A1, A2, A3, A, R>(thisArg: Dynamic, arg0: A0, arg1: A1, arg2: A2, arg3: A3): {} {})
  @:overload(function<AX, R>(thisArg: Dynamic, args: haxe.extern.Rest<AX>): {} {})
  function bind<T>(thisArg: Dynamic): T;

  /**
    Returns a string representation of a function.
  **/
  function toString(): String;

  var prototype: Dynamic;
  final length: Float;
  var arguments: Dynamic;
  var caller: haxe.Constraints.Function;

  /**
    Returns the name of the function. Function names are read-only and can not be changed.
  **/
  final name: String;
};
