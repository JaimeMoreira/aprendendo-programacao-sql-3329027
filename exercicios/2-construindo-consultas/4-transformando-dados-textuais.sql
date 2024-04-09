-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras
SELECT DISTINCT
CustomerId as id,
FirstName as nome,
LastName as sobrenome,
Address as endereço
FROM
customers
WHERE
country LIKE 'Brazil'; -- poderia usar 'Bra%' para que fosse pesquisado todos os países que iniciasse com 'Bra'.

-- Na consulta anterior, converta o sobrenome para letras maiúsculas
SELECT DISTINCT
CustomerId as id,
FirstName as nome,
UPPER(LastName) as sobrenome,
Address as endereço
FROM
customers
WHERE
country LIKE 'Brazil';

-- Na consulta anterior, converta o nome para letras minúsculas
SELECT DISTINCT
CustomerId as id,
LOWER(FirstName) as nome,
UPPER(LastName) as sobrenome,
Address as endereço
FROM
customers
WHERE
country LIKE 'Brazil';

-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome
SELECT DISTINCT
CustomerId as id,
LOWER(FirstName) as nome,
UPPER(LastName) as sobrenome,
LOWER(FirstName || ' ' || LastName) as nome_completo,
Address as endereço
FROM
customers
WHERE
country LIKE 'Brazil';

-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço
SELECT DISTINCT
CustomerId as id,
LOWER(FirstName) as nome,
UPPER(LastName) as sobrenome,
LOWER(FirstName || ' ' || LastName) as nome_completo,
REPLACE(Address, 'Av.','Avenida') as endereço
-- para alterar mais de uma informação na mesma coluna,
-- posso utilizar um REPLACE dentro de outro REPLACE,
-- Como nesse exemplo: REPLACE(REPLACE(Address, 'Av.','Avenida'), 'Qe','Quadra') as endereço 
FROM
customers
WHERE
country LIKE 'Brazil';

-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais
SELECT DISTINCT
CustomerId as id,
LOWER(FirstName) as nome,
UPPER(LastName) as sobrenome,
LOWER(FirstName || ' ' || LastName) as nome_completo,
REPLACE(Address, 'Av.','Avenida') as endereço
FROM
customers
WHERE
country LIKE 'Bra%';