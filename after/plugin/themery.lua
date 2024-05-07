local status_ok, themery = pcall(require, "themery")
if not status_ok then
    return
end

themery.setup({
    themes = { "rose-pine", "gruvbox", "tokyonight", "darkplus", "catppuccin", "cyberdream", "pompeii" },
    themeConfigFile = "~/.config/nvim/lua/kevin/theme.lua",
    livePreview = true,
})
