#!/bin/bash
echo -e ""
echo -e "#############################################################"
echo -e "#   Copyright © 2021.11 TrustDB ( www.trust-db.com )        #"
echo -e "#   All rights reserved                                     #"
echo -e "#                                                           #"
echo -e "#   Scripts for deploy nodes for RDLMS                      #"
echo -e "#                                                           #"
echo -e "#   Create Date : 2021/11/14                                #"
echo -e "#############################################################"
echo -e ""

echo -e ""
echo -e "Which node type will you install, DNOM , TOSS or DEMO "

read type

if [ ! -d 'nodes' ]; then
    mkdir nodes
fi    

fullname=""
if [ ${type} = 'dnom' ] || [ ${type} = 'DNOM' ]; then
    echo -e ""
    echo -e "Enter name for DNOM"
    read name
    
    fullname="./nodes/"${name}

    if [ -d ${fullname} ]; then 
        echo -e ${fullname} "is already used."
        exit
    fi

    mkdir ${fullname}
    cp ./res/dnom_config_template.json ${fullname}/${name}.json

    echo -e ""
    echo -e "set " /${fullname}/${name}.json " for your environment and start DNOM !"
    echo -e ""
elif [ ${type} = 'toss' ] || [ ${type} = 'TOSS' ]; then
    echo -e ""
    echo -e "Enter name for TOSS"
    read name

    fullname="./nodes/"${name}

    if [ -d ${name} ]; then 
        echo -e ${name} "is already used."
        exit
    fi

    mkdir ${fullname}
    cp ./res/toss_config_template.json ${fullname}/${name}.json

    echo -e ""
    echo -e "set " /${fullname}/${name}.json " for your environment and start TOSS !"
    echo -e ""

elif [ ${type} = 'demo' ] || [ ${type} = 'DEMO' ]; then
    echo -e ""
        
    if [ -d demo ]; then 
        echo -e "demo is already used."
        exit
    fi

    mkdir  demo
    cp ./res/demo ./demo/
    cp ./res/trustsql.properties ./demo/

    echo -e ""
    echo -e "set /demo/trustsql.properties for your environment !"
    echo -e ""
fi
