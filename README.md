# Cuelang syntax

Sublime Text 3 syntax hightling package for [CUE](https://cuelang.org/).  
File extension: `.cue` 

## Usage

Once installed, the `CUE` syntax will be available in the list of file.


## Installation

This package is not in Package Control yet.  
Clone this repository in your local packages folder.  
If you are unsure as to where your local packages directory is, please consult the [docs](https://docs.sublimetext.io/guide/getting-started/basic-concepts.html#the-data-directory).  

Example (on MacOS):

```shell
cd ~/Library/Application\ Support/Sublime\ Text/Packages
git clone git@gitlab.com:patopest/sublime-text-cuelang-syntax.git "Cuelang Syntax"
``` 


## Development

- Clone the repository in your local packages.
- Make edits to the `.sublime-syntax` files, the syntax reloads on save.

### Tests

- Any file with the names starting with `syntax_test_` can be used as a test.
- Open the file and run `Tools > Build` (or `CMD`+`B` on macOS).

Sublime's docs about test files: [here](https://www.sublimetext.com/docs/syntax.html#testing)


### Useful documentation:
- [CUE](https://cuelang.org/)
- [CUE language specification](https://cuelang.org/docs/references/spec/)
- [Sublime Syntax Definitions](https://www.sublimetext.com/docs/syntax.html#testing)
- [Sublime Syntax Scopes](https://www.sublimetext.com/docs/scope_naming.html#)
- [Sublime Community Docs](https://docs.sublimetext.io/guide/extensibility/syntaxdefs.html)