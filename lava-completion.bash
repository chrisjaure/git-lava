#!bash

_lava() {
	local subcommands="flow diverge converge"
	cur="${COMP_WORDS[COMP_CWORD]}"

	local subcommand="$(__git_find_on_cmdline "$subcommands")"
	if [ -z "$subcommand" ]; then
		COMPREPLY=( $(compgen -W "${subcommands}" -- ${cur}) )
		# __gitcomp "$subcommands"
		return
	fi

	case "$subcommand" in
	converge)
		_git_checkout
		return
		;;
	flow)
		_git_checkout
		return
		;;
	diverge)
		_git_checkout
		return
		;;
	*)
		COMPREPLY=()
		;;
	esac
}

complete -F _lava lava