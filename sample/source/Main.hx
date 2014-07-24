package;

import openfl.display.Sprite;
import openfl.text.TextField;
import openfl.events.TouchEvent;

import extension.gpg.Achievement;
import extension.gpg.GameServices;

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
	/**
	 * The GameServices object that will be used.
	 */
	private var gameServices:GameServices;
	
	public function new()
	{
		super();
		
		// Instantiate the GameServices object.
		
		gameServices = new GameServices();
		
		// Instantiate the TextField object and add it to the stage.
		
		textField = new TextField();
		textField.text = "Tap to test OpenFL-GPG functions.";
		addChild(textField);
		
		// Calls the onTap function every time the screen is tapped.
		
		addEventListener(TouchEvent.TOUCH_END, onTap);
	}
	
	/**
	 * Called each time the screen is tapped.
	 */
	private function onTap(?t:TouchEvent):Void
	{
		#if (android || ios)
		switch (testPosition)
		{
			case 0: gameServices.isAuthorized();
		}
		#end
		
		// Increment this value every tap to call the next-highest test function 
		
		testPosition++;
	}
	
	/**
	 * Convenience function to add a string to the TextField object.
	 */
	private function append(Text:String):Void
	{
		return textField.text += "\n" + Text;
	}
}