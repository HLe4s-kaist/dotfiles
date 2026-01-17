return {
        "goolord/alpha-nvim",
        requires = {"kyazdani42/nvim-web-devicons"},
        config = function()
            local alpha = require("alpha")
            local dashboard = require("alpha.themes.dashboard")

            math.randomseed(os.time())

            local function footer()
                local datetime = os.date("🌅 %Y-%m-%d  🕗 %I%p %M:%S")
                local version = vim.version()
                local nvim_version_info = "  ⭐ v" .. version.major .. "." .. version.minor .. "." .. version.patch

                return "네가 심연을 들여다볼 때, 심연 또한 너를 들여다본다.\n"
		.. datetime .. nvim_version_info
            end

	    dashboard.config.layout[2] = require('config.alphaheader')

            dashboard.section.buttons.val = {
		dashboard.button("r", "󰈢  Recently opened files", "<Cmd>Telescope oldfiles<CR>"),
      		dashboard.button("f", "  Find file", "<Cmd>Telescope find_files<CR>"),
      		dashboard.button("n", "  New file", "<Cmd>ene<CR>"),
      		dashboard.button("p", "󰂖  Plugins", "<Cmd>Lazy<CR>"),
      		dashboard.button("q", "󰅚  Quit", "<Cmd>qa<CR>"),
            }

            dashboard.section.footer.val = footer()
            dashboard.section.footer.opts.hl = "Constant"

            alpha.setup(dashboard.opts)

            vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
        end
    };
