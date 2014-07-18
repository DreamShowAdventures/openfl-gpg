package com.google.android.gms.common.api;

import openfl.utils.JNI;

class GoogleApiClient
{
	/**
	 * Create a new GoogleApiClient instance.
	 * 
	 * @param	handle
	 */
	public function new()
	{
		__jObject = JNI.createInterface(this, Common.PACKAGE + CLASS, "");
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
			__connect = JNI.createMemberMethod(Common.PACKAGE + CLASS, "connect", Common.VOID_VOID);
		}
		
		__connect(Common.array());
		
		return;
	}
	
	/**
	 * Returns true if currently connected to Google Play Services, false otherwise.
	 */
	public function isConnected():Bool
	{
		if (__isConnected == null)
		{
			__isConnected = JNI.createMemberMethod(Common.PACKAGE + CLASS, "isConnected", Common.VOID_BOOL);
		}
		
		return __isConnected([__jObject]);
	}
	
	/**
	 * Disconnects from Google Play Services. It's recommended that you do this before you shut down your app.
	 */
	public function disconnect():Void
	{
		if (__disconnect == null)
		{
			__disconnect = JNI.createMemberMethod(Common.PACKAGE + CLASS, "disconnect", Common.VOID_VOID);
		}
		
		__disconnect(Common.array());
		
		return;
	}
	
	/**
	 * References to JNI objects.
	 */
	private var __jObject:Dynamic;
	private var __connect:Dynamic;
	private var __isConnected:Dynamic;
	private var __disconnect:Dynamic;
	
	inline static private var CLASS:String = "api.GoogleApiClient";
}