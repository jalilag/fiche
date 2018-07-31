/***
CASE Permet de mettre en place des conditions
***/
SELECT * FROM test;

 a
---
 1
 2
 3

SELECT a,
       CASE WHEN a=1 THEN 'un'
            WHEN a=2 THEN 'deux'
            ELSE 'autres'
       END
FROM test;

 a | case
---+-------
 1 | un
 2 | deux
 3 | autres

/***
COALESCE permet de gerer la mise en place de valeur par défaut dans le cas de valeur nulle
***/
SELECT COALESCE(description,short_desc,'aucune') FROM ...

/***
NULLIF renvoie NULL si l'argument 1 et l'argument 2 sont identiques sinon elle renvoie l'argument 1
***/
NULLIF(5,5) /* renvoie NULL*/
NULLIF(5,4) /* renvoie 5 */

/***
Suppression de toutes les sessions connéctées à la base
**/
SELECT 
    pg_terminate_backend(pid) 
FROM 
    pg_stat_activity 
WHERE 
    -- don't kill my own connection!
    pid <> pg_backend_pid()
    -- don't kill the connections to other databases
    AND datname = 'database_name'
