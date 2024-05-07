local status, sunglasses = pcall(require, "sunglasses")
if not status then
    return
end
sunglasses.setup({
    filter_type = "NOSYNTAX",
    filter_percent = 0.65
})
