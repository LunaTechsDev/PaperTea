package macros;

import sys.io.File;
import haxe.macro.Expr.Field;
import haxe.macro.Context;

class BuildMacros {
  public static macro function attachFragShader(path: String): Array<Field> {
    var fields = Context.getBuildFields();
    var fileContent = File.read(path, false).readAll().toString();
    var sourceCode = fileContent;

    var shaderField: Field = {
      name: 'fragSrc',
      access: [APublic, AInline, AStatic],
      kind: FVar(macro : String, macro $v{sourceCode}),
      pos: Context.currentPos()
    };
    fields.push(shaderField);
    return fields;
  }

  public static macro function attachVertexShader(path: String): Array<Field> {
    var fields = Context.getBuildFields();
    var fileContent = File.read(path, false).readAll().toString();
    var sourceCode = fileContent;

    var shaderField: Field = {
      name: 'vertexSrc',
      access: [APublic, AInline, AStatic],
      kind: FVar(macro : String, macro $v{sourceCode}),
      pos: Context.currentPos()
    };
    fields.push(shaderField);
    return fields;
  }
}
