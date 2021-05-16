///@function rousr_dissonance_set_spectate_secret(_secret)
///@desc set the join secret to join this player's game
///@param {String} _secret   	unique hased string for Spectate button
var _secret = argument0;

with (global.__rousr_dissonance) {
  Is_dirty = true;
  discord_set_spectate_secret(_secret);
}