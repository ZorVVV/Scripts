local COLORS = {
    bg = Color(29, 34, 37),
    header_bg = Color(23, 27, 30),
    section_bg = Color(35, 41, 45),
    row_bg = Color(29, 34, 37),
    divider = Color(45, 53, 58),
    text_primary = Color(255, 255, 255),
    text_secondary = Color(160, 170, 175),

    GAME = {
        king = Color(255, 145, 0),
        mother = Color(90, 160, 255)
    }
}

local LAYOUT = {
    header_h = 40,
    colums_h = 40,
    section_h = 40,
    row_h = 40,
    footer_h = 30,
}

local FONTS = {
    main = Render.LoadFont("MuseoSansEx", Enum.FontCreate.FONTFLAG_ANTIALIAS),
}

local cheatDIr = Engine.GetCheatDirectory()
local ICONS = {
    logo = Render.LoadImage(cheatDIr + "/images/Overwolf/overbuff.png")
}

local MENU = {
    visible = false,
    w = 1500,
    h = 630
}

do
    local ce = Render.ScreenSize() / 2
    MENU.start = Vec2(ce.x - MENU.w / 2, ce.y - MENU.h / 2)
    MENU.end_ = Vec2(ce.x + MENU.w / 2, ce.y + MENU.h / 2)
end

local function centerY(top, h, font, size, text)
    return top + h / 2 - Render.TextSize(font, size, text).y / 2
end

function RenderHeaderSection(title, y, color)
    local h = LAYOUT.section_h
    local font = FONTS.main

    Render.FilledRect(
        Vec2(MENU.start.x, y),
        Vec2(MENU.end_.x, y + h),
        COLORS.section_bg
    )
    
    Render.FilledRect(
        Vec2(MENU.start.x, y),
        Vec2(MENU.start.x + 3, y + h),
        color
    )

    Render.Text(
        font, 16, title,
        Vec2(MENU.start.x + 12, centerY(y, h, font, 16, title)),
        color
    )
end

function RenderPlayerRow(player, rowY)
    local font = FONTS.main
    local rH = LAYOUT.row_h

    Render.FilledRect(
        Vec2(MENU.start.x, rowY),
        Vec2(MENU.end_.x, rowY + rH),
        Color(255, 255, 255, 125)
    )
end

function RenderFooterSection(y)
    local font = FONTS.main
    local h = LAYOUT.footer_h

    Render.Line(
        Vec2(MENU.start.x, y),
        Vec2(MENU.end_.x, y),
        COLORS.divider
    )
    local title = "Version: v1.0.0"
    Render.Text(
        font, 15, title,
        Vec2(MENU.start.x + 14, centerY(y, h, font, 15, title)), COLORS.text_secondary
    )
    
end

function RenderWindow()
    local font = FONTS.main

    Render.FilledRect(
        MENU.start,
        MENU.end_,
        COLORS.bg,
        6
    )

    local headerEnd = Vec2(MENU.end_.x, MENU.start.y + LAYOUT.header_h)
    Render.FilledRect(
        MENU.start,
        headerEnd,
        COLORS.header_bg,
        6,
        Enum.DrawFlags.RoundCornersTop
    )

    local logoPos = Vec2(
        MENU.start.x + 20,
        MENU.start.y + LAYOUT.header_h / 2
    )
    Render.Image(
        ICONS.logo,
        logoPos,
        Vec2(12, 12),
        Color(255, 255, 255)
    )

    local title = "OVERPLUS - ПРИЛОЖЕНИЕ СТАТИСТИКИ"
    local titlePos = Vec2(
        MENU.start.x + 40,
        MENU.start.y + LAYOUT.header_h / 2 - Render.TextSize(font, 15, title).y / 2
    )
    Render.Text(font, 15, title, titlePos, COLORS.text_primary)


    local cursor = MENU.start.y + LAYOUT.header_h
    RenderHeaderSection("Hidden King", cursor, COLORS.GAME.king)
    
    cursor = cursor + LAYOUT.section_h

    RenderPlayerRow(nil, cursor)
    cursor = cursor + LAYOUT.row_h
    RenderPlayerRow(nil, cursor)
    cursor = cursor + LAYOUT.row_h
    RenderPlayerRow(nil, cursor)
    cursor = cursor + LAYOUT.row_h
    RenderPlayerRow(nil, cursor)
    cursor = cursor + LAYOUT.row_h
    RenderPlayerRow(nil, cursor)
    cursor = cursor + LAYOUT.row_h
    RenderPlayerRow(nil, cursor)
    cursor = cursor + LAYOUT.row_h
    
    RenderHeaderSection("Arch Mother", cursor, COLORS.GAME.mother)
    
    cursor = cursor + LAYOUT.section_h

    RenderPlayerRow(nil, cursor)
    cursor = cursor + LAYOUT.row_h
    RenderPlayerRow(nil, cursor)
    cursor = cursor + LAYOUT.row_h
    RenderPlayerRow(nil, cursor)
    cursor = cursor + LAYOUT.row_h
    RenderPlayerRow(nil, cursor)
    cursor = cursor + LAYOUT.row_h
    RenderPlayerRow(nil, cursor)
    cursor = cursor + LAYOUT.row_h
    RenderPlayerRow(nil, cursor)
    cursor = cursor + LAYOUT.row_h

    RenderFooterSection(cursor)
end


callback.on_draw:set(function ()
    if not MENU.visible then return end
    RenderWindow()
end)

callback.on_key_event:set(function (data)
    if data.event == Enum.KeyEvent.KEY_DOWN then
        if data.key == Enum.ButtonCode.KEY_DELETE then
            MENU.visible = not MENU.visible
        end
    end
end)
