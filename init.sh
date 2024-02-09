#!/bin/bash
declare -r message="\n$(tput setaf 3)Application php avec Docker$(tput setaf 0)\n"
echo -e $message

show_docker_info() {
    echo "-----------conteneurs actifs--------------"
    docker compose ps
    echo "------------images existantes en local------------------------------"
    docker image ls
}

create_service(){
    echo "$(tput setaf 3)Voulez-vous créer le service MySQL ? (oui/non)$(tput setaf 0)"
    read
    if [[ "$REPLY" = "oui" ]]; then
        docker compose up -d
    fi
}

stop_service() {
    echo "$(tput setaf 3)Voulez-vous arrêter le service MySQL ? (oui/non)$(tput setaf 0)"
    read answer
    if [[ "$answer" = "oui" ]]; then
        docker compose stop
    fi
}

delete_service() {
    echo "$(tput setaf 3)Voulez-vous supprimer le service MySQL et les voluments afférents ? (oui/non)$(tput setaf 0)"
    read down
    if [[ "$down" = "oui" ]]; then
        docker compose down --volumes
    fi
}

service_handler() {
    show_docker_info
    create_service
    stop_service
    delete_service
}

service_handler
