/// @description Insert description here
// You can write your code in this editor

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
Instance = instance_place(x,y, obj_MonkeyNormal);
if (Instance != noone)
{
	Instance.sprite_index = spr_MonkeySciFi
	instance_destroy();
	obj_ClothesTree.CurrentClothes = spr_MonkeySciFi
	obj_MonkeyControl.PopulationMult += 0.1;
	ListSpawn = scr_RandomSpawnArea();
	instance_create_depth(ListSpawn[0], ListSpawn[1], 0, obj_space)
} else {
	x = OldX;
	y = Oldy;
}