#ifndef STATIC_LINK
#define IMPLEMENT_API
#endif

#if defined(HX_WINDOWS) || defined(HX_MACOS) || defined(HX_LINUX)
#define NEKO_COMPATIBLE
#endif


#include <hx/CFFI.h>
#include "Utils.h"


using namespace openfl_gpg;



static value openfl_gpg_sample_method (value inputValue) {
	
	int returnValue = SampleMethod(val_int(inputValue));
	return alloc_int(returnValue);
	
}
DEFINE_PRIM (openfl_gpg_sample_method, 1);



extern "C" void openfl_gpg_main () {
	
	val_int(0); // Fix Neko init
	
}
DEFINE_ENTRY_POINT (openfl_gpg_main);



extern "C" int openfl_gpg_register_prims () { return 0; }