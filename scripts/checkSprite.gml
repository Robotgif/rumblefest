// Don't do anything if player gets eliminated
if (!instance_exists(obj_player)) {
    exit;
}


if (state == TIRED) {
    speed = 0;
    sprite_index = asset_get_index(spritePrefix + "tired")
    image_speed = .1
} else if (state == MOVING){
    speed = 4;
    image_speed = .1
    if (direction == 0) {
        sprite_index = asset_get_index(spritePrefix + "right")
    }
    if (direction == 90) {
        sprite_index = asset_get_index(spritePrefix + "up")
    }
    if (direction == 180) {
        sprite_index = asset_get_index(spritePrefix + "left")
    }
    if (direction == 270) {
        sprite_index = asset_get_index(spritePrefix + "down")
    }
} else if (state == IS_HURT) {
    // speed = obj_player.speed;
    direction = obj_player.direction;
    speed = 0;
    sprite_index = asset_get_index(spritePrefix + "damage")
    image_speed = .2;
} else if (state == ELIMINATED) {
    speed = 0;
    
    alarm[0] = -1;
    alarm[1] = -1;
    
    if (direction == 0) {
        x = x + 4;
    }
    if (direction == 90) {
        y = y + 4;
    }
    if (direction == 180) {
        x = x - 4;
    }
    if (direction == 270) {
        y = y - 4;
    }
}
