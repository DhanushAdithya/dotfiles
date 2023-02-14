local lualine_loaded, lualine = pcall(require, "lualine")

if not lualine_loaded then
    print("lualine not loaded")
    return
end

lualine.setup({
    options = {
        icons_enabled = true,
        theme = "onedark",
        component_separators = "",
        section_separators = "",
        always_divide_middle = true,
        globalstatus = true,
    },
})
