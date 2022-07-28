
Code status:
------------

## TrustSQLEnv (TrustSQL Environment)

TrustSQLEnv is an envrionment for deploy and use Relational Distriuted Ledgers.
It consists of TOSS(Trusted Ordering-Stamping Server) , DNOM (Distributed Node Manager) and Demo Applications.

## TOSS (Trusted Ordering-Stamping Server) 
TOSS is single point of receipt for all user tranactions.
It works as a total ordering broadcaster and also message server.
Trusted means it includes singnature stamp of trusted authorigy.

## DNOM (Distributed Node Manager)
DNOM is an agent to subscribe messages from TOSS and insert it into TrustSQL.

## Demo Applications.
You can find how it works and what can you do with it.


Build:
--------

#### set env path.
If you download TrustSQLEnv at @HOME/TrustSQLEnv
export RDLMSPATH=$HOME/TrustSQLEnv
export RDLMSBIN=$RDLMSPATH/bin
export PATH=$PATH:$RDLMSBIN


Run:
--------

#### deploy helper.
>deployhelper

#### Wallet Manager
>wallet

#### TOSS
/nodes/toss_name/toss [config_file]

#### DNOM
/nodes/dnom_name/dnom [config_file]

#### DNOM
/demo/demo [demo_no]


! Please note, TrustSQL must be installed when you run DNOM


Who we are:
----------
TrustDB inc, is a distributed ledger technology company in South, Korea.
 

Help:
-----
If you need any help please send me an e-mail.
booltaking@gmail.com


License:
--------

***************************************************************************

NOTE: 

TrustSQL is specifically available only under version 2 of the GNU
General Public License (GPLv2). (I.e. Without the "any later version"
clause.) This is inherited from MariaDB.

***************************************************************************
