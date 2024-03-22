return {
  {
    "klen/nvim-test",
    config = function()
      require('nvim-test').setup({
      })

      require('nvim-test.runners.rspec'):setup {
        command = "bundle",
        override_cwd = true,
        arguments = {
          "exec",
          "rspec",
          "--format", "progress",
          "--format", "RspecJunitFormatter",
        },
        is_test = function(file)
          return file:match("_spec%.rb$")
        end,
      }
    end
  }
}
