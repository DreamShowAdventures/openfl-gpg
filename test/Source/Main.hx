package;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import flash.display.BitmapData;
import openfl.display.Bitmap;
import openfl.display.Sprite;
import openfl.events.Event;
import openfl.Lib;
import openfl.text.TextField;
import openfl.text.TextFormat;

class Main extends Sprite
{
	private var bg:Bitmap;
	private var text:TextField;
	private var format:TextFormat;
	
	public function new()
	{
		super();
		
		bg = new Bitmap(new BitmapData(Lib.current.stage.stageWidth, Lib.current.stage.stageHeight, false, 0xff00FF00));
		addChild(bg);
		
		text = new TextField();
		text.width = Lib.current.stage.stageWidth;
		text.height = Lib.current.stage.stageHeight;
		text.text = "Preparing...";
		addChild(text);
		
		append("Checking if services are available...");
		/**
		#if android
		
		var response:Int = GooglePlayServicesUtil.isGooglePlayServicesAvailable();
		
		if (response == ConnectionResult.SUCCESS)
		{
			append("Yep! They are available.");
		}
		else
		{
			append("Nope! They are not available. Response Code: " + response);
		}
		
		#else
		append("Nope! You are not on an Android device.");
		#end
		*/
		//GoogleApiClient.connect();
	}
	
	private function append(Text:String):Void
	{
		text.text += "\n" + Text;
	}
}