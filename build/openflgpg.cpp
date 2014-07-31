#define IMPLEMENT_API

#include <hx/CFFI.h>

#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <vector>
#include <sstream>
#include <map>

#include "gpg/gpg.h"

AutoGCRoot *g_eventHandler = 0;

extern "C"
{
	value gpg_test()
	{
		return alloc_int(1024);
	}
	DEFINE_PRIM(gpg_test, 0);
	
	void gpg_main()
	{
		val_int(0); // Fix Neko init
	}
	DEFINE_ENTRY_POINT(gpg_main);
	
	int gpg_register_prims() { return 0; }
}