# OpenFL-Play

Haxe bindings for Google Play Services, via OpenFL. MIT licensed.

## Info

* All documentation is generally copypasta from the [official Google documentation](http://developer.android.com/reference/gms-packages.html).
* Package structure and function names are more or less identical to their Android counterparts.
* This is a WIP, and is not guaranteed to work. Not all functions are implemented.
* Eventually this will work for both Android and iOS, but it's just Android for now.
* If you'd like to request a function be added, please open an issue. If you have a fix or improvement, please submit a pull request.

## Usage

Add `openfl-play` to haxelib.

````
haxelib git openfl-play https://github.com/DreamShowAdventures/openfl-play
````

Add it to your `Project.xml`.

````
<haxelib name="openfl-play"/>
````

Before using any Google Play Services, you should probably check if they're available:

````
import com.google.android.gms.common.GooglePlayServicesUtil;
...
GooglePlayServicesUtil.isGooglePlayServicesAvailable();
````

After that you need to establish a connection:

````
import com.google.android.gms.common.api.GoogleApiClient;
...
GoogleApiClient.connect();
````

Then you can call other stuff too I guess. This readme is incomplete!