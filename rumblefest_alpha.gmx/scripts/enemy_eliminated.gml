/// Enemy Eliminated
global.enemiesEliminated = global.enemiesEliminated + 1;
score = score + 100;

with (score_manager) {
    event_user(0)
}

// Tell ref to start counting
with (obj_ref) {
    event_user(4)
}
