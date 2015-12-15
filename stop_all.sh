#!/bin/sh

kill -9 $(ps aux | grep [f]lash_tcp | awk '{print $2}')

#kill -9 $(ps aux | grep [f]lash_multi | awk '{print $2}')
