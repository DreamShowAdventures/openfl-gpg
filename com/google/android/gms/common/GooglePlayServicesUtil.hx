package com.google.android.gms.common;

#if android

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
	
	public static inline function getErrorString(errorCode:Int):String
	{
		return __getErrorString([errorCode]);
	}
	
	public static inline function getOpenSourceSoftwareLicenseInfo():String
	{
		return __getOpenSourceSoftwareLicenseInfo([init()]);
	}
	/**
	public static function getRemoteContext():Context
	{
		if (__getRemoteContext == null)
		{
			__getRemoteContext = JNI.createStaticMethod(OP.PACKAGE + CLASS, "getRemoteContext", OP.CONTEXT_CONTEXT);
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
			__getRemoteResource = JNI.createStaticMethod(OP.PACKAGE + CLASS, "getRemoteResource", OP.CONTEXT_RESOURCES);
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
	public static inline function isGooglePlayServicesAvailable():Int
	{
		return __isGooglePlayServicesAvailable([init()]);
	}
	
	public static inline function isUserRecoverableError(errorCode:Int):Bool
	{
		return __isUserRecoverableError([errorCode]);
	}
	/**
	public static function showErrorDialogFragment(errorCode:Int, activity:Activity, requestCode:Int, ?cancelListener:DialogInterface.OnCancelListener):Bool
	{
		
	}
	**/
	
	public static inline function showErrorNotification(errorCode:Int):Void
	{
		__showErrorNotification([errorCode, init()]);
	}
	
	private static function init():Dynamic
	{
		if (__jObject == null)
		{
			__jObject = JNI.createInterface(GooglePlayServicesUtil, OP.PACKAGE + CLASS, "");
		}
		
		return __jObject;
	}
	
	private static var __jObject:Dynamic							= null;
	private static var __getErrorDialog:Dynamic;
	private static var __getErrorPendingIntent:Dynamic;
	private static var __getErrorString:Dynamic						= JNI.createStaticMethod(OP.PACKAGE + CLASS, "getErrorString", OP.INT_STRING);
	private static var __getOpenSourceSoftwareLicenseInfo:Dynamic	= JNI.createStaticMethod(OP.PACKAGE + CLASS, "getOpenSourceSoftwareLicenseInfo", OP.CONTEXT_STRING);
	private static var __getRemoteContext:Dynamic;
	private static var __getRemoteResource:Dynamic;
	private static var __isGooglePlayServicesAvailable:Dynamic		= JNI.createStaticMethod(OP.PACKAGE + CLASS, "isGooglePlayServicesAvailable", OP.CONTEXT_INT);
	private static var __isUserRecoverableError:Dynamic				= JNI.createStaticMethod(OP.PACKAGE + CLASS, "isUserRecoverableError", OP.INT_BOOL);
	private static var __showErrorDialogFragment:Dynamic			= JNI.createStaticMethod(OP.PACKAGE + CLASS, "showErrorDialogFragment", OP.INT_ACTIVITY_INT_DIALOGINTERFACE_ONCANCELLISTENER_BOOL);
	private static var __showErrorNotification:Dynamic				= JNI.createStaticMethod(OP.PACKAGE + CLASS, "showErrorNotification", OP.INT_VOID);
	inline private static var CLASS:String = "GooglePlayServicesUtil";
}

#end