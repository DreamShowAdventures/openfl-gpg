package com.google.android.gms;

/**
 * Commonly re-used strings and functions
 */
class Common
{
	/**
	 * Returns a new Dynamic Array.
	 */
	static public function array():Array<Dynamic>
	{
		return new Array<Dynamic>();
	}
	
	/**
	 * The class name is the same for all methods.
	 */
	inline static public var PACKAGE:String = "com.google.android.gms.common.";
	/**
	 * The signature defines Java return types. Names are similar to Haxe types, e.g. VOID_INT = Void->Int.
	 */
	inline static public var VOID_VOID:String = "()V";
	inline static public var VOID_BOOL:String = "()Z";
	inline static public var VOID_INT:String = "()I";
	inline static public var VOID_STRING:String = "()Ljava/lang/String;";
	inline static public var CONTEXT_BOOL:String = "(Landroid/content/Context;)Z";
	inline static public var CONTEXT_CONTEXT:String = "(Landroid/content/Context;)Landroid/content/Context;";
}