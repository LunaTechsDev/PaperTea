package macros;

import sys.io.File;
import haxe.macro.Expr.Field;
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.Type;
import sys.FileSystem;

using Lambda;
using core.StringExtensions;

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

  macro public static function buildFileList(path: String): Array<Field> {
    var fields = Context.getBuildFields();
    var files = FileSystem.readDirectory(path);

    var createFileField = (path: String, file: String) -> {
      /**
       * Turns the class names for all the asset files into variables
       * Appends the File Type At The End Of the Name
       * Does not handle duplicates in the same folder, which should never happen.
       */
      var extension = ~/\./g.split(file).pop();

      var cleanFileName = ~/\.(\w+)/g.replace(file, '$extension'.toUpperCase());
      cleanFileName = ~/!|\$|-|\s+/g.replace(cleanFileName, "_").capitalize();
      // .replace("-", "_")
      // .replace(" ", "_")
      // .replace("!", "")
      // .replace("$", "")
      // .capitalize();
      var splitPath = path.split("/");
      var lastPath = splitPath.slice(splitPath.length - 2, splitPath.length - 1).pop().capitalize();

      var newField: Field = {
        name: lastPath + "_" + cleanFileName,
        access: [Access.APublic, Access.AStatic, Access.AInline],
        kind: FieldType.FVar(macro : String, macro $v{path + file}),
        pos: Context.currentPos(),
        doc: null,
        meta: []
      };

      fields.push(newField);
    };

    var traverseFiles = (fn: (Dynamic, String, String) -> Void, path: String, file: String) -> {
      switch (FileSystem.isDirectory(path + file)) {
        case true:
          var bindFn = fn.bind(fn, path + file + "/", _);
          FileSystem.readDirectory(path + file).iter(bindFn);
        case false:
          createFileField(path, file);
      }
    };

    files.iter((file) -> {
      traverseFiles(traverseFiles, path, file);
    });
    return fields;
  }
}
