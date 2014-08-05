package gpg;

import android.app.Activity;

class GPG
{
	/**
	 * A reference to the activity.
	 */
	protected Activity gameActivity;
	
	public static boolean init()
	{
		//gameActivity = this.getActivity();
		//getGameHelper();
		
		return true;
	}
	
    public static String test()
	{
        return "Connected to JNI!";
    }
}