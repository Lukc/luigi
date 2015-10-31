local RESOURCE = (...):gsub('%.', '/') .. '/'

return function (config)
    config = config or {}

    local backColor = config.backColor or { 240, 240, 240 }
    local lineColor = config.lineColor or { 220, 220, 220 }
    local white = config.white or { 255, 255, 255 }
    local highlight = config.highlight or { 180, 180, 255 }

    return {
        button = {
            align = 'center middle',
            padding = 6,
            slices = RESOURCE .. 'button.png',
            minimumWidth = 24,
            minimumHeight = 24,
            canFocus = true
        },
        button_hovered = {
            slices = RESOURCE .. 'button_hovered.png'
        },
        button_focused = {
            slices = RESOURCE .. 'button_focused.png',
        },
        button_pressed = {
            slices = RESOURCE .. 'button_pressed.png',
        },
        sash = {
            background = lineColor
        },
        sash_hovered = {
            background = highlight
        },
        slider = {
            slices = RESOURCE .. 'button_pressed.png',
            padding = 0,
            minimumWidth = 24,
            minimumHeight = 24
        },
        panel = {
            background = backColor,
        },
        progress = {
            slices = RESOURCE .. 'button_pressed.png',
            padding = 0,
            minimumWidth = 24,
            minimumHeight = 24
        },
        progressInner = {
            slices = RESOURCE .. 'progress.png',
            padding = 0,
            minimumWidth = 12,
        },
        slider_hovered = {
        },
        stepper = {
        },
        text = {
            align = 'left middle',
            slices = RESOURCE .. 'text.png',
            padding = 6,
            minimumWidth = 24,
            minimumHeight = 24,
            canFocus = true,
        },
        text_focused = {
            slices = RESOURCE .. 'text_focused.png',
        },
    }

end
