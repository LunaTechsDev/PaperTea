package pm.graphic;

/** @class
 *  The graphic displaying all the items information in the inventory menu.
 *  @param {Item} item - The current selected item
 *  @param {number} nbItem - The number of occurence of the selected item
 */
@:native('Item')
@:js.import('../../System/Graphic/Item.js')
extern class Item extends Base {
  /**
    * Constructor for item
    * @param item 
    * @param __1 
    * ```
    * { nbItem, possible = true, showSellPrice = 
          false }: { nbItem?: number, possible?: boolean, showSellPrice?: boolean } 
          = {}
    * ```
   */
  function new(item: Dynamic,
    ?__1: {@:optional var nbItem: Float; @:optional var possible: Bool; @:optional var showSellPrice: Bool;});

  var item: pm.core.Item;
  var graphicName: TextIcon;
  var graphicNb: Text;
  var graphicInformations: SkillItem;
  var graphicCurrencies: Array<TextIcon>;

  /**
    Update the item name (+ item number if shop).
  **/
  function updateName(?nbItem: Float): Void;

  /**
    Update the game item number.
  **/
  function updateNb(): Void;

  /**
    Drawing the item in choice box.
  **/
  function drawChoice(x: Float, y: Float, w: Float, h: Float): Void;

  /**
    Drawing the item description.
  **/
  function draw(x: Float, y: Float, w: Float, h: Float): Void;

  static var prototype: Item;
}
