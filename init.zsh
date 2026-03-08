# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::storybook::deps()
#
#>
######################################################################
p6df::modules::storybook::deps() {

  # shellcheck disable=2034
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-js
  )
}

######################################################################
#<
#
# Function: p6df::modules::storybook::mcp()
#
#>
#/ Synopsis
#/    Installs Storybook MCP server
#/
######################################################################
p6df::modules::storybook::mcp() {

  p6_js_npm_global_install "storybook-mcp"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::storybook::init(_module, dir)
#
#  Args:
#	_module -
#	dir -
#
#  Environment:	 STORYBOOK_URL
#>
######################################################################
p6df::modules::storybook::init() {
  local _module="$1"
  local dir="$2"

  if p6_string_blank "$STORYBOOK_URL"; then
    p6_env_export "STORYBOOK_URL" "http://localhost:6006"
  fi

  p6_return_void
}
