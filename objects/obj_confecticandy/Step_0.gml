if (global.candyfollow == 1)
{
    image_alpha = obj_player.image_alpha
    if (obj_player.hsp != 0)
        sprite_index = spr_run
    else
        sprite_index = spr_idle
    depth = -6
    if (global.wormfollow == 1)
    {
        ds_queue_enqueue(followQueue, (obj_confectiworm.x + (image_xscale * 4)))
        ds_queue_enqueue(followQueue, (obj_confectiworm.y - 2))
    }
    else if (global.chocofollow == 1)
    {
        ds_queue_enqueue(followQueue, (obj_confectichoco.x + (image_xscale * 4)))
        ds_queue_enqueue(followQueue, (obj_confectichoco.y - 2))
    }
    else if (global.crackfollow == 1)
    {
        ds_queue_enqueue(followQueue, (obj_confecticrack.x + (image_xscale * 4)))
        ds_queue_enqueue(followQueue, (obj_confecticrack.y - 2))
    }
    else if (global.mallowfollow == 1)
    {
        ds_queue_enqueue(followQueue, (obj_confectimallow.x + (image_xscale * 4)))
        ds_queue_enqueue(followQueue, (obj_confectimallow.y - 2))
    }
    else
    {
        ds_queue_enqueue(followQueue, obj_player.x)
        ds_queue_enqueue(followQueue, obj_player.y)
    }
    LAG_STEPS = 10
    if (ds_queue_size(followQueue) > (LAG_STEPS * 2))
    {
        x = (ds_queue_dequeue(followQueue) - (image_xscale * 4))
        y = (ds_queue_dequeue(followQueue) + 2)
    }
    image_xscale = obj_player.xscale
}