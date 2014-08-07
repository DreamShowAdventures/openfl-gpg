package ::APP_PACKAGE::;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.app.Activity;

import com.google.android.gms.games.Games;
import com.google.example.games.basegameutils.BaseGameActivity;

public class MainActivity extends Activity implements View.OnClickListener
{
	@Override
	protected void onCreate(Bundle savedInstanceState)
	{
		super.onCreate(savedInstanceState);
    }
	
    //@Override
    //public void onSignInFailed() { }
	
    //@Override
    //public void onSignInSucceeded() { }
	
	@Override
    public void onClick(View view) { }
}