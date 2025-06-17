if (random(1000) < 1) {  // sometimes shoot
    var bullet = instance_create_layer(x, y, "Instances", obj_bone);
    bullet.direction = 90;  // down
    bullet.speed = -5;
}