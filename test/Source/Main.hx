package;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import openfl.display.Sprite;
import openfl.events.Event;
import openfl.text.TextField;
import openfl.text.TextFormat;

class Main extends Sprite
{
	private var text:TextField;
	private var format:TextFormat;
	
	public function new()
	{
		super();
		
		text = new TextField();
		text.text = "Preparing...";
		format = new TextFormat(null, 14, 0xffFFFFFF);
		text.setTextFormat(format);
		addChild(text);
		
		append("Checking if services are available...");
		
		if (GooglePlayServicesUtil.isGooglePlayServicesAvailable() == ConnectionResult.SUCCESS)
		{
			append("Yep! They are available.");
		}
		else
		{
			append("Nope! They are not available.");
		}
		
		//GoogleApiClient.connect();
	}
	
	private function append(Text:String):Void
	{
		text.text += "\n" + Text;
	}
}