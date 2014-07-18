package com;

/**
 * OpenFL-Play convenience class. Contains commonly re-used strings and functions.
 * 
 * @author Steve Richey
 */
class OP
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
	inline static public var ACTIVITY_INT_VOID:String = "(Landroid/app/Activity;I;)V";
	inline static public var CONTEXT_BOOL:String = "(Landroid/content/Context;)Z";
	inline static public var CONTEXT_INT:String = "(Landroid/content/Context;)I";
	inline static public var CONTEXT_CONTEXT:String = "(Landroid/content/Context;)Landroid/content/Context;";
	inline static public var CONTEXT_STRING:String = "(Landroid/content/Context;)Ljava/lang/String;";
	inline static public var INT_ACTIVITY_INT_DIALOGINTERFACE_ONCANCELLISTENER_BOOL:String = "(I;Landroid/app/Activity;I;Landroid/content/DialogInterface/OnCancelListener;)Z";
	inline static public var INT_BOOL:String = "(I)Z";
	inline static public var INT_VOID:String = "(I)V";
	inline static public var INT_STRING:String = "(I)Ljava/lang/String;";
	inline static public var VOID_VOID:String = "()V";
	inline static public var VOID_BOOL:String = "()Z";
	inline static public var VOID_INT:String = "()I";
	inline static public var VOID_STRING:String = "()Ljava/lang/String;";
}