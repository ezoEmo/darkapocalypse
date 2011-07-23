/obj/techs/Overlays/Spirit_Bomb_Small

    icon = 'Spirit Bomb.dmi'
    icon_state = "small spirit bomb"
    density = 0
    layer = 999

    New()
        pixel_y = 64

/obj/techs/Overlays/Spirit_Bomb_Center

    icon = 'Spirit Bomb.dmi'
    icon_state = "sb center"
    density = 0
    layer = 999

    New()
        pixel_y = 64
        pixel_x = 0
        src.overlays += new/obj/techs/Overlays/Spirit_Bomb_Top_Left
        src.overlays += new/obj/techs/Overlays/Spirit_Bomb_Top
        src.overlays += new/obj/techs/Overlays/Spirit_Bomb_Top_Right
        src.overlays += new/obj/techs/Overlays/Spirit_Bomb_Middle_Left
        src.overlays += new/obj/techs/Overlays/Spirit_Bomb_Middle_Right
        src.overlays += new/obj/techs/Overlays/Spirit_Bomb_Bottom_Right
        src.overlays += new/obj/techs/Overlays/Spirit_Bomb_Bottom_Left
        src.overlays += new/obj/techs/Overlays/Spirit_Bomb_Bottom

/obj/techs/Overlays/Spirit_Bomb_Top_Right

    icon = 'Spirit Bomb.dmi'
    icon_state = "sb top 3"
    density = 0
    layer = 999

    New()
        pixel_y = 32
        pixel_x = 32


/obj/techs/Overlays/Spirit_Bomb_Top

    icon = 'Spirit Bomb.dmi'
    icon_state = "sb top 2"
    density = 0
    layer = 999

    New()
        pixel_y = 32
        pixel_x = 0


/obj/techs/Overlays/Spirit_Bomb_Top_Left

    icon = 'Spirit Bomb.dmi'
    icon_state = "sb top 1"
    density = 0
    layer = 999

    New()
        pixel_y = 32
        pixel_x = -32



/obj/techs/Overlays/Spirit_Bomb_Middle_Left

    icon = 'Spirit Bomb.dmi'
    icon_state = "sb side 1"
    density = 0
    layer = 999

    New()
        pixel_x = -32


/obj/techs/Overlays/Spirit_Bomb_Middle_Right

    icon = 'Spirit Bomb.dmi'
    icon_state = "sb side 2"
    density = 0
    layer = 999

    New()
        pixel_x = 32


/obj/techs/Overlays/Spirit_Bomb_Bottom_Right

    icon = 'Spirit Bomb.dmi'
    icon_state = "sb bottom 3"
    density = 0
    layer = 999

    New()
        pixel_x = 32
        pixel_y = -32


/obj/techs/Overlays/Spirit_Bomb_Bottom_Left

    icon = 'Spirit Bomb.dmi'
    icon_state = "sb bottom 1"
    density = 0
    layer = 999

    New()
        pixel_x = -32
        pixel_y = -32


/obj/techs/Overlays/Spirit_Bomb_Bottom

    icon = 'Spirit Bomb.dmi'
    icon_state = "sb bottom 2"
    density = 0
    layer = 999

    New()
        pixel_y = -32
mob
    var
        small_spirit_bomb = new/obj/techs/Overlays/Spirit_Bomb_Small
        big_spirit_bomb = new/obj/techs/Overlays/Spirit_Bomb_Center