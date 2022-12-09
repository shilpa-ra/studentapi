#!/bin/bash
 sh 'docker image pull shilpara/studentapi:1.1'
 sh 'docker container run -d -p 8083:80 shilpara/studentapi:1.1'
