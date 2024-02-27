// SYNTAX TEST "Packages/Cuelang Syntax/cue.sublime-syntax"

// ********** Comments **********
// foo
// ^ source.cue comment.line
// <- punctuation.definition.comment


// ********** Packages **********
package test
// ^ source.cue meta.namespace
// <- keyword.declaration.namespace
//      ^ entity.name.namespace

import "pkg/dev"
// <- source.cue keyword.control.import

import (
        "pkg/dev"
//      ^ punctuation.definition.string.begin.cue
//       ^ string.quoted.double
//              ^ punctuation.definition.string.end.cue
        rename "pkg/other:identifier"
//              ^ string.quoted.double
)


// ********** Attributes **********
@json(hello)
// <- source.cue punctuation.definition.annotation
// ^ meta.annotation.identifier
//    ^ meta.annotation.parameters


// ********** Literals **********
// It is technically to valid to have those here,
// We are only detecting elements to highlight in the syntax parser, not parsing the full language as per the specification.

true false null  _  _|_
// <- source.cue constant.language
//    ^ constant.language
//          ^ constant.language
//               ^ constant.language
//                  ^ constant.language

int uint8 string
// <- source.cue support.type.builtin
//    ^ support.type.builtin
//          ^ support.type.builtin

name?: int
// <- source.cue
//     ^ support.type.builtin

+  ||  <  <=
// <- source.cue keyword.operator
// ^ keyword.operator
//     ^ keyword.operator
//        ^ keyword.operator
for in if let
// <- source.cue keyword.control
//  ^ keyword.control
//     ^ keyword.control
//        ^ keyword.control

// *** Strings ***
"string"
// <- punctuation.definition.string.begin
// ^ meta.string string.quoted.double
//     ^ punctuation.definition.string.end

"unicode: \u0001 \U0001F60A"
//        ^ constant.character.escape.unicode.16bit
//               ^ constant.character.escape.unicode.32bit

"\' \n \#a"
//^ constant.character.escape
//  ^ constant.character.escape
//     ^ constant.character.escape

'\x03abc\#777'
// <- meta.string string.quoted.single
//^ constant.character.escape.hex.cue
//      ^ constant.character.escape.octal.cue

"Hello \(name)"
//     ^ meta.interpolation punctuation.section.interpolation.begin
//       ^ source.cue.embedded 
//           ^ punctuation.section.interpolation.end
//            ^ punctuation.definition.string.end

"""
This is a multiline string
"""
// <- meta.string string.quoted.triple
//^ punctuation.definition.string.end

'''
Bytes multiline string
'''
// <- meta.string string.quoted.triple
//^ punctuation.definition.string.end

#"avoid using \ to "escape""#
// <- punctuation.definition.string.begin
// ^ meta.string string.quoted.other


// *** Numbers ***
42
// <- meta.number.integer.decimal constant.numeric.value

123.4Ki
// <- meta.number.integer.decimal constant.numeric.value
// ^ punctuation.separator.decimal

329.14e4 // Need to readjust backtrack for first portion of float
// <- meta.number.integer.decimal constant.numeric.value
// ^ punctuation.separator.decimal
//  ^ meta.number.float.decimal constant.numeric.value

0xBad_Face
// <- meta.number.integer.hexadecimal constant.numeric.base
// ^ constant.numeric.value

0o755
// <- meta.number.integer.octal constant.numeric.base
// ^ constant.numeric.value

0b0101_0001
// <- meta.number.integer.binary constant.numeric.base
// ^ constant.numeric.value


// ********** Declarations **********
net.IPv4
// <- source.cue variable.other

_test
// <- source.cue variable.other

_test
// <- source.cue variable.other

// *** Built-in functions ***
len()
// <- meta.function-call support.function

// *** Functions ***
hello(abc)
// <- meta.function-call variable.function

