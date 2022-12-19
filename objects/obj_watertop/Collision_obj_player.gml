with (obj_player)
{
  if state == states.cotton or state = states.cottondrill or state = states.cottonroll
  {
    hurted = 1
    sprite_index = spr_bombpep_end
    image_index = 0
    state = 20
  }
}