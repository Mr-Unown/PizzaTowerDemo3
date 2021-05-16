///@function rousr_dissonance_set_state(_state)
///@desc set the state string
///@param {String} _state   the player's current "party status"
var _state = argument0;

with (global.__rousr_dissonance) {
  Is_dirty = true;
  discord_set_state(_state);
}