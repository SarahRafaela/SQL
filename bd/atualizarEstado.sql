use wm;

UPDATE ESTADO 
set nome = 'Maranhão'
WHERE sigla = 'MA'; 

SELECT NOME FROM ESTADO WHERE sigla= "MA";

UPDATE ESTADO 
set nome = 'Paraná', populacao = 11.32
WHERE sigla = 'PR'; 

SELECT NOME, SIGLA, POPULACAO FROM ESTADO 
WHERE sigla= "PR";