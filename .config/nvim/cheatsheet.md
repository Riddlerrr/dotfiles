# LazyVim cheatsheet

## Basics

### Formula

`<action><scope><object>`

Examples:

viw - select current word (select in word)
ciq - change current quote (change in quotes)
yii - yank/copy everything with the same indention level connected

### Actions

v - select
V - select line
y - yank (copy)
c - change
d - delete

### Scopes

a - around
i - inside

### Objects

w - word
p - paragraph
s - sentence
q - quote
b - brackets
o - block
t - tag
i - indention level
W - whitespace

## Advanced/Plugins

### Surround

`g s` - start of using surround plugin
`g s a a w "` - add quotes around the current word (go surround add around word ")
`g s d "` - delete current surrounding quotes
`g s r " '` - replace current surrounding quotes with single quotes

### Comment/format

`g c c` - comment current line
`space c f` - format current file

<!-- TODO: add `g c a` command to add comment to the current line 
           or fix `gcc` by adding comment to empty line -->

### Advanced motions

`g d` - go to definition
`space s s` - go to symbol in the current file
`z z` - center the current line
`z a` - toggle fold (свернуть/развернуть)
`ctrl-o` - go back (useful after go to definition or other jumps)
`' '` - go to the last position and go back again if pressed again
`V >` - indent selected lines

### Selection

`ctrl space` (normal mode) - increment selection
`backspace` - decrement selection (opposite action)

### Git

`space g g` - open lazygit

### Other

`ctrl-a` - increment number under the cursor
`ctrl-x` - decrement number under the cursor
`*` - search for the word under the cursor
`#` - search for the word under the cursor backwards
`~` - toggle case of the character under the cursor
`space s n a` - show all errors and warnings
