// Don't do anything if player gets eliminated
if (!instance_exists(obj_player)) {
    exit;
}


newDirection = direction; 

// % chance to go in direction of player
attackRatio = 100
// Get random num
randomNum = random_range(0, 100);

// If random number is over threshold, attack the player (go in his direction)
if (randomNum <= attackRatio) {
    // Get difference between player position and enemy position
    xDelta = x - obj_player.x;
    yDelta = y - obj_player.y;
    
    // If difference in x is more than difference in y, go either left or right
    if (abs(xDelta) >= abs(yDelta)) {
        if (xDelta < 0) {
            newDirection = 0
        } else {
            newDirection = 180
        }
    } else {
    // Otherwise if difference in Y is greated, go either up or down
     if (yDelta > 0) {
            newDirection = 90
        } else {
            newDirection = 270
        }
    }
} else {
    // If we didn't trigger the attack ratio, just randomly change direction
    while (newDirection == direction){
        randomNum = round(random_range (0,3))
        newDirection = randomNum * 90;
    }
}


direction = newDirection;
