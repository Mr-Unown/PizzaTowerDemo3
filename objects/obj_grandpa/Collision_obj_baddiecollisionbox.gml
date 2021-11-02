with (other.id)
{
    if (instance_exists(baddieID) && baddieID != other.id)
    {
        if (baddieID.state == 106 && baddieID.thrown == 1)
            instance_destroy(other.id)
    }
}
with (other.id)
{
    if (instance_exists(baddieID) && baddieID != other.id)
    {
        if (baddieID.state == 106 && (obj_player1.state == 10 || obj_player2.state == 10))
            instance_destroy(other.id)
    }
}


