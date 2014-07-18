package com.google.android.gms.common;

#if android

import openfl.utils.JNI;

class ConnectionResult
{
	/**
	 * One of the API components you attempted to connect to is not available. The API will not work on this device, and updating Google Play services will not likely solve the problem. Using the API on the device should be avoided.
	 * 
	 * @default	0x00000010
	 */
	public static var API_UNAVAILABLE(get, never):Int;
	/**
	 * The client canceled the connection by calling disconnect(). Only returned by blockingConnect().
	 * 
	 * @default 0x0000000d
	 */
	public static var CANCELED(get, never):Int;
	/**
	 * The device date is likely set incorrectly. This error is recoverable by the user updating the date.
	 * 
	 * @default 0x0000000c
	 */
	public static var DATE_INVALID(get, never):Int;
	/**
	 * The application is misconfigured. This error is not recoverable and will be treated as fatal. The developer should look at the logs after this to determine more actionable information.
	 * 
	 * @default 0x0000000a
	 */
	public static var DEVELOPER_ERROR(get, never):Int;
	/**
	 * The Drive API requires external storage (such as an SD card), but no external storage is mounted. This error is recoverable if the user installs external storage (if none is present) and ensures that it is mounted (which may involve disabling USB storage mode, formatting the storage, or other initialization as required by the device). This error should never be returned on a device with emulated external storage. On devices with emulated external storage, the emulated "external storage" is always present regardless of whether the device also has removable storage.
	 * 
	 * @default 0x000005dc
	 */
	public static var DRIVE_EXTERNAL_STORAGE_REQUIRED(get, never):Int;
	/**
	 * An internal error occurred. Retrying should resolve the problem.
	 * 
	 * @default 0x00000008
	 */
	public static var INTERNAL_ERROR(get, never):Int;
	/**
	 * An interrupt occurred while waiting for the connection complete. Only returned by blockingConnect().
	 * 
	 * @default 0x0000000f
	 */
	public static var INTERRUPTED(get, never):Int;
	/**
	 * The client attempted to connect to the service with an invalid account name specified.
	 * 
	 * @default 0x00000005
	 */
	public static var INVALID_ACCOUNT(get, never):Int;
	/**
	 * The application is not licensed to the user. This error is not recoverable and will be treated as fatal.
	 * 
	 * @default 0x0000000b
	 */
	public static var LICENSE_CHECK_FAILED(get, never):Int;
	/**
	 * A network error occurred. Retrying should resolve the problem.
	 * 
	 * @default 0x00000007
	 */
	public static var NETWORK_ERROR(get, never):Int;
	/**
	 * Completing the connection requires some form of resolution. A resolution will be available to be started with startResolutionForResult(Activity, int). If the result returned is RESULT_OK, then further attempts to connect should either complete or continue on to the next issue that needs to be resolved.
	 * 
	 * @default 0x00000006
	 */
	public static var RESOLUTION_REQUIRED(get, never):Int;
	/**
	 * The installed version of Google Play services has been disabled on this device. The calling activity should pass this error code to getErrorDialog(int, Activity, int) to get a localized error dialog that will resolve the error when shown.
	 * 
	 * @default 0x00000003
	 */
	public static var SERVICE_DISABLED(get, never):Int;
	/**
	 * The version of the Google Play services installed on this device is not authentic.
	 * 
	 * @default 0x00000009
	 */
	public static var SERVICE_INVALID(get, never):Int;
	/**
	 * Google Play services is missing on this device. The calling activity should pass this error code to getErrorDialog(int, Activity, int) to get a localized error dialog that will resolve the error when shown.
	 * 
	 * @default 0x00000001
	 */
	public static var SERVICE_MISSING(get, never):Int;
	/**
	 * The installed version of Google Play services is out of date. The calling activity should pass this error code to getErrorDialog(int, Activity, int) to get a localized error dialog that will resolve the error when shown.
	 * 
	 * @default 0x00000002
	 */
	public static var SERVICE_VERSION_UPDATE_REQUIRED(get, never):Int;
	/**
	 * The client attempted to connect to the service but the user is not signed in. The client may choose to continue without using the API or it may call startResolutionForResult(Activity, int) to prompt the user to sign in. After the sign in activity returns with RESULT_OK further attempts to connect should succeed.
	 * 
	 * @default 0x00000004
	 */
	public static var SIGN_IN_REQUIRED(get, never):Int;
	/**
	 * The connection was successful.
	 * 
	 * @default 0x00000000
	 */
	public static var SUCCESS(get, never):Int;
	/**
	 * The timeout was exceeded while waiting for the connection to complete. Only returned by blockingConnect().
	 * 
	 * @default 0x0000000e
	 */
	public static var TIMEOUT(get, never):Int;
	
	/**
	 * Creates a connection result.
	 * 
	 * @param	statusCode     The status code.
	 * @param	pendingIntent  A pending intent that will resolve the issue when started, or null.
	 */
	public function new(statusCode:Int)//, ?pendingIntent:PendingIntent)
	{
		__jObject = JNI.createInterface(this, CLASS, "");
	}
	
