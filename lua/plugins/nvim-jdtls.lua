return {
  "mfussenegger/nvim-jdtls",
  ft = { "java" },
  config = function()
    -- local jdtls = require("jdtls")
    -- local home = os.getenv("HOME")
    -- local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
    -- local workspace_dir = home .. "/.local/share/eclipse/" .. project_name
    local jdtls_path = vim.fn.stdpath("data") .. "/mason/packages/jdtls"
    local launcher_path = jdtls_path .. "/plugins/org.eclipse.equinox.launcher_1.7.0.v20250331-1702.jar"

    require('jdtls').start_or_attach({
      cmd = {
        'java',
        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        '-Dosgi.bundles.defaultStartLevel=4',
        '-Declipse.product=org.eclipse.jdt.ls.core.product',
        '-Dlog.level=ALL',
        '-noverify',
        '-Xmx1G',
        '-jar', launcher_path,
        '-configuration', jdtls_path .. '/config_linux', -- adjust for your OS
        '-data', vim.fn.stdpath('cache') .. '/jdtls-workspace'
      },
      root_dir = require('jdtls.setup').find_root({'.git', 'build.gradle', 'pom.xml'}),
    })

  end,
}

