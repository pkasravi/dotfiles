--[[ plug.lua ]]

-- add packer so we can use it
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'williamboman/mason.nvim'    
    use 'williamboman/mason-lspconfig.nvim'
end)
