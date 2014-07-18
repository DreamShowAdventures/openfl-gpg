package com.google.android.gms.common.api;

#if android

import openfl.utils.JNI;

class GoogleApiClient
{
	/**
	 * Create a new GoogleApiClient instance.
	 */
	public function new()
	{
		__jObject = JNI.createInterface(this, OP.PACKAGE + CLASS, "");
	}
	
	/**
	 * Returns a reference to the internal Java object.
	 */
	public inline function getJObject():Dynamic
	{
		return __jObject;
	}
	
	/**
	 * Connects to Google Play Services. Required before most other functions.
	 */
	public inline function connect():Void
	{
		__connect(OP.array());
	}
	
	/**
	 * Returns true if currently connected to Google Play Services, false otherwise.
	 */
	public function isConnected():Bool
	{
		return __isConnected([__jObject]);
	}
	
	/**
	 * Disconnects from Google Play Services. It's recommended that you do this before you shut down your app.
	 */
	public function disconnect():Void
	{
		__disconnect(OP.array());
	}
	
	/**
	 * References to JNI objects.
	 */
	private var __jObject:Dynamic 		= null;
	private var __connect:Dynamic		= JNI.createMemberMethod(OP.PACKAGE + CLASS, "connect", OP.VOID_VOID);
	private var __isConnected:Dynamic	= JNI.createMemberMethod(OP.PACKAGE + CLASS, "isConnected", OP.VOID_BOOL);
	private var __disconnect:Dynamic 	= JNI.createMemberMethod(OP.PACKAGE + CLASS, "disconnect", OP.VOID_VOID);
	
	inline static private var CLASS:String = "api.GoogleApiClient";
}
#end