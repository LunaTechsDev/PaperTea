package pm.system;

extern class WeaponArmorKind extends Translatable {
  function new(?json: {});
  var equipments: Array<Bool>;
  static var prototype: WeaponArmorKind;
}
