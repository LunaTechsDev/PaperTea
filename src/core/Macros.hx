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
    if (pluginName != null && isDist == null) {
      if (FileSystem.exists(pluginDir)) {
        var filepath = '${pluginDir}/${pluginName}/details.json';
        File.copy(filepath, '${Sys.getCwd()}/details.json');
        Sys.command('npx prettier ./details.json --write');
      }
    }
  }

  public static function setOutput() {
    var pluginName = getPluginName();
    if (isDist != null) {
      Compiler.setOutput('${Sys.getCwd()}/dist/code.js');
      File.copy('${Sys.getCwd()}/details.json', '${Sys.getCwd()}/dist/details.json');
    } else if (!CI_ENV) {
      Compiler.setOutput('${Macros.pluginDir}/${pluginName}/code.js');
    }
  }

  public static function runNapkin() {
    Context.onAfterGenerate(() -> {
      var pluginName = getPluginName();
      var pluginDir = '${Macros.pluginDir}/${pluginName}/';
      var distDir = '${Sys.getCwd()}/dist/';
      if (CI_ENV) {
        trace('Running LunaNapkin in CI enviroment')
        Sys.command('npx napkin --path=${distDir}');
        trace('Running LunaNapkin in CI enviroment')
      } else {
        Sys.command('npx napkin --path=${pluginDir}');
        Sys.command('npx napkin --path=${distDir}');
      }
    });
  }
}
#end
