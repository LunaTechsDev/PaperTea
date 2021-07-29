package pm.common;

import js.lib.Error;
import js.html.CanvasRenderingContext2D;
import js.html.VideoElement;
import js.html.CanvasElement;
import js.html.HtmlElement;
import electron.Display;

/**
 * A class replaced according to te platform used (desktop, browser, mobile...)
 * This is a static class and thus can't be instantiated.
 * @class Platform
 */
@:native('Platform')
extern class Platform {
  /**
   * Root Directory of the application
   * `app.getAppPath()`
   */
  public static final ROOT_DIRECTORY: String;

  /**
   * Display screen from electron
   */
  public static final screen: Display;

  /**
   * Width of the screen
   */
  public static final screenWidth: Float;

  /**
   * Height of the screen
   */
  public static final screenHeight: Float;

  /**
   * Whether we're on desktop or not.
   * By default this is true.
   */
  public static final DESKTOP: Bool;

  /**
   * `remote.getGlobal('modeTest);
   */
  public static final MODE_TEST: String;

  /**
   * The test mode string for battle troops
   * `battleTroop`;
   */
  public static final MODE_TEST_BATTLE_TROOP: String;

  /**
   * Test mode for showing text preview
   * `showTextPreview`
   */
  public static final MODE_TEST_SHOW_TEXT_PREVIEW: String;

  /**
   * Get the HTML element by ID
   * `document.getElementById('three-d');'
   */
  public static final canvas3D: HtmlElement;

  /**
   * Canvad HUD element for HUD UI Elements
   */
  public static final canvasHUD: CanvasElement;

  /**
   * Canvas for showing video within PaperMaker
   */
  public static final canvasVideos: VideoElement;

  /**
   * 2D canvas for rendering 2d element within PaperMaker
   */
  public static final canvasRendering: CanvasElement;

  /**
   * Canvas rendering context for the HUD elements.
   */
  public static final ctx: CanvasRenderingContext2D;

  /**
   * Canvas rendering context for the 2D elements.
   */
  public static final ctxr: CanvasRenderingContext2D;

  /** 
   *  Set window title.
   *  @static
   *  @param {string} title - The title to display
   */
  public static function setWindowTitle(title: String): Void;

  /** 
   *  Set window size.
   *  @static
   *  @param {number} w - The window width
   *  @param {number} h - The window height
   *  @param {boolean} f - Indicate if the window is fullscreen
   */
  public static function setWindowSize(width: Float, height: Float, fullScreen: Bool): Void;

  /**
   * Quits the application.
   */
  public static function quit(): Void;

  /**
   * Shows an error object on screen.
   * @param e 
   * @return 
   */
  public static function showError(e: Error): Void;

  /** 
   *  Show an error message.
   *  @static
   *  @param {string} msg - The error message
   *  @param {boolean} displayDialog - Indicates if you need to display the 
   *  dialog box
   */
  public static function showErrorMessage(message: String, displayDialog: Bool): Void;

  /** 
   *  Check if there is a specific mode test (app args).
   *  @static
   *  @returns {boolean}
   */
  public static function isModeTestNormal(): Bool;
}
