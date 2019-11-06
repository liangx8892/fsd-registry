#bin/bash
containerid=$(docker ps -a -q -f name=$1)
if [[ -n "$containerid" ]]; then
	docker rm -f $containerid
else
	echo 'container not exists'
fi
