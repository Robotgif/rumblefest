switch (argument[0]) {
case "front": 
    obj_ropes.image_speed = .2
    obj_ropes.image_index = 0
    obj_ropes.sprite_index = spr_ropes_holdon_front
    break 
case "right":
    obj_side_rope_r.image_speed = .2
    obj_side_rope_r.image_index = 0
    obj_side_rope_r.sprite_index = spr_side_rope_holdon_r
    break 
case "back":
    obj_back_ropes.image_speed = .2
    obj_back_ropes.image_index = 0
    obj_back_ropes.sprite_index = spr_ropes_holdon_back
    break 
case "left":
    obj_side_rope_l.image_speed = .2
    obj_side_rope_l.image_index = 0
    obj_side_rope_l.sprite_index = spr_side_rope_holdon_l
    break   
} 

// Separate because of compile error, think the enum `1` conflicts with previous somehow...
switch (argument[0]) {
case directions.UP: 
    obj_ropes.image_speed = .2
    obj_ropes.image_index = 0
    obj_ropes.sprite_index = spr_ropes_holdon_front
    break 
case directions.RIGHT:
    obj_side_rope_r.image_speed = .2
    obj_side_rope_r.image_index = 0
    obj_side_rope_r.sprite_index = spr_side_rope_holdon_r
    break 
case directions.DOWN:
    obj_back_ropes.image_speed = .2
    obj_back_ropes.image_index = 0
    obj_back_ropes.sprite_index = spr_ropes_holdon_back
    break 
case directions.LEFT:
    obj_side_rope_l.image_speed = .2
    obj_side_rope_l.image_index = 0
    obj_side_rope_l.sprite_index = spr_side_rope_holdon_l
    break   
} 

