#-- START ZCACHE GENERATED FILE
#-- GENERATED: Mon  2 Mar 2020 23:07:50 GMT
#-- ANTIGEN v2.2.3
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/usr/local/Cellar/antigen/2.2.3/share/antigen/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /Users/deanbevan/.antigen/bundles/webyneter/docker-aliases /Users/deanbevan/.antigen/bundles/mattberther/zsh-pyenv /Users/deanbevan/.antigen/bundles/sroze/docker-compose-zsh-plugin /Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /Users/deanbevan/.antigen/bundles/laggardkernel/git-ignore /Users/deanbevan/.antigen/bundles/laggardkernel/git-ignore/functions /Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku /Users/deanbevan/.antigen/bundles/decayofmind/zsh-iterm2-utilities /Users/deanbevan/.antigen/bundles/laggardkernel/zsh-iterm2 /Users/deanbevan/.antigen/bundles/droctothorpe/kubecolor /Users/deanbevan/.antigen/bundles/mattbangert/kubectl-zsh-plugin /Users/deanbevan/.antigen/bundles/Dbz/kube-aliases /Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein /Users/deanbevan/.antigen/bundles/marzocchi/zsh-notify /Users/deanbevan/.antigen/bundles/srijanshetty/node.plugin.zsh /Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew /Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/gem /Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/node /Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker /Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/ssh-agent /Users/deanbevan/.antigen/bundles/denysdovhan/spaceship-prompt /Users/deanbevan/.antigen/bundles/zsh-users/zsh-syntax-highlighting) path+=(/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /Users/deanbevan/.antigen/bundles/webyneter/docker-aliases /Users/deanbevan/.antigen/bundles/mattberther/zsh-pyenv /Users/deanbevan/.antigen/bundles/sroze/docker-compose-zsh-plugin /Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /Users/deanbevan/.antigen/bundles/laggardkernel/git-ignore /Users/deanbevan/.antigen/bundles/laggardkernel/git-ignore/functions /Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku /Users/deanbevan/.antigen/bundles/decayofmind/zsh-iterm2-utilities /Users/deanbevan/.antigen/bundles/laggardkernel/zsh-iterm2 /Users/deanbevan/.antigen/bundles/droctothorpe/kubecolor /Users/deanbevan/.antigen/bundles/mattbangert/kubectl-zsh-plugin /Users/deanbevan/.antigen/bundles/Dbz/kube-aliases /Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein /Users/deanbevan/.antigen/bundles/marzocchi/zsh-notify /Users/deanbevan/.antigen/bundles/srijanshetty/node.plugin.zsh /Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew /Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/gem /Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/node /Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker /Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/ssh-agent /Users/deanbevan/.antigen/bundles/denysdovhan/spaceship-prompt /Users/deanbevan/.antigen/bundles/zsh-users/zsh-syntax-highlighting)
_antigen_compinit () {
  autoload -Uz compinit; compinit -i -d "/Users/deanbevan/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh" ]]; then
  ZSH="/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh"; ZSH_CACHE_DIR="/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/cache/"
