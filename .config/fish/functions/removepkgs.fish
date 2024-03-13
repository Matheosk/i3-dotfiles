function removepkgs --wraps=pacman\ -Qq\ \|\ fzf\ --border\ --reverse\ --multi\ --preview\ \'pacman\ -Qi\ \{1\}\'\ \|\ xargs\ -ro\ sudo\ pacman\ -R --description alias\ removepkgs\ pacman\ -Qq\ \|\ fzf\ --border\ --reverse\ --multi\ --preview\ \'pacman\ -Qi\ \{1\}\'\ \|\ xargs\ -ro\ sudo\ pacman\ -R
  pacman -Qq | fzf --border --reverse --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -R $argv
        
end
