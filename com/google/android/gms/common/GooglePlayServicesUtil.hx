package com.google.android.gms.common;

import openfl.utils.JNI;

class GooglePlayServicesUtil
{
	/**
	 * Returns a dialog to address the provided errorCode. The returned dialog displays a localized message about the error and upon user confirmation (by tapping on dialog) will direct them to the Play Store if Google Play services is out of date or missing, or to system settings if Google Play services is disabled on the device.
	 * 
	 * @param	errorCode       Error code returned by isGooglePlayServicesAvailable(Context) call. If errorCode is SUCCESS then null is returned.
	 * @param	activity        Parent activity for creating the dialog, also used for identifying language to display dialog in.
	 * @param	requestCode     The requestCode given when calling startActivityForResult.
	 * @param	cancelListener  Optional, the DialogInterface.OnCancelListener to invoke if the dialog is canceled.
	 * @return  
	 */
	//public static function getErrorDialog(errorCode:Int, activity:Activity, requestCode:Int, ?cancelListener:DialogueInterface.OnCancelListener):Dialog
	//{
		
	//}
	
	/**
	 * 
	 * 
	 * @param	errorCode
	 * @param	requestCode
	 * @return
	 */
	//public static function getErrorPendingIntent(errorCode:Int, context:Context, requestCode:Int):PendingIntent
	//{
		
	//}
	
	public static function getErrorString(errorCode:Int):String
	{
		if (__getErrorString == null)
		{
			__getErrorString = JNI.createStaticMethod(Common.PACKAGE + CLASS, "getErrorString", Common.INT_STRING);
		}
		
		return __getErrorString([errorCode]);
	}
	
	public static function getOpenSourceSoftwareLicenseInfo():String
	{
		if (__getOpenSourceSoftwareLicenseInfo == null)
		{
			__getOpenSourceSoftwareLicenseInfo = JNI.createStaticMethod(Common.PACKAGE + CLASS, "getOpenSourceSoftwareLicenseInfo", Common.CONTEXT_STRING);
		}
		
		init();
		
		return __getOpenSourceSoftwareLicenseInfo([__jObject]);
	}
	/**
	public static function getRemoteContext():Context
	{
		if (__getRemoteContext == null)
		{
			__getRemoteContext = JNI.createStaticMethod(Common.PACKAGE + CLASS, "getRemoteContext", Common.CONTEXT_CONTEXT);
		}
		
		if (__jObject == null)
		{
			init();
		}
		
		return __getRemoteContext([__jObject]);
	}
	
	public static function getRemoteResource(context:Context):Resources
	{
		if (__getRemoteResource == null)
		{
			__getRemoteResource = JNI.createStaticMethod(Common.PACKAGE + CLASS, "getRemoteResource", Common.CONTEXT_RESOURCES);
		}
		
		if (__jObject == null)
		{
			init();
		}
		
		return __getRemoteResource([__jObject]);
	}
	**/
	
	/**
	 * Verifies that Google Play services is installed and enabled on this device, and that the version installed on this device is no older than the one required by this client.
	 * 
	 * @return  Status code indicating whether there was an error. Can be one of following in ConnectionResult: SUCCESS, SERVICE_MISSING, SERVICE_VERSION_UPDATE_REQUIRED, SERVICE_DISABLED, SERVICE_INVALID, DATE_INVALID.
	 */
	public static function isGooglePlayServicesAvailable():Int
	{
		if (__isGooglePlayServicesAvailable == null)
		{
			__isGooglePlayServicesAvailable = JNI.createStaticMethod(Common.PACKAGE + CLASS, "isGooglePlayServicesAvailable", Common.CONTEXT_BOOL);
		}
		
		init();
		
		return __isGooglePlayServicesAvailable([__jObject]);
	}
	
	public static function isUserRecoverableError(errorCode:Int):Bool
	{
		if (__isUserRecoverableError == null)
		{
			__isUserRecoverableError = JNI.createStaticMethod(Common.PACKAGE + CLASS, "isUserRecoverableError", Common.INT_BOOL);
		}
		
		return __isUserRecoverableError([errorCode]);
	}
	/**
	public static function showErrorDialogFragment(errorCode:Int, activity:Activity, requestCode:Int, ?cancelListener:DialogInterface.OnCancelListener):Bool
	{
		
	}
	**/
	
	public static function showErrorNotification(errorCode:Int):Void
	{
		if (__showErrorNotification == null)
		{
			__showErrorNotification = JNI.createStaticMethod(Common.PACKAGE + CLASS, "showErrorNotification", Common.INT_VOID);
		}
		
		init();
		
		__showErrorNotification([errorCode, __jObject]);
	}
	
	private static function init():Void
	{
		if (__jObject == null)
		{
			__jObject = JNI.createInterface(GooglePlayServicesUtil, Common.PACKAGE + CLASS, "");
		}
	}
	
	private static var __jObject:Dynamic;
	private static var __getErrorDialog:Dynamic;
	private static var __getErrorPendingIntent:Dynamic;
	private static var __getErrorString:Dynamic;
	private static var __getOpenSourceSoftwareLicenseInfo:Dynamic;
	private static var __getRemoteContext:Dynamic;
	private static var __getRemoteResource:Dynamic;
	private static var __isGooglePlayServicesAvailable:Dynamic;
	private static var __isUserRecoverableError:Dynamic;
	private static var __showErrorDialogFragment:Dynamic;
	private static var __showErrorNotification:Dynamic;
	inline private static var CLASS:String = "GooglePlayServicesUtil";
}