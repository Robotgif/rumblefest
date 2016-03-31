newDirection = direction;  //line 3-7 makes sure enemy never moves in same direction 
while (newDirection == direction){
    randomNum = round(random_range (0,3))
    newDirection = randomNum * 90;
}
direction = newDirection;
