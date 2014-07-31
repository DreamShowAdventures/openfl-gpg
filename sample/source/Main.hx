package;

import openfl.display.Sprite;
import openfl.events.MouseEvent;
import openfl.Lib;
import openfl.text.TextField;
import openfl.events.TouchEvent;

//import extension.api.GPG;

/**
 * This is a bare-bones example and test application for OpenFL-GPG.
 * 
 * @author Steve Richey
 */
class Main extends Sprite
{
	/**
	 * Incremented on each tap to cycle through test functions.
	 */
	private var testPosition:Int = 0;
	/**
	 * Displays results of test functions.
	 */
	private var textField:TextField;
	
	public function new()
	{
		super();
		
		// Instantiate the TextField object and add it to the stage.
		
		textField = new TextField();
		textField.width = Lib.current.stage.stageWidth;
		textField.height = Lib.current.stage.stageHeight;
		textField.text = "Tap to test OpenFL-GPG functions.";
		addChild(textField);
		
		// Calls the onTap function every time the screen is tapped.
		
		#if mobile
		Lib.current.stage.addEventListener(TouchEvent.TOUCH_END, onTap);
		#else
		Lib.current.stage.addEventListener(MouseEvent.MOUSE_DOWN, onClick);
		#end
	}
	
	/**
	 * Called each time the screen is tapped.
	 */
	private function onTap(?t:TouchEvent):Void
	{
		#if mobile
		//GPG.init();
		//GPG.test();
		#end
	}
	
	private function onClick(?m:MouseEvent):Void
	{
		#if !mobile
		append("Not on a mobile device!");
		#end
	}
	
	/**
	 * Convenience function to add a string to the TextField object.
	 */
	private function append(Text:Dynamic):Void
	{
		textField.text += "\n" + Std.string(Text);
	}
}