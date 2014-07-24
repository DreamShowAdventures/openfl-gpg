package extension.gpg;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end

/**
 * A single data structure which allows you to access data about the status of a specific achievement.
 * Data comprise two types: user-specific (e.g., whether the user has unlocked the achievement, etc.) and global (e.g., achievement name).
 */
class Achievement
{
	#if (android || ios)
	/**
	 * Constructs an Achievement. Intended for internal use by the API.
	 */
	public function new()
	{
		// nothing yet!
	}
	
	/**
	 * Returns the number of steps the player has taken toward unlocking an incremental achievement.
	 * It can only be called when valid() returns true.
	 */
	public function currentSteps():Int
	{
		//return gpg_achievement_current_steps();
	}
	
	/**
	 * Returns a concise description of your achievement. Usually tells player how to earn the achievement. Up to 500 characters.
	 * It can only be called when valid() returns true.
	 */
	public function description():String
	{
		//return gpg_achievement_description();
	}
	
	/**
	 * Returns the unique string that the Google Play Developer Console generated beforehand. Use it to refer to an achievement in your game client.
	 * It can only be called when valid() returns true.
	 */
	public function id():String
	{
		//return gpg_achievement_id();
	}
	
	/**
	 * Returns time at which the entry was last modified (expressed as milliseconds since the Unix epoch).
	 * It can only be called when valid() returns true.
	 */
	public function lastModifiedTime():Float
	{
		//return gpg_achievement_last_modified_time();
	}
	
	/**
	 * Returns the short name of the achievement.
	 * Up to 100 characters. It can only be called when valid() returns true.
	 */
	public function name():String
	{
		//return gpg_achievement_name();
	}
	
	/**
	 * Returns the URL leading to the image of the revealed icon for this Achievement. This icon is intended to be shown when the Achievement has been revealed, but not yet unlocked.
	 * This function can only be called when valid() returns true.
	 */
	public function revealedIconUrl():String
	{
		//return gpg_achievement_revealed_icon_url();
	}
	
	/**
	 * Returns the AchievementState: HIDDEN, REVEALED, or UNLOCKED.
	 * It can only be called when valid() returns true.
	 */
	public function state():AchievementState
	{
		
	}
	
	/**
	 * Returns the number of steps required, in total, for the player to unlock a given incremental achievement.
	 * It can only be called when valid() returns true.
	 */
	public function totalSteps():Int
	{
		
	}
	
	/**
	 * Returns the achievement type: INCREMENTAL or STANDARD.
	 * It can only be called when valid() returns true.
	 */
	public function type():AchievementType
	{
		
	}
	
	/**
	 * Returns the URL leading to the image of the unlocked icon for this Achievement. This icon is intended to be shown when the Achievement has been unlocked (and hence also revealed).
	 * This function can only be called when valid() returns true.
	 */
	public function unlockedIconUrl():String
	{
		
	}
	
	/**
	 * Returns true when the returned achievement is populated with data and is accompanied by a successful response status; false for an unpopulated user-created achievement or for a populated one accompanied by an unsuccessful response status.
	 * It must be true for the getter functions on this achievement (id, Name, Description, etc.) to be usable.
	 */
	public function valid():Bool
	{
		
	}
	
	/**
	 * The number of experience points awarded by this achievement.
	 * It can only be called when Achievement::Valid() returns true.
	 */
	public function xp():Int
	{
		
	}
	
	/**
	private static var gpg_achievement_current_steps = 		Lib.load("gpg", "gpg_achievement_current_steps", 0);
	private static var gpg_achievement_description = 		Lib.load("gpg", "gpg_achievement_description", 0);
	private static var gpg_achievement_id = 				Lib.load("gpg", "gpg_achievement_id", 0);
	private static var gpg_achievement_last_modified_time = Lib.load("gpg", "gpg_achievement_last_modified_time", 0);
	private static var gpg_achievement_name = 				Lib.load("gpg", "gpg_achievement_name", 0);
	private static var gpg_achievement_revealed_icon_url = 	Lib.load("gpg", "gpg_achievement_revealed_icon_url", 0);
	**/
	#end
}

/**
 * Used by state(), describes the three states that an achievement can be in.
 */
enum AchievementState
{
	/**
	 * A hidden achievement means that details about the achievement are hidden from the player. The Games services provides a generic placeholder description and icon for the achievement while it's in a hidden state.
	 * We recommend making an achievement hidden if it contains a spoiler you don't want to reveal about your game too early (for example, "Discover that you were a ghost all along!").
	 */
	HIDDEN;
	/**
	 * A revealed achievement means that the player knows about the achievement, but hasn't earned it yet. Most achievements start in the revealed state.
	 */
	REVEALED;
	/**
	 * An unlocked achievement means that the player has successfully earned the achievement. An achievement can be unlocked offline.
	 * When the game comes online, it syncs with the Games services to update the achievement's unlocked state.
	 */
	UNLOCKED;
}

/**
 * Achievements can be designated as standard or incremental. Generally, an incremental achievement involves a player making gradual 
 * progress towards earning the achievement over a longer period of time. As the player makes progress towards the incremental 
 * achievement, you can report the player's partial progress to the Games services. The Google Play service keeps track of the progress 
 * information, alerts the game when the player has met the criteria necessary to unlock that achievement, and tells the player how far 
 * along they are towards meeting that goal.
 */
enum AchievementType
{
	STANDARD;
	INCREMENTAL;
}