	public inline function getErrorCode():Int
	{
		return __getErrorCode(OP.array());
	}
	/**
	public function getResolution():PendingIntent
	{
		return __getResolution(Common.array());
	}
	**/
	public inline function hasResolution():Bool
	{
		return __hasResolution(OP.array());
	}
	
	public inline function isSuccess():Bool
	{
		return __isSuccess(OP.array());
	}
	/**
	public inline function startResolutionForResult(activity:Activity, requestCode:Int):Void
	{
		return __startResolutionForResult([activity, requestCode);
	}
	**/
	public inline function toString():String
	{
		return __toString(OP.array());
	}
	
	private static inline function get_API_UNAVAILABLE():Int { 					return untyped JNI.createStaticField(OP.PACKAGE + CLASS, "API_UNAVAILABLE", "I").get(); }
	private static inline function get_CANCELED():Int { 						return untyped JNI.createStaticField(OP.PACKAGE + CLASS, "CANCELED", "I").get(); }
	private static inline function get_DATE_INVALID():Int { 					return untyped JNI.createStaticField(OP.PACKAGE + CLASS, "DATE_INVALID", "I").get(); }
	private static inline function get_DEVELOPER_ERROR():Int { 					return untyped JNI.createStaticField(OP.PACKAGE + CLASS, "DEVELOPER_ERROR", "I").get(); }
	private static inline function get_DRIVE_EXTERNAL_STORAGE_REQUIRED():Int { 	return untyped JNI.createStaticField(OP.PACKAGE + CLASS, "DRIVE_EXTERNAL_STORAGE_REQUIRED", "I").get(); }
	private static inline function get_INTERNAL_ERROR():Int { 					return untyped JNI.createStaticField(OP.PACKAGE + CLASS, "INTERNAL_ERROR", "I").get(); }
	private static inline function get_INTERRUPTED():Int { 						return untyped JNI.createStaticField(OP.PACKAGE + CLASS, "INTERRUPTED", "I").get(); }
	private static inline function get_INVALID_ACCOUNT():Int { 					return untyped JNI.createStaticField(OP.PACKAGE + CLASS, "INVALID_ACCOUNT", "I").get(); }
	private static inline function get_LICENSE_CHECK_FAILED():Int { 			return untyped JNI.createStaticField(OP.PACKAGE + CLASS, "LICENSE_CHECK_FAILED", "I").get(); }
	private static inline function get_NETWORK_ERROR():Int { 					return untyped JNI.createStaticField(OP.PACKAGE + CLASS, "NETWORK_ERROR", "I").get(); }
	private static inline function get_RESOLUTION_REQUIRED():Int { 				return untyped JNI.createStaticField(OP.PACKAGE + CLASS, "RESOLUTION_REQUIRED", "I").get(); }
	private static inline function get_SERVICE_DISABLED():Int { 				return untyped JNI.createStaticField(OP.PACKAGE + CLASS, "SERVICE_DISABLED", "I").get(); }
	private static inline function get_SERVICE_INVALID():Int { 					return untyped JNI.createStaticField(OP.PACKAGE + CLASS, "SERVICE_INVALID", "I").get(); }
	private static inline function get_SERVICE_MISSING():Int { 					return untyped JNI.createStaticField(OP.PACKAGE + CLASS, "SERVICE_MISSING", "I").get(); }
	private static inline function get_SERVICE_VERSION_UPDATE_REQUIRED():Int { 	return untyped JNI.createStaticField(OP.PACKAGE + CLASS, "SERVICE_VERSION_UPDATE_REQUIRED", "I").get(); }
	private static inline function get_SIGN_IN_REQUIRED():Int { 				return untyped JNI.createStaticField(OP.PACKAGE + CLASS, "SIGN_IN_REQUIRED", "I").get(); }
	private static inline function get_SUCCESS():Int { 							return untyped JNI.createStaticField(OP.PACKAGE + CLASS, "SUCCESS", "I").get(); }
	private static inline function get_TIMEOUT():Int { 							return untyped JNI.createStaticField(OP.PACKAGE + CLASS, "TIMEOUT", "I").get(); }
	
	private var __jObject:Dynamic 					= null;
	private var __getErrorCode:Dynamic				= JNI.createMemberMethod(OP.PACKAGE + CLASS, "getErrorCode", OP.VOID_INT);
	private var __getResolution:Dynamic 			= JNI.createMemberMethod(OP.PACKAGE + CLASS, "getResolution", OP.VOID_INT);
	private var __hasResolution:Dynamic 			= JNI.createMemberMethod(OP.PACKAGE + CLASS, "hasResolution", OP.VOID_BOOL);
	private var __isSuccess:Dynamic 				= JNI.createMemberMethod(OP.PACKAGE + CLASS, "isSuccess", OP.VOID_BOOL);
	private var __startResolutionForResult:Dynamic 	= JNI.createMemberMethod(OP.PACKAGE + CLASS, "startResolutionForResult", OP.ACTIVITY_INT_VOID);
	private var __toString:Dynamic 					= JNI.createMemberMethod(OP.PACKAGE + CLASS, "toString", OP.VOID_STRING);
	inline static private var CLASS:String 			= "ConnectionResult";
}

#end