
(define-derived-mode fish-mode shell-script-mode
  "fish"
  "major mode for fish shell"
  (setq fish-mode-keywords '("alias" "and" "begin" "bg ""bind" "block" "break"
                           "breakpoint" "builtin" "case" "cd" "command" "commandline"
                           "complete" "contains" "continue" "count" "dirh" "dirs" "echo"
                           "else" "emit" "end" "eval" "exec" "exit" "fg" "fish_config" "fish_indent" "fish_pager"
                           "fish_update_completions" "fishd" "for" "funced" "funcsave" "function"
                           "functions" "help" "history" "if" "isatty" "jobs" "math" "mimedb"
                           "nextd" "not" "open" "or" "popd" "prevd" "psub" "pushd" "pwd" "random"
                           "read" "return" "set" "set_color" "source" "status" "switch" "test"
                           "trap" "type" "ulimit" "umask" "vared" "while"))

  (setq fish-mode-functions '("fish_prompt" "fish_right_prompt" ))

  (setq fish-mode-keywords-regexp (regexp-opt fish-mode-keywords 'words))
  (setq fish-mode-functions-regexp (regexp-opt fish-mode-functions 'words))
  (setq fish-mode-constants-regexp (regexp-opt fish-mode-constants 'words))

  (setq fish-mode-font-lock-keywords `((,fish-mode-keywords-regexp . font-lock-keyword-face)))
  (setq fish-mode-font-lock-functions `((,fish-mode-functions-regexp . font-lock-function-name-face)))
  (setq fish-mode-font-lock-constants `((,fish-mode-constants-regexp . font-lock-constant-face)))


  (setq font-lock-defaults '((fish-mode-font-lock-constants)))
  (setq font-lock-defaults '((fish-mode-font-lock-functions)))
  (setq font-lock-defaults '((fish-mode-font-lock-keywords)))  
  (setq fish-mode-keywords-regexp nil)
  (setq fish-mode-constants-regexp nil)
  (setq fish-mode-functions-regexp nil)

  (provide 'fish-mode))

