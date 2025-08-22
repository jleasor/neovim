return {
  "nvim-treesitter/nvim-treesitter",branch='master',lazy=false, build =':TSUpdate',
  opts = {ensure_installed={"go","gomod","gowork","gosum"}}
}
