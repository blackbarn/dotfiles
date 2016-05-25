# Rm/Del
alias del "rmtrash"
# Get latest container ID
alias dl "docker ps -l -q"

# Get container process
alias dps "docker ps"

# Get process included stop container
alias dpa "docker ps -a"

# Get images
alias di "docker images"

# Get container IP
alias dip "docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# Run deamonized container, e.g., $dkd base /bin/echo hello
alias dkd "docker run -d -P"

# Run interactive container, e.g., $dki base /bin/bash
alias dki "docker run -i -t -P"

# Execute interactive container, e.g., $dex base /bin/bash
alias dex "docker exec -i -t"

# Docker Compose alias
alias dc "docker-compose"
complete --command dc --wraps docker-compose
#compdef dc=docker-compose

# Docker Machine alias
alias dm "docker-machine"
complete --command dm --wraps docker-machine
# Stop and Remove all containers
#alias drmf 'command "docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)"'

# Remove all <none> images:
alias diclean 'docker images | grep '\''<none>'\'' | grep -P '\''[1234567890abcdef]{12}'\'' -o | xargs -L1 docker rmi'

# Run spotify's docker garbage collector
alias dgc 'docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v /etc:/etc spotify/docker-gc'
