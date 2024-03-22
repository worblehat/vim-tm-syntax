I often take notes in plain text files that have some minimal structure but don't adhere to any
common format. They are also not intended to be rendered to HTML or anything but only viewed as
plain text.
This Vim plugin provides syntax highlighting for these files.

The file extension is `.tm`.

Highlighted elements are:

* headings (`# ...`)
* lists (`*`, `-`, `1.`)
* inlined code (`` `...` ``)
* code blocks (`> ...`)
* inline comments in code blocks (`#...`, `//...`)
* links (`https://...`)
* emphasized words (`*...*`)
* special words (`TODO`, `FIXME`, `NOTE`)
* options (`<...>`)

