#ifndef STATIC_LINK
#define IMPLEMENT_API
#endif

#if defined(HX_WINDOWS) || defined(HX_MACOS) || defined(HX_LINUX)
#define NEKO_COMPATIBLE
#endif

#include <hx/CFFI.h>
#include <stdio.h>
#include "OpenFLGPG.h"

using namespace gpg;

static value gpg_test_func(value inputValue)
{
	int returnValue = SampleMethod(val_int(inputValue));
	
	return alloc_int(returnValue);
}
DEFINE_PRIM(gpg_test_func, 1);

extern "C" void gpg_main()
{
	val_int(0); // Fix Neko init
}
DEFINE_ENTRY_POINT(gpg_main);

extern "C" int gpg_register_prims() { return 0; }