# Eleonline on Docker (Beta)

Docker script per l'avvio di una istanza del software open source Eleonline www.eleonline.it (versione 2*)

L'architettura è basata su due container:

- DevBox: Istanza applicativao basata Centos 7 con Apache e PHP 5.6 (Eleonline 2* non è compatibile con PHP7)
- DBBox: Database MySql

## Operazione Preliminare

Copiare nella directory `eleonline` la versione di eleonline che si intende installare.

Il software è disponibile sul sito http://trac.eleonline.it/eleonline/browser/trunk


È possibile eseguire il seguente script per scaricare automaticamente l'ultima vesione di Eleonline e posizionarla all'interno della directory indicata.
```
$ get-eleonline.sh
```
Attezione! Lo script cancella e sovrascrive i file eventualmente presenti. 

## Come avviare l'istanza

Installare Docker: [Get Docker](https://docs.docker.com/get-docker/).

Clonare il presente repository in una propria cartella di lavoro.

```
$ git clone https://github.com/etino/eleonline-docker.git my-eleonline
$ cd my-eleonline
$ docker-compose up --build
```

L'infrastruttura espone le seguenti porte:

- 8000: Webserver DevBox (http)
- 4430: Webserver DevBox (https)
- 3306: Database MySql DBBox

Per la persistenza dei dati sono mappate le directory locali `eleonline` (Webserver) e `data` (Database MySql).


## Installazione
Per procedere con l'installazione del software aprire il proprio browser e collegarsi all'indirizzo_

 [http:\\\\localhost:8000](http:\\localhost:8000).

In fase di installazione, utilizzare i seguenti parametri per configurare la connessione al database:

  - **Host Name**: dbbox
  - **Nome Utente**: root
  - **MySQL Password**: Eleonline,1234
  - **MySQL Database Name**: eleonline

I parametri possono essere personalizzati all'interno del file `docker-composer.yaml` prima della compilazione (comando `docker-compose up --build`).

Con gli stessi parametri è possibile accedere all'instanza MySql attravero la porta 3306 locale.

Completare la procedura di installazione 

## Accesso ad Eleonline:

Per accedere ad Eleonline utilizzare i seguenti link:

- Amministrazione: http://localhost:8000/admin/
- Client: http://localhost:8000/client/