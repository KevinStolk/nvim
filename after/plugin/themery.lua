local status_ok, themery = pcall(require, "themery")
if not status_ok then
    return
end

themery.setup({
    themes = { "rose-pine", "gruvbox", "tokyonight", "darkplus", "catppuccin", "cyberdream", "pompeii", "kanagawa-wave", "kanagawa-dragon", "kanagawa-lotus" },
    themeConfigFile = "~/.config/nvim/lua/kevin/theme.lua",
    livePreview = true,
})
