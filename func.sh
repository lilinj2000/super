#! /bin/sh

initEnv () {
    if [ -d /d/docker_home ]; then
	v_path=/d/docker_home
    else
	v_path=~
    fi
}

initEnv