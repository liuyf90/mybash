#!/bin/bash
select server in $(sed -n "s/^Host \(.*\)/\1/p" ~/.ssh/config) ; 
  do [[ $server ]] && ssh $server ; 
    break ; 
  done
 
