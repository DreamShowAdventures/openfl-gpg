package com.google.android.gms.common.api;

import openfl.utils.JNI;

/**
 * Haxe implementation of the main entry point for Google Play services integration.
 * Uses similar structure to openfl-ouya. Requires google-play-services.jar
 * 
 * @author Steve Richey
 */
class GoogleApiClient
{
	/**
	 * Create a new GoogleApiClient instance.
	 * 
	 * @param	handle
	 */
	public function new()
	{
		__jobject = JNI.createInterface(this, CLASS, "");
	}
	
	/**
	 * Returns a reference to the internal Java object.
	 */
	public function getJObject():Dynamic
	{
		return __jObject;
	}
	
	/**
	 * Connects to Google Play Services. Required before most other functions.
	 */
	public function connect():Void
	{
		if (__connect == null)
		{
			__connect = JNI.createMemberMethod(CLASS, "connect", VOID_VOID);
		}
		
		__connect(makeArray());
		
		return;
	}
	
	/**
	 * Returns true if currently connected to Google Play Services, false otherwise.
	 */
	public function isConnected():Bool
	{
		if (__isConnected == null)
		{
			__isConnected = JNI.createMemberMethod(CLASS, "isConnected", VOID_BOOLEAN);
		}
		
		return __isConnected(makeArray(__jObject));
	}
	
	/**
	 * Disconnects from Google Play Services. It's recommended that you do this before you shut down your app.
	 */
	public function disconnect():Void
	{
		if (__disconnect == null)
		{
			__disconnect = JNI.createMemberMethod(CLASS, "disconnect", VOID_VOID);
		}
		
		__disconnect(makeArray());
		
		return;
	}
	
	/**
	 * Returns a new Dynamic Array.
	 * 
	 * @param	Handle	Optional, if passed, will be pushed into the array before returning.
	 * @return	A new Dynamic Array.
	 */
	private function makeArray(?Handle:Dynamic):Array<Dynamic>
	{
		var array = new Array<Dynamic>();
		
		if (Handle != null)
		{
			array.push(Handle);
		}
		
		return array;
	}
	
	/**
	 * References to JNI objects.
	 */
	private var __jObject:Dynamic;
	private var __connect:Dynamic;
	private var __isConnected:Dynamic;
	private var __disconnect:Dynamic;
	
	/**
	 * The class name is the same for all methods.
	 */
	inline static private var CLASS:String = "com.google.android.gms.common.api.GoogleApiClient";
	/**
	 * The signature defines Java return types. Names are similar to Haxe types, e.g. VOID_VOID = Void->Void.
	 */
	inline static private var VOID_VOID:String = "()V";
	inline static private var VOID_BOOLEAN:String = "()Z";
}