package extension.gpg;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end

/**
 * The starting point for interacting with Google Play Games.
 */
class GameServices
{
	@:noCompletion private var __handle:Dynamic;
	
	/**
	 * 
	 */
	public function new()
	{
		__handle = gpg_create_game_services();
	}
	
	/**
	 * Allows you to explicitly check the current authorization state.
	 * SDK consumers are encouraged to register for AUTH_ACTION_* callbacks to handle authorization state changes, rather than polling.
	 */
	public function isAuthorized():Bool
	{
		
	}
	
	private static var gpg_game_services_create = 			Lib.load("gpg", "gpg_game_services_create", 0);
	private static var gpg_game_services_is_authorized = 	Lib.load("gpg", "gpg_game_services_is_authorized", 0);
}