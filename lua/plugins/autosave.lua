return {
    "okuuva/auto-save.nvim",
    cmd = "AutoSaveToggle",
    event = { "User LazyFile", "InsertLeave" },
    opts = {
        enabled = true,
        execution_message = {
            message = function()
            return ("AutoSave: opgeslagen!")
            end,
        },
        trigger_events = {
            immediate_save = { "BufLeave", "FocusLost", "QuitPre" },
            defer_save = { "InsertLeave", "TextChanged" },
        },
    },
}
