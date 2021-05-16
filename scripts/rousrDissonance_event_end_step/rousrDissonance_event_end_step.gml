///@function rousr_dissonance_event_end_step()
///@desc End Step event function for GMLDiscord object
if (Is_dirty && Is_ready) {
  discord_update_presence();
  Is_dirty = false;
}