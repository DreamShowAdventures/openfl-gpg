package com.google.android.gms.common;
import openfl.utils.JNI;

class ConnectionResult
{
	/**
	 * One of the API components you attempted to connect to is not available. The API will not work on this device, and updating Google Play services will not likely solve the problem. Using the API on the device should be avoided.
	 */
	public static inline var API_UNAVAILABLE:Int 					= 0x00000010;
	/**
	 * The client canceled the connection by calling disconnect(). Only returned by blockingConnect().
	 */
	public static inline var CANCELED:Int 		 					= 0x0000000d;
	/**
	 * The device date is likely set incorrectly. This error is recoverable by the user updating the date.
	 */
	public static inline var DATE_INVALID:Int	 					= 0x0000000c;
	/**
	 * The application is misconfigured. This error is not recoverable and will be treated as fatal. The developer should look at the logs after this to determine more actionable information.
	 */
	public static inline var DEVELOPER_ERROR:Int 					= 0x0000000a;
	/**
	 * The Drive API requires external storage (such as an SD card), but no external storage is mounted. This error is recoverable if the user installs external storage (if none is present) and ensures that it is mounted (which may involve disabling USB storage mode, formatting the storage, or other initialization as required by the device). This error should never be returned on a device with emulated external storage. On devices with emulated external storage, the emulated "external storage" is always present regardless of whether the device also has removable storage.
	 */
	public static inline var DRIVE_EXTERNAL_STORAGE_REQUIRED:Int 	= 0x000005dc;
	/**
	 * An internal error occurred. Retrying should resolve the problem.
	 */
	public static inline var INTERNAL_ERROR:Int 					= 0x00000008;
	/**
	 * An interrupt occurred while waiting for the connection complete. Only returned by blockingConnect().
	 */
	public static inline var INTERRUPTED:Int 						= 0x0000000f;
	/**
	 * The client attempted to connect to the service with an invalid account name specified.
	 */
	public static inline var INVALID_ACCOUNT:Int 					= 0x00000005;
	/**
	 * The application is not licensed to the user. This error is not recoverable and will be treated as fatal.
	 */
	public static inline var LICENSE_CHECK_FAILED:Int				= 0x0000000b;
	/**
	 * A network error occurred. Retrying should resolve the problem.
	 */
	public static inline var NETWORK_ERROR:Int 						= 0x00000007;
	/**
	 * Completing the connection requires some form of resolution. A resolution will be available to be started with startResolutionForResult(Activity, int). If the result returned is RESULT_OK, then further attempts to connect should either complete or continue on to the next issue that needs to be resolved.
	 */
	public static inline var RESOLUTION_REQUIRED:Int 				= 0x00000006;
	/**
	 * The installed version of Google Play services has been disabled on this device. The calling activity should pass this error code to getErrorDialog(int, Activity, int) to get a localized error dialog that will resolve the error when shown.
	 */
	public static inline var SERVICE_DISABLED:Int 					= 0x00000003;
	/**
	 * The version of the Google Play services installed on this device is not authentic.
	 */
	public static inline var SERVICE_INVALID:Int 					= 0x00000009;
	/**
	 * Google Play services is missing on this device. The calling activity should pass this error code to getErrorDialog(int, Activity, int) to get a localized error dialog that will resolve the error when shown.
	 */
	public static inline var SERVICE_MISSING:Int 					= 0x00000001;
	/**
	 * The installed version of Google Play services is out of date. The calling activity should pass this error code to getErrorDialog(int, Activity, int) to get a localized error dialog that will resolve the error when shown.
	 */
	public static inline var SERVICE_VERSION_UPDATE_REQUIRED:Int 	= 0x00000002;
	/**
	 * The client attempted to connect to the service but the user is not signed in. The client may choose to continue without using the API or it may call startResolutionForResult(Activity, int) to prompt the user to sign in. After the sign in activity returns with RESULT_OK further attempts to connect should succeed.
	 */
	public static inline var SIGN_IN_REQUIRED:Int 					= 0x00000004;
	/**
	 * The connection was successful.
	 */
	public static inline var SUCCESS:Int 							= 0x00000000;
	/**
	 * The timeout was exceeded while waiting for the connection to complete. Only returned by blockingConnect().
	 */
	public static inline var TIMEOUT:Int 							= 0x0000000e;
	
	/**
	 * Creates a connection result.
	 * 
	 * @param	statusCode     The status code.
	 * @param	pendingIntent  A pending intent that will resolve the issue when started, or null.
	 */
	public function new(statusCode:Int, ?pendingIntent:PendingIntent)
	{
		__jObject = JNI.createInterface(this, CLASS, "");
	}
	
	public function getErrorCode():Int
	{
		if (__getErrorCode == null)
		{
			__getErrorCode = JNI.createMemberMethod(Common.PACKAGE + CLASS, "getErrorCode", Common.VOID_INT);
		}
		
		return __getErrorCode(Common.array());
	}
	/**
	public function getResolution():PendingIntent
	{
		if (__getResolution == null)
		{
			__getResolution = JNI.createMemberMethod(Common.PACKAGE + CLASS, "getResolution", Common.VOID_INT);
		}
		
		__getResolution(Common.array());
	}
	**/
	public function hasResolution():Bool
	{
		if (__hasResolution == null)
		{
			__hasResolution = JNI.createMemberMethod(Common.PACKAGE + CLASS, "hasResolution", Common.VOID_BOOL);
		}
		
		return __hasResolution(Common.array());
	}
	
	public function isSuccess():Bool
	{
		if (__isSuccess == null)
		{
			__isSuccess = JNI.createMemberMethod(Common.PACKAGE + CLASS, "isSuccess", Common.VOID_BOOL);
		}
		
		return __isSuccess(Common.array());
	}
	/**
	public function startResolutionForResult(activity:Activity, requestCode:Int):Void
	{
		
	}
	**/
	public function toString():String
	{
		if (__toString == null)
		{
			__toString = JNI.createMemberMethod(Common.PACKAGE + CLASS, "toString", Common.VOID_STRING);
		}
		
		return __toString(Common.array());
	}
	
	private var __jObject:Dynamic;
	private var __getErrorCode:Dynamic;
	private var __getResolution:Dynamic;
	private var __hasResolution:Dynamic;
	private var __isSuccess:Dynamic;
	private var __startResolutionForResult:Dynamic;
	private var __toString:Dynamic;
	inline static private var CLASS:String = "ConnectionResult";
}