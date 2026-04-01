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

  p6df::modules::anthropic::mcp::server::add "storybook" "npx" "-y" "storybook-mcp"
  p6df::modules::openai::mcp::server::add "storybook" "npx" "-y" "storybook-mcp"

  p6_return_void
}

######################################################################
#<
#
# Function: words storybook $STORYBOOK_URL = p6df::modules::storybook::profile::mod()
#
#  Returns:
#	words - storybook $STORYBOOK_URL
#
#  Environment:	 STORYBOOK_URL
#>
######################################################################
p6df::modules::storybook::profile::mod() {

  p6_return_words 'storybook' "$"
}
