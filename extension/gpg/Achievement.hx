package extension.gpg;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end

class Achievement
{
	/**
	 * Returns true when the returned achievement is populated with data and is accompanied by a successful response status; false for an
	 * unpopulated user-created achievement or for a populated one accompanied by an unsuccessful response status.
	 * It must be true for the getter functions on this achievement (id, Name, Description, etc.) to be usable.
	 */
	public static function valid():Bool
	{
		return openfl_gpg_achievement_valid();
	}
	
	private static var openfl_gpg_achievement_valid = Lib.load("openfl_gpg", "openfl_gpg_achievement_valid", 1);
}