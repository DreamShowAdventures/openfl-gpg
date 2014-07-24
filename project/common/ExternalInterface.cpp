#ifndef STATIC_LINK
#define IMPLEMENT_API
#endif

#if defined(HX_WINDOWS) || defined(HX_MACOS) || defined(HX_LINUX)
#define NEKO_COMPATIBLE
#endif

#include <hx/CFFI.h>
#include <stdio.h>
#include "include/namespace.h"
/*
#include "gpg/achievement.h"
#include "gpg/achievement_manager.h"
#include "gpg/builder.h"
#include "gpg/common.h"
#include "gpg/debug.h"
#include "gpg/default_callbacks.h"
#include "gpg/event.h"
#include "gpg/event_manager.h"
#include "gpg/game_services.h"
#include "gpg/leaderboard.h"
#include "gpg/leaderboard_manager.h"
#include "gpg/multiplayer_invitation.h"
#include "gpg/multiplayer_participant.h"
#include "gpg/participant_results.h"
#include "gpg/platform_configuration.h"
#include "gpg/platform_defines.h"
#include "gpg/player.h"
#include "gpg/player_level.h"
#include "gpg/player_manager.h"
#include "gpg/quest.h"
#include "gpg/quest_manager.h"
#include "gpg/quest_milestone.h"
#include "gpg/score.h"
#include "gpg/score_page.h"
#include "gpg/score_summary.h"
#include "gpg/snapshot_manager.h"
#include "gpg/snapshot_metadata.h"
#include "gpg/snapshot_metadata_change.h"
#include "gpg/snapshot_metadata_change_cover_image.h"
#include "gpg/snapshot_metadata_change_builder.h"
#include "gpg/status.h"
#include "gpg/turn_based_match.h"
#include "gpg/turn_based_match_config.h"
#include "gpg/turn_based_match_config_builder.h"
#include "gpg/turn_based_multiplayer_manager.h"
#include "gpg/types.h"
*/

using namespace gpg;
/*
static GameServices gpg_game_services_create()
{
	return GameServices.Builder();
}
DEFINE_PRIM(gpg_game_services_create, 0);
*/

/**
 * Generic test function.
 */
static value test()
{
	return alloc_int(1024);
}
DEFINE_PRIM(test, 0);

extern "C" void gpg_main()
{
	val_int(0); // Fix Neko init
}
DEFINE_ENTRY_POINT(gpg_main);

extern "C" int gpg_register_prims() { return 0; }