package pm.system;

/** @class
 *  A statistic of the game.
 *  @extends System.Base
 *  @param {Record<string, any>} - [json=undefined] Json object describing the 
 *  statistic
 */
@:native('Statistic')
@:js.import('../../System/System/Statistic.js')
extern class Statistic extends Translatable {
  function new(?json: {});
  var suffixName: String;
  var abbreviation: String;
  var isFix: Bool;
  var isRes: Bool;

  /**
    Get the max abbreviation.
  **/
  function getMaxAbbreviation(): String;

  /**
    Get the before abbreviation.
  **/
  function getBeforeAbbreviation(): String;

  /**
    Get the bonus abbreviation.
  **/
  function getBonusAbbreviation(): String;

  /**
    Get the added abbreviation.
  **/
  function getAddedAbbreviation(): String;

  /**
    Get the next abbreviation.
  **/
  function getAbbreviationNext(): String;

  static var prototype: Statistic;

  /**
    Create an res percent element.
  **/
  static function createElementRes(id: Float, name: String): Statistic;

  /**
    Create an res percent element.
  **/
  static function createElementResPercent(id: Float, name: String): Statistic;
}
