with (other.id)
{
    var backtoroom = sign(image_xscale)
    var signhsp = sign(other.hsp)
    if (signhsp == backtoroom)
        other.hsp *= (-1 * backtoroom)
}

