/// @description Insert description here
// You can write your code in this editor
randomize();


if (discover) 
{
	
	if (myAlpha >=0 ){
	myAlpha -= 0.002
	}
	if( myAlpha <=0.6) {
	discoverY -= 1
	}
	if(myAlpha < 0) {
		discover = false	
	}
}

grab = false;
depth = 0;
Instance = instance_place(x,y, objTool);
if (Instance != noone)
{

	
	
	Instance.sprite_index = sprRockTool;
	instance_destroy(objRock)
	objToolTree.CurrentSpear = sprRockTool
	obj_MonkeyControl.PopulationMult += 0.5;
	ListSpawn = scr_RandomSpawnArea();
	instance_create_depth(ListSpawn[0], ListSpawn[1], 0, objBronze)
	objBronze.sprite_index = sprBronze;
	ListSpawn = scr_RandomSpawnArea();
	instance_create_depth(ListSpawn[0], ListSpawn[1], 0, objClay)
	objClay.sprite_index = sprClay;
	ListSpawn = scr_RandomSpawnArea();
	instance_create_depth(ListSpawn[0], ListSpawn[1], -1, obj_Dummy)
	ListSpawn = scr_RandomSpawnArea();
	instance_create_depth(ListSpawn[0], ListSpawn[1], -1, obj_Dummy)
	
	objToolTree.currAge = "R";
	scr_SpawnExtras(":O", x, y);
	audio_play_sound(snd_PopUp, 2, false);
} else {
	audio_play_sound(snd_drop, 2, false);
	
	x = OldX;
	y = Oldy;
}

