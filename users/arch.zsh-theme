function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

PROMPT='%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%})%n%{$fg_bold[white]%}@%(!.%{$fg_bold[magenta]%}.%{$fg_bold[cyan]%})%m%{$fg_bold[white]%}:%{$fg_bold[yellow]%}%~ %{$fg_bold[white]%}$(git_prompt_info)%_$(prompt_char)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
