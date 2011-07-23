


/obj/techs/Overlays/Vanishing_Ball_Small

    icon = 'VanishingBall.dmi'
    icon_state = "small vanishing ball"
    density = 0
    layer = 999

    New()
        pixel_y = 64

/obj/techs/Overlays/Vanishing_Ball_Center

    icon = 'VanishingBall.dmi'
    icon_state = "vb center"
    density = 0
    layer = 999

    New()
        pixel_y = 64
        pixel_x = 0
        src.overlays += new/obj/techs/Overlays/Vanishing_Ball_Top_Left
        src.overlays += new/obj/techs/Overlays/Vanishing_Ball_Top
        src.overlays += new/obj/techs/Overlays/Vanishing_Ball_Top_Right
        src.overlays += new/obj/techs/Overlays/Vanishing_Ball_Middle_Left
        src.overlays += new/obj/techs/Overlays/Vanishing_Ball_Middle_Right
        src.overlays += new/obj/techs/Overlays/Vanishing_Ball_Bottom_Right
        src.overlays += new/obj/techs/Overlays/Vanishing_Ball_Bottom_Left
        src.overlays += new/obj/techs/Overlays/Vanishing_Ball_Bottom

/obj/techs/Overlays/Vanishing_Ball_Top_Right

    icon = 'VanishingBall.dmi'
    icon_state = "vb top 3"
    density = 0
    layer = 999

    New()
        pixel_y = 32
        pixel_x = 32


/obj/techs/Overlays/Vanishing_Ball_Top

    icon = 'VanishingBall.dmi'
    icon_state = "vb top 2"
    density = 0
    layer = 999

    New()
        pixel_y = 32
        pixel_x = 0


/obj/techs/Overlays/Vanishing_Ball_Top_Left

    icon = 'VanishingBall.dmi'
    icon_state = "vb top 1"
    density = 0
    layer = 999

    New()
        pixel_y = 32
        pixel_x = -32



/obj/techs/Overlays/Vanishing_Ball_Middle_Left

    icon = 'VanishingBall.dmi'
    icon_state = "vb side 1"
    density = 0
    layer = 999

    New()
        pixel_x = -32


/obj/techs/Overlays/Vanishing_Ball_Middle_Right

    icon = 'VanishingBall.dmi'
    icon_state = "vb side 2"
    density = 0
    layer = 999

    New()
        pixel_x = 32


/obj/techs/Overlays/Vanishing_Ball_Bottom_Right

    icon = 'VanishingBall.dmi'
    icon_state = "vb bottom 3"
    density = 0
    layer = 999

    New()
        pixel_x = 32
        pixel_y = -32


/obj/techs/Overlays/Vanishing_Ball_Bottom_Left

    icon = 'VanishingBall.dmi'
    icon_state = "vb bottom 1"
    density = 0
    layer = 999

    New()
        pixel_x = -32
        pixel_y = -32


/obj/techs/Overlays/Vanishing_Ball_Bottom

    icon = 'VanishingBall.dmi'
    icon_state = "vb bottom 2"
    density = 0
    layer = 999

    New()
        pixel_y = -32
mob
    var
        small_vanishing_ball = new/obj/techs/Overlays/Vanishing_Ball_Small
        big_vanishing_ball = new/obj/techs/Overlays/Vanishing_Ball_Center