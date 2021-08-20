package core;

#if macro
import sys.io.File;
import sys.FileSystem;
import haxe.macro.Context;
import haxe.macro.Compiler;
import haxe.Json;
#end

class Macros {
  #if macro
  static var pluginDir = '${Sys.getCwd()}/game/resources/app/Content/Datas/Scripts/Plugins';

  public static function getPluginName() {
    var data = File.getContent('${Sys.getCwd()}/details.json');
    var details = Json.parse(data);
    if (details.name != null) {
      return details.name;
    } else {
      return 'Haxeplugin';
    }
  }

  public static function copyDetails() {
    var pluginName = getPluginName();
    if (pluginName != null) {
      if (FileSystem.exists(pluginDir)) {
        File.copy('${pluginDir}/${pluginName}/details.json', '${Sys.getCwd()}/details.json');
        Sys.command('npx prettier ./details.json --write');
      }
    }
  }

  public static function setOutput() {
    var isDist = Context.definedValue('dist');
    var pluginName = getPluginName();
    if (isDist != null) {
      Compiler.setOutput('${Sys.getCwd()}/dist/code.js');
      File.copy('${Sys.getCwd()}/details.json', '${Sys.getCwd()}/dist/details.json');
    } else {
      Compiler.setOutput('${Macros.pluginDir}/${pluginName}/code.js');
    }
  }

  public static function runNapkin() {
    Context.onAfterGenerate(() -> {
      var pluginName = getPluginName();
      var pluginDir = '${Macros.pluginDir}/${pluginName}/';
      var distDir = '${Sys.getCwd()}/dist/';
      Sys.command('npx napkin --path=${pluginDir}');
      Sys.command('npx napkin --path=${distDir}');
    });
  }
  #end
}
