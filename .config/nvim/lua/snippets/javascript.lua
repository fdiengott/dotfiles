local luasnip = require 'luasnip'
local snippet = luasnip.snippet
local text = luasnip.text_node
local insert = luasnip.insert_node

-- https://github.com/L3MON4D3/LuaSnip/blob/master/DOC.md#loaders
luasnip.add_snippets("javascript", {
    snippet("cc", {
        text("console.count("),
        insert(1),
        text(");"),
    }),
})
