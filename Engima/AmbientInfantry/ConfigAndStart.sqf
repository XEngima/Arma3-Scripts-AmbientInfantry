/*
 * Script: Engima's Ambient Infantry
 *
 * This file contains configuration parameters and a function call to start an instance of ambient
 * infantry in yout mission. Edit the parameters below to fit the needs of your mission.
 *
 * See file Engima\AmbientInfantry\Documentation.txt for documentation and a full reference of how
 * to customize and use Engima's Ambient Infantry.
 * 
 * The Ambient Infantry script is programmed in SQX and compiled into SQF. For the complete source
 * code, use the TypeSqf editor and install the CPack Engima.AmbientInfantry.
 */

// Create a variable of type Array with custom options.
private _parameters = [
	["SIDE", east],
	["UNIT_CLASSES", ["O_Soldier_AA_F"]],
	["MAX_GROUPS_COUNT", 10],
	["MIN_UNITS_IN_EACH_GROUP", 2],
	["MAX_UNITS_IN_EACH_GROUP", 4],
	["MIN_SPAWN_DISTANCE", 100],
	["MAX_SPAWN_DISTANCE", 500],
	["MIN_SPAWN_DISTANCE_ON_START", 100],
	["MIN_SKILL", 0.4],
	["MAX_SKILL", 0.6],
	["BLACKLIST_MARKERS", ["eng_blacklistMarker"]],
	["ON_GROUP_CREATING", { true }],
	["ON_GROUP_CREATED", {}],
	["ON_GROUP_REMOVED", {}],
	["IN_DEBUG_MODE", true]
];

// Call the function that creates and starts the ambient infantry instance.
[_parameters] call Engima_AmbientInfantry_Classes_AmbientInfantry_CreateInstance;
