; extends the default markdown_inline queries
; Fixes NVIM v0.11+ "escaped underscore" bug (e.g., \_init\_)
; This query identifies backslash escapes and forces the backslash to be concealed
((backslash_escape) @string.escape
  ; Offset targets only the first character (the backslash) of the escape sequence
  (#offset! @string.escape 0 0 0 -1)
  ; Set conceal to an empty string so the backslash is hidden when conceallevel > 0
  (#set! conceal ""))
