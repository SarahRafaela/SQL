use wm;
 -- PRODUTO CARTESIANO DA TABELA, TODAS AS LINHAS ESTÃO RELACIONADAS COM TODOAS AS COLUNAS
SELECT * FROM ESTADO E, CIDADE C;

SELECT * FROM ESTADO E, CIDADE C WHERE E.ID = C.ESTADO_ID;

SELECT e.nome as Estado, c.nome  as Cidade FROM ESTADO E, CIDADE C WHERE E.ID = C.ESTADO_ID;

SELECT 
	C.NOME AS CIDADE,
    E.NOME AS ESTADO,
    REGIAO AS REGIÃO
FROM ESTADO E 
INNER JOIN CIDADE C ON E.ID = C.ESTADO_ID;