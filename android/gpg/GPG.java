package gpg;

import android.app.Activity;

class GPG
{
	/**
	 * The game helper object.
	 */
    protected GameHelper mHelper;
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
	
	public GameHelper getGameHelper()
	{
		if (mHelper == null)
		{
			//mHelper = new GameHelper(gameActivity, GameHelper.CLIENT_ALL);
		}
		
		return mHelper;
    }
	
    public static String test()
	{
        return "Connected to JNI!";
    }
}