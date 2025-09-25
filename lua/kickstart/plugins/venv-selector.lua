return {
  'linux-cultist/venv-selector.nvim',
  dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap-python' },
  opts = {
    search_workspace = false, -- Disable workspace search (Miniconda venvs are not inside project folders)
    search_venv_managers = true, -- Keep searching for venv managers like pyenv and poetry
    parents = 0, -- Don't go up parent directories, just search the specified path
    path = '/opt/homebrew/Caskroom/miniconda/base/envs', -- Path to your Miniconda environments
    anaconda_base_path = '/opt/homebrew/Caskroom/miniconda', -- Base path for Miniconda
    anaconda_envs_path = '/opt/homebrew/Caskroom/miniconda/base/envs', -- Where Miniconda stores environments
    name = { 'venv', '.venv', 'env', '.env' }, -- Add "conda" if needed
    fd_binary_name = 'fd', -- Ensure `fd` is being used for fast searching
    stay_on_this_version = true,
  },
  event = 'VeryLazy', -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
  keys = {
    -- Keymap to open VenvSelector to pick a venv.
    { '<leader>vs', '<cmd>VenvSelect<cr>' },
    -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
    { '<leader>vc', '<cmd>VenvSelectCached<cr>' },
  },
}
