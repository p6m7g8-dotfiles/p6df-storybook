# P6's POSIX.2: p6df-storybook

## Table of Contents

- [Badges](#badges)
- [Summary](#summary)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)
- [Usage](#usage)
  - [Functions](#functions)
- [Hierarchy](#hierarchy)
- [Author](#author)

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

## Summary

Integrates Storybook into the p6df shell framework. Sets a default `STORYBOOK_URL` at
shell init and installs the Storybook MCP server.

## Contributing

- [How to Contribute](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Functions

#### p6df-storybook

##### p6df-storybook/init.zsh

- `p6df::modules::storybook::deps()`
- `p6df::modules::storybook::init(_module, dir)`
  - Args:
    - _module
    - dir
- `p6df::modules::storybook::mcp()`
  - Synopsis: Installs Storybook MCP server

## Hierarchy

```text
.
├── init.zsh
└── README.md

1 directory, 2 files
```

## Author

Philip M. Gollucci <pgollucci@p6m7g8.com>
