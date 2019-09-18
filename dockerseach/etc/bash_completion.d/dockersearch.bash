function getIpList(){
echo $(python  << EOF
import json
with open("/etc/docker/daemon.json",'r') as f:
	json = json.loads(f.read())
	ipAddrs = json['insecure-registries']

for ipaddr in ipAddrs:
	print ipaddr+'/',
EOF
)
}

function _dockersearch(){
	COMPREPLY=()
	local cur=${COMP_WORDS[COMP_CWORD]};
	local com=${COMP_WORDS[COMP_CWORD-1]};
	case $com in
		'dockersearch')
			local iplist=$(getIpList)
			compopt -o nospace
			COMPREPLY=($(compgen -W '${iplist[@]}' -- $cur)) ;;
		*)
			;;
		esac
		return 0
}

complete -F _dockersearch dockersearch