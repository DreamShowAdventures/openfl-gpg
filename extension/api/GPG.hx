package extension.api;

#if android
import openfl.utils.JNI;
#end

class GPG
{
	public static var initialized(default, null):Bool = false;
	
	/**
	 * Initializes Google Play Games Services and all functions in this class.
	 */
	public static function init():Void
	{
		#if android
		if (!initialized)
		{
			test_function = JNI.createStaticMethod("gpg.GPG", "test", "()Ljava/lang/String;");
		}
		
		initialized = true;
		#end
	}
	
	/**
	 * A generic test function to verify that JNI is working properly.
	 */
	public static function test():String
	{
		var result:String = "";
		
		#if android
		try
		{
			result = test_function();
		}
		catch (e:Dynamic)
		{
			result = Std.string(e);
		}
		#end
		
		return result;
	}
	
	private static var test_function:Dynamic;
}