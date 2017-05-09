/// Wiggle based on our 
switch (argument[0]) {
case directions.DOWN: 
    obj_ropes.image_speed = .8
    obj_ropes.image_index = 0
    obj_ropes.sprite_index = spr_wiggly_ropes_front
    break 
case directions.RIGHT:
    obj_side_rope_r.image_speed = .8
    obj_side_rope_r.image_index = 0
    obj_side_rope_r.sprite_index = spr_side_rope_wiggle_r //change this animation
    break 
case directions.UP:
    obj_back_ropes.image_speed = .8
    obj_back_ropes.image_index = 0
    obj_back_ropes.sprite_index = spr_wiggly_ropes_back
    break 
case directions.LEFT:
    obj_side_rope_l.image_speed = .8
    obj_side_rope_l.image_index = 0
    obj_side_rope_l.sprite_index = spr_side_rope_wiggle
    break   
} 

