package extension.gpg;

import cpp.Lib;

class Test
{
	static public function test():Int
	{
		#if debug
		trace("Testing OpenFL-GPG");
		#end
		
		var result:Int = 0;
		
		try
		{
			gpg_test = Lib.load("gpg", "gpg_test");
			result = gpg_test();
		}
		catch (e:Dynamic)
		{
			#if debug
			trace("OPENFLGPG ERR: " + Std.string(e));
			#end
		}
		
		return result;
	}
	
	static private function gpg_test:Dynamic;
}