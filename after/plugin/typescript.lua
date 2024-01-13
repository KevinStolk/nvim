local status, ts = pcall(require, "typescript-tools")
if not status then
    return
end

ts.setup({})
