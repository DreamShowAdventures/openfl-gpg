package extension.api;
import extension.api.GPG.JavaType;

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
			init_function = JNI.createStaticMethod(PKG, "init", createSignature([JavaType.NULL], JavaType.BOOL));
			test_function = JNI.createStaticMethod(PKG, "test", createSignature([JavaType.NULL], JavaType.STRING));
			
			init_function();
		}
		
		initialized = true;
		#else
		trace(createSignature([JavaType.NULL], JavaType.BOOL));
		trace(createSignature([JavaType.NULL], JavaType.STRING));
		trace(createSignature([JavaType.BOOL, JavaType.STRING], JavaType.NULL));
		trace(createSignature([JavaType.NULL], JavaType.VOID));
		trace(createSignature([JavaType.VOID], JavaType.VOID));
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
			result = "OpenFL GPG Error: " + Std.string(e);
		}
		#end
		
		return result;
	}
	
	/**
	 * Creates a valid signature for JNI.
	 * 
	 * @param	ParameterTypes	An array of JavaType values, corresponding to the parameters of the Java function.
	 * @param	ReturnType		A single JavaType value, corresponding to the return type of the Java function.
	 * @return	A JNI signature as a String, e.g. "(Z)Ljava/lang/String;"
	 */
	private static function createSignature(ParameterTypes:Array<JavaType>, ReturnType:JavaType):String
	{
		var result:String = "(";
		
		// Add a parameter string for each parameter.
		
		for (type in ParameterTypes)
		{
			// This shouldn't happen!
			
			if (type == JavaType.VOID)
			{
				throw "VOID is not a valid parameter type! Did you mean NULL?";
			}
			
			result += stringFromJavaType(type);
			
			var last:String = lastChar(result);
			
			if (last != ";" && last != "(")
			{
				result += ";";
			}
		}
		
		// End parameters, append return type.
		
		result += ")";
		result += stringFromJavaType(ReturnType);
		
		return result;
	}
	
	/**
	 * Converts a JavaType enum to a string value for the signature.
	 */
	private static function stringFromJavaType(JavaT:JavaType):String
	{
		switch (JavaT)
		{
			case JavaType.BOOL: 	return "Z";
			case JavaType.STRING: 	return "Ljava/lang/String;";
			case JavaType.VOID: 	return "V";
			default:				return "";
		}
	}
	
	/**
	 * Returns the last character from a string.
	 */
	private static function lastChar(Text:String):String
	{
		return Text.charAt(Text.length - 1);
	}
	
	/**
	 * JNI functions. These have to be initialized in init().
	 */
	private static var init_function:Dynamic;
	private static var test_function:Dynamic;
	
	/**
	 * Common variables.
	 */
	inline private static var PKG:String = "gpg.GPG";
}

enum JavaType
{
	BOOL;
	STRING;
	VOID;
	NULL;
}