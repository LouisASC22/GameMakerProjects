instance_destroy(); // ball sunk

global.billard_score += 1;
global.billard_remaining -= 1;

if(instance_exists(obj_billard)) {
	display_level(global.billard_score, 22, 430);
}