fi
#--- BUNDLES BEGIN
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh';
source '/Users/deanbevan/.antigen/bundles/webyneter/docker-aliases/docker-aliases.plugin.zsh';
source '/Users/deanbevan/.antigen/bundles/mattberther/zsh-pyenv/zsh-pyenv.plugin.zsh';
source '/Users/deanbevan/.antigen/bundles/sroze/docker-compose-zsh-plugin/docker-compose.plugin.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh';
source '/Users/deanbevan/.antigen/bundles/laggardkernel/git-ignore/git-ignore.plugin.zsh';
source '/Users/deanbevan/.antigen/bundles/laggardkernel/git-ignore/init.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku/heroku.plugin.zsh';
source '/Users/deanbevan/.antigen/bundles/decayofmind/zsh-iterm2-utilities/iterm2-utils.plugin.zsh';
source '/Users/deanbevan/.antigen/bundles/laggardkernel/zsh-iterm2/init.zsh';
source '/Users/deanbevan/.antigen/bundles/droctothorpe/kubecolor/kubecolor.plugin.zsh';
source '/Users/deanbevan/.antigen/bundles/Dbz/kube-aliases/kube-aliases.plugin.zsh';
source '/Users/deanbevan/.antigen/bundles/marzocchi/zsh-notify/notify.plugin.zsh';
source '/Users/deanbevan/.antigen/bundles/srijanshetty/node.plugin.zsh/init.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew/brew.plugin.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/gem/gem.plugin.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/node/node.plugin.zsh';
source '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/ssh-agent/ssh-agent.plugin.zsh';
source '/Users/deanbevan/.antigen/bundles/denysdovhan/spaceship-prompt/spaceship.zsh';
source '/Users/deanbevan/.antigen/bundles/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/command-not-found plugin true' 'https://github.com/webyneter/docker-aliases.git / plugin true' 'https://github.com/mattberther/zsh-pyenv.git / plugin true' 'https://github.com/sroze/docker-compose-zsh-plugin.git / plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true' 'https://github.com/laggardkernel/git-ignore.git / plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/heroku plugin true' 'https://github.com/decayofmind/zsh-iterm2-utilities.git / plugin true' 'https://github.com/laggardkernel/zsh-iterm2.git / plugin true' 'https://github.com/droctothorpe/kubecolor.git / plugin true' 'https://github.com/mattbangert/kubectl-zsh-plugin.git / plugin true' 'https://github.com/Dbz/kube-aliases.git / plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/lein plugin true' 'https://github.com/marzocchi/zsh-notify.git / plugin true' 'https://github.com/srijanshetty/node.plugin.zsh.git / plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/antigen plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/brew plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/brew-cask plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/gem plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/node plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/docker plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/ssh-agent plugin true' 'https://github.com/denysdovhan/spaceship-prompt.git / theme true' 'https://github.com/zsh-users/zsh-syntax-highlighting.git / plugin true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh' '/Users/deanbevan/.antigen/bundles/webyneter/docker-aliases//' '/Users/deanbevan/.antigen/bundles/webyneter/docker-aliases///docker-aliases.plugin.zsh' '/Users/deanbevan/.antigen/bundles/mattberther/zsh-pyenv//' '/Users/deanbevan/.antigen/bundles/mattberther/zsh-pyenv///zsh-pyenv.plugin.zsh' '/Users/deanbevan/.antigen/bundles/sroze/docker-compose-zsh-plugin//' '/Users/deanbevan/.antigen/bundles/sroze/docker-compose-zsh-plugin///docker-compose.plugin.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh' '/Users/deanbevan/.antigen/bundles/laggardkernel/git-ignore//' '/Users/deanbevan/.antigen/bundles/laggardkernel/git-ignore///git-ignore.plugin.zsh' '/Users/deanbevan/.antigen/bundles/laggardkernel/git-ignore///init.zsh' '/Users/deanbevan/.antigen/bundles/laggardkernel/git-ignore////functions' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku/heroku.plugin.zsh' '/Users/deanbevan/.antigen/bundles/decayofmind/zsh-iterm2-utilities//' '/Users/deanbevan/.antigen/bundles/decayofmind/zsh-iterm2-utilities///iterm2-utils.plugin.zsh' '/Users/deanbevan/.antigen/bundles/laggardkernel/zsh-iterm2//' '/Users/deanbevan/.antigen/bundles/laggardkernel/zsh-iterm2///init.zsh' '/Users/deanbevan/.antigen/bundles/droctothorpe/kubecolor//' '/Users/deanbevan/.antigen/bundles/droctothorpe/kubecolor///kubecolor.plugin.zsh' '/Users/deanbevan/.antigen/bundles/mattbangert/kubectl-zsh-plugin//' '/Users/deanbevan/.antigen/bundles/Dbz/kube-aliases//' '/Users/deanbevan/.antigen/bundles/Dbz/kube-aliases///kube-aliases.plugin.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein' '/Users/deanbevan/.antigen/bundles/marzocchi/zsh-notify//' '/Users/deanbevan/.antigen/bundles/marzocchi/zsh-notify///notify.plugin.zsh' '/Users/deanbevan/.antigen/bundles/srijanshetty/node.plugin.zsh//' '/Users/deanbevan/.antigen/bundles/srijanshetty/node.plugin.zsh///node.plugin.zsh' '/Users/deanbevan/.antigen/bundles/srijanshetty/node.plugin.zsh///init.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/antigen' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew/brew.plugin.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew-cask' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/gem' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/gem/gem.plugin.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/node' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/node/node.plugin.zsh' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/ssh-agent' '/Users/deanbevan/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/ssh-agent/ssh-agent.plugin.zsh' '/Users/deanbevan/.antigen/bundles/denysdovhan/spaceship-prompt//' '/Users/deanbevan/.antigen/bundles/denysdovhan/spaceship-prompt///spaceship.zsh-theme' '/Users/deanbevan/.antigen/bundles/zsh-users/zsh-syntax-highlighting//' '/Users/deanbevan/.antigen/bundles/zsh-users/zsh-syntax-highlighting///zsh-syntax-highlighting.plugin.zsh')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.3'

#-- END ZCACHE GENERATED FILE
