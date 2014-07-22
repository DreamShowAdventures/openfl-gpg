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
		return openfl_gpg_sample_method(inputValue);
	}
	
	private static var openfl_gpg_sample_method = Lib.load("gpg", "gpg_test_func", 1);
}