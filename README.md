
## Usage

set `<Plug>(operator-codic)` on your keymap.

### Example

```viml

NeoBundleLazy 'hachibeeDI/vim-operator-codic', {
\ 'autoload': {
\   'mappings' : '<Plug>',
\ }}

map x <Plug>(operator-codic)

```


## Requirements

- https://github.com/kana/vim-operator-user

- https://github.com/koron/codic-vim
