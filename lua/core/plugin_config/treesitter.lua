require'nvim-treesitter.configs'.setup{
  --A list of parser names
   ensure_installed = {"dart","go","json","java","javascript","lua","markdown","proto","python","regex","rust","solidity","sql","svelte","typescript","vim"},
   sync_install = false,
   auto_install = true,
   highlight = {
     enable = false,
   },
 }
