switch (argument[0]){
case "front": 
    obj_ropes.alarm[0] = room_speed * 1
    obj_ropes.sprite_index = spr_wiggly_ropes_front
    break 
case "right":
    obj_side_rope_r.alarm[0] = room_speed * 1
    obj_side_rope_r.sprite_index = spr_side_rope_wiggle_r //change this animation
    break 
case "back":
    obj_back_ropes.alarm[0] = room_speed * 1
    obj_back_ropes.sprite_index = spr_wiggly_ropes_back
    break 
case "left":
    obj_side_rope_l.alarm[0] = room_speed * 1
    obj_side_rope_l.sprite_index = spr_side_rope_wiggle
    break         
} 
