function ls --wraps='exa --icons --color=always --group-directories-first' --description 'alias ls exa --icons --color=always --group-directories-first'
  exa --icons --color=always --group-directories-first $argv
        
end
