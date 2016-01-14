#!/bin/sh

kill -9 $(ps aux | grep [z]ack | awk '{print $2}')

kill -9 $(ps aux | grep [x]eon | awk '{print $2}')

kill -9 $(ps aux | grep [c]ath | awk '{print $2}')
