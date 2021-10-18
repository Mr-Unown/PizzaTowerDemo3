/*if (obj_player.character == "S")
    instance_destroy()
if (x != obj_player1.x)
    image_xscale = (-sign((x - obj_player1.x)))
if place_meeting(x, y, obj_player)
{
    with (obj_player)
    {
        if key_up2
        {
            other.dialogue += 1
            global.snickunlock = 1
            global.desertnight = 1
        }
    }
    with (obj_tv)
    {
        if (global.medievalrank == "none" && global.ruinrank == "none" && global.dungeonrank == "none")
        {
            if (other.dialogue == 0)
                _message = ""
            if (other.dialogue == 1)
                _message = "HEY THERE..."
            if (other.dialogue == 2)
                _message = "WELCOME BACK..."
            if (other.dialogue == 3)
                _message = "I HAVE COMPILED MOST OF THE LEVELS"
            if (other.dialogue == 4)
                _message = "INTO ONE COLLECTION"
            if (other.dialogue == 5)
                _message = "I REALLY SUGGEST GOING TO THE TUTORIAL"
            if (other.dialogue == 6)
                _message = "TO RE-LEARN SOME IMPORTANT MOVES"
            if (other.dialogue == 7)
                _message = " "
            showtext = 1
            alarm[0] = 2
        }
        else if (obj_cowboyhat.visible == true)
        {
            if (other.dialogue == 0)
                _message = ""
            if (other.dialogue == 1)
                _message = "YOU DID IT!"
            if (other.dialogue == 2)
                _message = "YES, YOU THE PLAYER!"
            if (other.dialogue == 3)
                _message = "YOU DID ALL OF THIS DEMO CONTENT"
            if (other.dialogue == 4)
                _message = "THERE IS NOTHING LEFT TO DO"
            if (other.dialogue == 5)
                _message = "GET YOURSELF A PIZZA OR SOMETHING"
            if (other.dialogue == 6)
                _message = "GO PLAY THE REAL OTHER SAGE GAMES"
            if (other.dialogue == 7)
                _message = "OH AND YOU CAN GO HOME PEPPINO"
            if (other.dialogue == 8)
                _message = "BRING THE HAT"
            if (other.dialogue == 9)
                _message = ""
            showtext = 1
            alarm[0] = 2
        }
        else if (global.medievalrank != "none" && global.ruinrank != "none" && global.dungeonrank != "none" && global.snickchallengerank != "none")
        {
            if (other.dialogue == 0)
                _message = ""
            if (other.dialogue == 1)
                _message = "WELL CONGRATS YOU BEAT THE LEVELS"
            if (other.dialogue == 2)
                _message = "YOU CAN PLAY AS THE NOISE"
            if (other.dialogue == 3)
                _message = "AND YOU CAN PLAY AS ME TOO"
            if (other.dialogue == 4)
                _message = "JUST JUMP UNDER THE BLOCK"
            if (other.dialogue == 5)
                _message = "WARNING: I AM VERY BUGGY"
            if (other.dialogue == 6)
                _message = ""
            showtext = 1
            alarm[0] = 2
        }
        else if (global.medievalrank != "none" && global.ruinrank != "none" && global.dungeonrank != "none")
        {
            if (other.dialogue == 0)
                _message = ""
            if (other.dialogue == 1)
                _message = "GOOD JOB"
            if (other.dialogue == 2)
                _message = "YOU FINISHED ALL THE LEVELS"
            if (other.dialogue == 3)
                _message = "DO YOU FEEL SATISFIED?"
            if (other.dialogue == 4)
                _message = ""
            showtext = 1
            alarm[0] = 2
        }
        else if (global.medievalrank == "s" || global.ruinrank == "s" || global.dungeonrank == "s")
        {
            if (other.dialogue == 0)
                _message = ""
            if (other.dialogue == 1)
                _message = "WOW YOU GOT A S RANK"
            if (other.dialogue == 2)
                _message = "KEEP IT UP!"
            if (other.dialogue == 3)
                _message = " "
            showtext = 1
            alarm[0] = 2
        }
        else if (global.medievalrank == "d" || global.ruinrank == "d" || global.dungeonrank == "d")
        {
            if (other.dialogue == 0)
                _message = ""
            if (other.dialogue == 1)
                _message = "WOW YOURE PRETTY BAD AT THESE GAMES"
            if (other.dialogue == 2)
                _message = "ITS OK THEY ARENT THAT GREAT EITHER"
            if (other.dialogue == 3)
                _message = ""
            showtext = 1
            alarm[0] = 2
        }
        else if (global.medievalrank != "none" || global.ruinrank != "none" || global.dungeonrank != "none")
        {
            if (other.dialogue == 0)
                _message = ""
            if (other.dialogue == 1)
                _message = "TRY BEATING ALL OF THE LEVELS!"
            if (other.dialogue == 2)
                _message = "KEEP IT UP!"
            if (other.dialogue == 3)
                _message = " "
            showtext = 1
            alarm[0] = 2
        }
    }
}
else
    dialogue = 0


