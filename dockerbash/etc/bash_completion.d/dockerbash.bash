function _dockerbash(){
	COMPREPLY=()
	local cur=${COMP_WORDS[COMP_CWORD]};
	local com=${COMP_WORDS[COMP_CWORD-1]};
	case $com in
		'dockerbash')
			local containers=$(docker ps -a -f "status=running" --format "table{{.Names}}"|awk 'NR>1{print}')
			COMPREPLY=($(compgen -W '${containers[@]}' -- $cur)) ;;
		*)
			;;
		esac
		return 0
}

complete -F _dockerbash dockerbash