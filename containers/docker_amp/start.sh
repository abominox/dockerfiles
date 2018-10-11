#!/bin/bash

#./ampinstmgr CreateInstance ADS ADSInstance 0.0.0.0 1500 ${license} ${password} +Core.Login.Username ${username}
#./ampinstmgr StartInstance ADSInstance

/home/AMP/ampinstmgr CreateInstance McMyAdmin MCMA 0.0.0.0 8080 ${license} ${password} +Core.Login.Username ${username}
#/home/AMP/.ampdata/instances/MCMA/AMP_Linux_x86_64 --StartInstance MCMA
/home/AMP/ampinstmgr StartInstance MCMA
/home/AMP/ampinstmgr View MCMA
#/home/AMP/ampinstmgr Attach MCMA

#while true; do sleep 1000; done
