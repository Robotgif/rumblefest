/// Enemy Eliminated

eliminatedType = argument[0]

global.enemiesEliminated = global.enemiesEliminated + 1;

show_debug_message(eliminatedType)
if (eliminatedType == "spr_en_jobber") {
    scoreToAdd = 1
} else if (eliminatedType == "spr_en") {
    scoreToAdd = 5
}


// Save to total enemies eliminated
global.statsEnemiesEliminated = global.statsEnemiesEliminated + 1;
global.totalScore += scoreToAdd

ini_open("saveData.ini");
ini_write_real("Stats", "enemiesEliminated", global.statsEnemiesEliminated); 

ini_write_real("Stats", "totalScore", global.totalScore); 

ini_close();

// Trigger crowd flash
crowd_flash();

with (score_manager) {
    event_user(0)
}

// Tell ref to start counting
with (obj_ref) {
    event_user(4)
}
