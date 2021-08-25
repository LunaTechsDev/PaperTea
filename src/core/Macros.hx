package core;

#if macro
import sys.io.File;
import sys.FileSystem;
import haxe.macro.Context;
import haxe.macro.Compiler;
import haxe.Json;

class Macros {
  public static var isDist: String = Context.definedValue('dist');

  static var pluginDir = '${Sys.getCwd()}/game/resources/app/Content/Datas/Scripts/Plugins';
  static var CI_ENV: Bool = Sys.getEnv('CI') != null;

  public static function getPluginName() {
    var data = File.getContent('${Sys.getCwd()}details.json');
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
        var distFilepath = '${Sys.getCwd()}details.json';
        var filepath = '${pluginDir}/${pluginName}/details.json';
        if (CI_ENV) {
          File.copy(distFilepath, '${Compiler.getOutput()}details.json');
        }
        File.copy(filepath, distFilepath);
        Sys.command('npx prettier ./details.json --write');
        File.copy(filepath, '${Compiler.getOutput()}details.json');
        Compiler.setOutput('${Compiler.getOutput()}code.js');
      }
    }
  }

  public static function runNapkin() {
    Context.onAfterGenerate(() -> {
      var pluginName = getPluginName();
      var pluginDir = '${pluginDir}/${pluginName}/';
      var distDir = '${Sys.getCwd()}/dist/';
      Sys.command('npx', ['napkin', '--path=${distDir}', '--name=${pluginName}']);
      if (!CI_ENV) {
        File.copy('${distDir}/code.js', '${pluginDir}/code.js');
      }
    });
  }
}
#end
