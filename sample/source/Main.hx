package;

import openfl.display.Sprite;
import openfl.text.TextField;

import extension.gpg.Achievement;

class Main extends Sprite
{
	public function new()
	{
		super();
		
		var t:TextField = new TextField();
		t.text = Std.string(Achievement.sampleMethod(16));
		addChild(t);
	}
}