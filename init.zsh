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

#  Environment:	 STORYBOOK_URL
######################################################################
#<
#
# Function: p6df::modules::storybook::mcp::env()
#
#  Environment:	 STORYBOOK_URL
#>
#/ Synopsis
#/    Maps Storybook env vars to MCP-specific vars
#/
######################################################################
p6df::modules::storybook::mcp::env() {

  if p6_string_blank "$STORYBOOK_URL"; then
    p6_env_export "STORYBOOK_URL" "http://localhost:6006"
  fi

  p6_return_void
}
