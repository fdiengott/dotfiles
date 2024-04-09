local luasnip = require 'luasnip'
local snippet = luasnip.snippet
local text = luasnip.text_node
local insert = luasnip.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep -- this will repeat whatever is in the corresponding insert
local fmt = require("luasnip.extras.fmt").fmt

local snippets = {
    snippet({ trig = "count", name = "console.count" }, {
        text("console.count("),
        insert(1),
        text(");"),
    }),
    snippet({ trig = "log", name = "console.log" }, {
        text("console.log("),
        insert(1),
        text(");"),
    }),
    snippet({ trig = "raf", name = "react arrow function" },
        fmt("const {} = ({}) => {{\n\t{}\n}};", { insert(1), insert(2), insert(3) })),
    -- snippet("impt", fmt("import {{{}}} from 'propt-types';"), { insert(1) }),
    snippet({ trig = "impd", name = "import destructured" }, fmt("import {{ {} }} from '{}';", { insert(1), insert(2) })),

}

-- https://github.com/L3MON4D3/LuaSnip/blob/master/DOC.md#loaders
luasnip.add_snippets("javascriptreact", snippets)
luasnip.add_snippets("javascript", snippets)

-- example of repeat
-- luasnip.add_snippets("all", {
--     snippet("test", fmt("local {} = require '{}'", { insert(1), rep(1) })),
-- })
