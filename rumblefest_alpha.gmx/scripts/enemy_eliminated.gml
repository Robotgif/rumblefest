/// Enemy Eliminated

eliminatedType = argument[0]

global.enemiesEliminated = global.enemiesEliminated + 1;

show_debug_message(eliminatedType)
if (eliminatedType == "jobber_1") {
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

// Play eliminated sound
soundToPlay = choose(sound_wrestler_1, sound_wrestler_2, sound_wrestler_3, sound_wrestler_4, 
sound_wrestler_5, sound_wrestler_6, sound_wrestler_7, sound_wrestler_8)

audio_play_sound(soundToPlay, 50, false);

with (score_manager) {
    event_user(0)
}

// Tell ref to start counting
with (obj_ref) {
    event_user(4)
}
