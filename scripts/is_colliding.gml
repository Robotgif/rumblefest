// If player or enemy is ghostin', we're not colliding
if (state == GHOST || obj_player.state == GHOST) {
    argument[0].isColliding = false;
    exit;
}



// Always use your enemy object that is not MOVING as argument[0]
if (place_meeting(argument[0].x+4,argument[0].y,argument[1]) && argument[1].direction == 180) {
    //argument[0].direction = argument[1].direction;
    argument[0].isColliding = true;
} else if (place_meeting(argument[0].x-4,argument[0].y,argument[1]) && argument[1].direction == 0) {
    //argument[0].direction = argument[1].direction;
    argument[0].isColliding = true;
} else if (place_meeting(argument[0].x,argument[0].y+4,argument[1]) && argument[1].direction == 90) {
    //argument[0].direction = argument[1].direction;
    argument[0].isColliding = true;
} else if (place_meeting(argument[0].x,argument[0].y-4,argument[1]) && argument[1].direction == 270) {
    //argument[0].direction = argument[1].direction;
    argument[0].isColliding = true;
}


