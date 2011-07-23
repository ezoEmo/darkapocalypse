/*
	The infamous talking not-so-smileys demo.
 */

var/dmifont/ComicSansMS7pt_AA16/textfont = new
var/dmifont/ComicSansMSItalic7pt_AA16/itfont = new
var/dmifont/Arial7pt/namefont = new

mob

	var/talkbubble/bubble


	proc/CreateName(r=0, g=0, b=0)
		var/lines = round(32 / namefont.height)
		var/txt = namefont.GetLines(name, width = 96, maxlines = lines,\
		                            flags = DF_WRAP_ELLIPSIS)
		var/size = namefont.RoundUp32(namefont.GetWidth(txt))
		var/iconset/s = namefont.DrawText(txt, size / 2, 0,\
		                    width = size, maxlines = lines,\
		                    flags = DF_JUSTIFY_CENTER | DF_WRAP_ELLIPSIS,\
		                    icons_x = size / 32, icons_y = 1)
		s.Transparent()     // white text on transparent background
		if(r<255 || g<255 || b<255)
			s.Blend(rgb(r, g, b), ICON_MULTIPLY)
		var/obj/O = new
		O.pixel_y = -32
		for(var/xx = 0, xx < s.w, ++xx)
			var/icon/ic = s.GetIcon(xx, 0)
			if(ic)
				O.icon = ic
				O.pixel_x = (xx + (1 - s.w) / 2) * 32
				overlays += O


talkbubble
	var/list/objs
	var/list/moremsg

	New(mob/M,list/msg)
		moremsg = new
		objs = new
		if(!M || !msg || !msg.len) del(src)
		var/bdir = NORTHEAST
		if(M.x >= world.maxx) bdir ^= 12	// swap east/west
		if(M.y >= world.maxy) bdir ^= 3	// swap north/south
		var/width
		var/height
		/*
			Messing around directly with /dmifonttextline is not advisable.
			If you do need to use it, be sure to delete it. It has to be
			deleted manually.
		 */
		var/dmifonttextline/txt
		// choose a talk bubble size
		if(textfont.WillFitMultiFont(msg, width=28, maxheight=22))
			width=28
			txt=textfont.GetLinesMultiFont(msg, width = 28, maxheight = 22,\
			                               leftover = moremsg)
		else
			width=60
			txt=textfont.GetLinesMultiFont(msg, width=60, flags = DF_WRAP_ELLIPSIS,\
			                               maxheight = 30,leftover = moremsg)
		if(!txt) del(src)
		height = txt.TotalHeight()
		// set centerline: 12 or 20 for a small bubble, 16 for a large bubble
		var/y = width == 28 ? (bdir & SOUTH ? 20 : 12) : 16
		var/iconset/s=textfont.DrawTextMultiFont(txt,\
		                                         round((width - txt.TotalWidth()) / 2) + 2,\
		                                         y - round(height / 2))

		// THIS IS IMPORTANT!
		del(txt)

		var/icon/ic		// part of the bubble
		var/icon/ti		// part of the text
		var/image/im
		// small bubble
		if(width == 28)
			ic=new('bubble.dmi', "")
			if(bdir & WEST) ic.Flip(WEST)
			if(bdir & SOUTH) ic.Flip(SOUTH)
			ti = s.GetIcon(0, 0)
			if(ti) ic.Blend(ti, ICON_SUBTRACT)
			im = new/image(icon = ic, loc = M)
			im.pixel_x = (bdir & EAST) ? 32 : -32
			im.pixel_y = (bdir & NORTH) ? 32 : -32
			objs += im
		// large bubble
		else
			// left side (1 of 2)
			ic = new('bubble.dmi', "left")
			ti = s.GetIcon(0, 0)
			if(ti) ic.Blend(ti, ICON_SUBTRACT)
			im = new/image(icon = ic, loc = M)
			im.pixel_x = (bdir & EAST) ? 0 : -32
			im.pixel_y = (bdir & NORTH) ? 32 : -32
			objs += im
			// right side (2 of 2)
			ic = new('bubble.dmi', "right")
			ti = s.GetIcon(1, 0)
			if(ti) ic.Blend(ti, ICON_SUBTRACT)
			im = new/image(icon = ic, loc = M)
			im.pixel_x = (bdir & EAST) ? 32 : 0
			im.pixel_y = (bdir & NORTH) ? 32 : -32
			objs += im
			// tail
			ic = new('bubble.dmi', "tail")
			if(bdir & WEST) ic.Flip(WEST)
			if(bdir & SOUTH) ic.Flip(SOUTH)
			im = new/image(icon = ic, loc = M)
			im.pixel_x = (bdir & EAST) ? 32 : -32
			im.pixel_y = (bdir & NORTH) ? 1 : -1
			objs += im
		// show image(s) to players
		for(im in objs) world << im
		// wait 3.5 seconds for more, or 5 seconds to delete bubble
		spawn(moremsg.len ? 35 : 50)
			if(moremsg && moremsg.len && M) M.bubble = new(M, moremsg)
			del(src)

	Del()
		for(var/image/I in objs) del(I)
		..()
