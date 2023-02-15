;; From MDeiml/tree-sitter-markdown
;; https://github.com/nvim-treesitter/nvim-treesitter/blob/master/queries/markdown_inline/highlights.scm
[
  (code_span)
  (link_title)
] @text.literal

[
  (emphasis_delimiter)
  (code_span_delimiter)
] @punctuation.delimiter

(emphasis) @text.emphasis

(strong_emphasis) @text.strong

(strikethrough) @text.strike

[
  (link_destination)
  (uri_autolink)
] @text.uri

[
  (link_label)
  (link_text)
  (image_description)
] @text.reference

[
  (backslash_escape)
  (hard_line_break)
] @string.escape

; "(" not part of query because of
; https://github.com/nvim-treesitter/nvim-treesitter/issues/2206
; TODO: Find better fix for this
(image ["!" "[" "]" "(" ")"] @punctuation.delimiter)
(inline_link ["[" "]" "(" ")"] @punctuation.delimiter)
(shortcut_link ["[" "]"] @punctuation.delimiter)

; Conceal codeblock and text style markers
; ([
;   (code_span_delimiter)
;   (emphasis_delimiter)
; ] @conceal
; (#set! conceal ""))

; Conceal inline links
; (inline_link
;   [
;     "["
;     "]"
;     "("
;     (link_destination)
;     ")"
;   ] @conceal
;   (#set! conceal ""))

; Conceal image links
; (image
;   [
;     "!"
;     "["
;     "]"
;     "("
;     (link_destination)
;     ")"
;   ] @conceal
;   (#set! conceal ""))

; Conceal full reference links
; (full_reference_link
;   [
;     "["
;     "]"
;     (link_label)
;   ] @conceal
;   (#set! conceal ""))

; Conceal collapsed reference links
; (collapsed_reference_link
;   [
;     "["
;     "]"
;   ] @conceal
;   (#set! conceal ""))

; Conceal shortcut links
; (shortcut_link
;   [
;     "["
;     "]"
;   ] @conceal
;   (#set! conceal ""))

