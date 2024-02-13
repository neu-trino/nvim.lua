vim.g.netrw_banner = 0

-- auto-reload files when modified externally
-- https://unix.stackexchange.com/a/383044
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
	command = "if mode() != 'c' | checktime | endif",
	pattern = { "*" },
})

-- vim.api.nvim_create_autocmd("BufWritePre", {
-- 	callback = function()
-- 		--		local context = { source = { organizeImports = true } }
-- 		--		vim.validate({ context = { context, "t", true } })
-- 		--		local params = vim.lsp.util.make_range_params()
-- 		--		params.context = context
-- 		--
-- 		--		local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, 2000)
-- 		--
-- 		--		print(vim.inspect(result))
--
-- 		vim.lsp.buf.execute_command({
-- 			command = "_typescript.organizeImports",
-- 			arguments = {
-- 				vim.fn.expand("% =p"),
-- 			},
-- 		})
-- 	end,
-- 	group = vim.api.nvim_create_augroup("lsp", { clear = true }),
-- 	pattern = { "*.js", "*.jsx", "*.ts", "*.tsx" },
-- })
