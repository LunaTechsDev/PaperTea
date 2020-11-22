package macros;

import haxe.macro.TypedExprTools;
import haxe.macro.Type.TypedExpr;
import haxe.macro.ExprTools;
import haxe.macro.Expr.Field;
import haxe.macro.Type.ClassType;
#if macro
import haxe.macro.Expr;
import haxe.macro.Context;
import haxe.macro.TypeTools;

using haxe.macro.Tools;
using Lambda;
using StringTools;
#end

class FnMacros {
  public static macro function pipe(exprs: Array<Expr>): Expr {
    var exprs = [for (expr in exprs) macro var _ = $expr];
    exprs.push(macro _);
    return macro $b{exprs};
  }

  // Credit https://code.haxe.org/category/macros/combine-objects.html
  // we use an Array<Expr>, because we want the macro to work on variable amount of structures
  public static macro function combine(rest: Array<Expr>): Expr {
    var pos = Context.currentPos();
    var block = [];
    var cnt = 1;
    // since we want to allow duplicate field names, we use a Map. The last occurrence wins.
    var all = new Map<String, haxe.macro.ObjectField>();
    for (rx in rest) {
      var trest = Context.typeof(rx);
      switch (trest.follow()) {
        case TAnonymous(_.get() => tr):
          // for each parameter we create a tmp var with an unique name.
          // we need a tmp var in the case, the parameter is the result of a complex expression.
          var tmp = 'tmp_' + cnt;
          cnt++;
          var extVar = macro $i{tmp};
          block.push(macro var $tmp = $rx);
          for (field in tr.fields) {
            var fname = field.name;
            all.set(fname, { field: fname, expr: macro $extVar.$fname });
          }
        default:
          return Context.error('Object type expected instead of ' + trest.toString(), rx.pos);
      }
    }
    var result = { expr: EObjectDecl(all.array()), pos: pos };
    block.push(macro $result);
    return macro $b{block};
  }
}
