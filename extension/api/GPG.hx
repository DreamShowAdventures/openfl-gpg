package extension.api;

#if android
import openfl.utils.JNI;
#end

class GPG
{
	public static var initialized(default, null):Bool = false;
	
	public static function init():Void
	{
		#if android
		if (!initialized)
		{
			test_function = JNI.createStaticMethod("gpg.GPG", "test", "(Ljava/lang/String;)Ljava/lang/String;");
		}
		#end
	}
	
	public static function test(Text:String):String
	{
		verify();
		
		return test_function(Text);
	}
	
	private static function verify():Void
	{
		#if android
		if (!initialized)
		{
			throw "You must initialize first!";
		}
		#else
		
		#end
	}
	
	private static var test_function:Dynamic;
}