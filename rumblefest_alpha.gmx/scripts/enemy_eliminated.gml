/// Enemy Eliminated
global.enemiesEliminated = global.enemiesEliminated + 1;
score = score + 100;

// Save to total enemies eliminated
global.statsEnemiesEliminated = global.statsEnemiesEliminated + 1;
ini_open("saveData.ini");
ini_write_real("Stats", "enemiesEliminated", global.statsEnemiesEliminated); //The first value is a header for that section, the second value is the label for your variable in the INI file, and the third value is the actual variable
ini_close(); //Remember to close the INI or you'll have a memory leak

// Trigger crowd flash
crowd_flash();

with (score_manager) {
    event_user(0)
}

// Tell ref to start counting
with (obj_ref) {
    event_user(4)
}
