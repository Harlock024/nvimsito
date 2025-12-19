local signs = {
    Error = " ",
    Warn = " ",
    Hint = " ",
    Info = " "
}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
    -- Muestra los diagnósticos como texto virtual al final de la línea
    virtual_text = true,
    -- Muestra íconos en el gutter
    signs = true,
    -- Subraya el error
    underline = true,
    -- Actualiza los diagnósticos mientras escribes
    update_in_insert = true,
    severity_sort = true,
    -- Configura el pop-up que aparece al pasar el cursor
    float = {
        source = "always", -- Muestra siempre la fuente (ej: eslint)
        header = "",
        prefix = "",
    },
})
