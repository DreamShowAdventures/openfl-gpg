package;

import sys.FileSystem;
import sys.io.File;
import sys.io.FileOutput;

class BuildRefs
{
	public static function main():Void
	{
		var fout = File.write("android-refs.xml", false);
		
		var names = FileSystem.readDirectory("../project/android/gpg/");
		
		for (name in names)
		{
			fout.writeString('<file name="android/gpg/' + name + '"/>\n');
		}
		
		fout.close();
		
		fout = File.write("ios-refs.xml", false);
		
		names = FileSystem.readDirectory("../project/ios/gpg/");
		
		for (name in names)
		{
			fout.writeString('<file name="ios/gpg/' + name + '"/>\n');
		}
		
		fout.close();
	}
}