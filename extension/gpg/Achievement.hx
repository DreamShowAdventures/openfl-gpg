package extension.gpg;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end

class Achievement
{
	public static function sampleMethod(inputValue:Int):Int
	{
		//return openfl_gpg_sample_method(inputValue);
		return inputValue * inputValue;
	}
	
	//private static var openfl_gpg_sample_method = Lib.load("openfl_gpg", "openfl_gpg_sample_method", 1);
}