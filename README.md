# Sistema de Vendas — PHP e MySQL

## 1. Sobre o projeto

Este projeto consiste em uma aplicação web simples para consulta de produtos cadastrados em um banco de dados de vendas. A aplicação foi desenvolvida utilizando PHP, HTML, CSS e MySQL.

O sistema executa uma consulta SQL na tabela de produtos e apresenta os registros em uma tabela HTML, mostrando o código, o nome, a categoria, o preço e a quantidade disponível em estoque.

## 2. Objetivos

- Desenvolver a conexão entre uma aplicação PHP e um banco de dados MySQL.
- Criar e organizar tabelas relacionadas a um sistema de vendas.
- Inserir dados para permitir testes e consultas.
- Aplicar alterações na estrutura do banco para melhorar a organização e a integridade dos dados.
- Utilizar comandos SQL para consultar e manipular informações.
- Exibir os dados retornados pelo banco em uma página web.

## 3. Tecnologias utilizadas

- **PHP:** comunicação com o banco de dados e processamento da consulta.
- **MySQL:** criação, armazenamento e organização dos dados.
- **HTML:** estrutura da página de consulta.
- **CSS:** formatação visual da tabela e dos elementos da página.
- **mysqli:** biblioteca PHP utilizada para conectar ao MySQL e executar comandos SQL.

## 4. Estrutura dos arquivos

| Arquivo | Descrição |
|---|---|
| `index.php` | Página principal. Executa um SELECT na tabela de produtos e exibe os resultados em uma tabela HTML. |
| `conexao.php` | Configura e realiza a conexão entre o PHP e o banco de dados MySQL. |
| `banco_PHP.sql` | Script SQL responsável por criar o banco, as tabelas, inserir dados, realizar alterações estruturais e executar consultas. |

## 5. Modelagem e organização do banco de dados

O banco de dados utilizado chama-se `bd_sistema_vendas`.

As tabelas presentes no projeto são:

- **tbl_clientes:** armazena nome, e-mail e cidade dos clientes.
- **tbl_vendedores:** armazena os vendedores e seus percentuais de comissão.
- **tbl_produtos:** armazena nome, preço, quantidade em estoque e o identificador da categoria.
- **tbl_categorias:** mantém os nomes das categorias de produtos.
- **tbl_pedidos:** registra os pedidos e relaciona cada pedido a um cliente, a um vendedor e a um status.
- **tbl_status_pedido:** armazena os possíveis status dos pedidos.

As relações entre as tabelas são feitas por meio de chaves primárias e estrangeiras. Por exemplo, os pedidos possuem referências aos clientes, vendedores e status; os produtos possuem referência à tabela de categorias.

## 6. Etapas de desenvolvimento

### Etapa 1 — Criação do banco de dados

Foi criado o banco `bd_sistema_vendas`, que reúne as informações necessárias para o funcionamento do sistema.

### Etapa 2 — Criação das tabelas iniciais

Foram criadas as tabelas de clientes, vendedores, produtos e pedidos. Cada tabela recebeu uma chave primária para identificar seus registros. Também foram definidas chaves estrangeiras para relacionar os pedidos aos clientes e vendedores.

### Etapa 3 — Inserção dos dados

Foram inseridos dados de exemplo nas tabelas, incluindo clientes, vendedores, produtos e pedidos. Esses registros permitem testar as consultas e visualizar informações na aplicação.

### Etapa 4 — Organização das categorias

Foi criada a tabela `tbl_categorias`. Os nomes das categorias que estavam registrados diretamente na tabela de produtos foram transferidos para essa nova tabela. Em seguida, os produtos passaram a armazenar o campo `id_categoria`, relacionado à chave primária de `tbl_categorias`.

Depois da migração, a coluna textual `categoria` foi removida de `tbl_produtos`, evitando a repetição dos nomes das categorias em diversos registros.

### Etapa 5 — Organização dos status dos pedidos

Foi criada a tabela `tbl_status_pedido` para armazenar os status disponíveis. Os valores existentes em `tbl_pedidos` foram transferidos para essa tabela e os pedidos passaram a utilizar o campo `id_status` como chave estrangeira. Após a atualização dos registros, a coluna textual antiga foi removida.

### Etapa 6 — Definição de restrições e integridade

Foram adicionadas regras para melhorar a consistência dos dados, incluindo:

- campos obrigatórios com `NOT NULL`;
- valores únicos para e-mails e nomes de categorias;
- chaves estrangeiras para manter os relacionamentos;
- restrição para impedir quantidade de estoque negativa;
- restrição para manter o percentual de comissão entre 0 e 100;
- tipos numéricos adequados para preços e comissões.

### Etapa 7 — Desenvolvimento da conexão PHP

O arquivo `conexao.php` utiliza `mysqli_connect()` para estabelecer a conexão com o MySQL. Caso ocorra um erro, a aplicação apresenta uma mensagem informando que a conexão não foi realizada. Também é configurado o conjunto de caracteres `utf8mb4`.

### Etapa 8 — Desenvolvimento da página de consulta

O arquivo `index.php` inclui a conexão com `require_once`, executa um comando `SELECT` na tabela `tbl_produtos` e verifica se a consulta foi realizada corretamente.

Os registros são percorridos com `mysqli_fetch_assoc()` e apresentados em uma tabela HTML. Os valores são tratados com `htmlspecialchars()` e os preços são formatados com `number_format()` para exibição no padrão brasileiro.

### Etapa 9 — Consultas SQL

O script apresenta consultas para:

1. Listar produtos com preço superior a R$ 1.000, em ordem decrescente de preço.
2. Listar produtos da categoria Informática com preço entre R$ 200 e R$ 1.500.
3. Buscar clientes de Campinas, Santos ou Sorocaba cujo nome começa com a letra A.
4. Calcular a quantidade de produtos, o preço médio, o menor preço e o maior preço, utilizando `COUNT()`, `AVG()`, `MIN()` e `MAX()`.

## 7. Como executar o projeto

1. Instale um ambiente local com PHP e MySQL, como XAMPP.
2. Inicie os serviços Apache e MySQL.
3. Abra o phpMyAdmin ou outro cliente MySQL.
4. Execute o arquivo `banco_PHP.sql` para criar e preencher o banco de dados.
5. Coloque a pasta do projeto no diretório de publicação do servidor local, como `htdocs` no XAMPP.
6. Configure as credenciais de acesso ao MySQL no arquivo `conexao.php`, preferencialmente por variáveis de ambiente (`DB_HOST`, `DB_USER`, `DB_PASS` e `DB_NAME`).
7. Acesse `http://localhost/trabalho_fabiano/` pelo navegador.

## 8. Resultado esperado

Ao acessar a página, o sistema apresenta o título **Lista de Produtos Cadastrados** e uma tabela contendo os produtos registrados no banco de dados. Cada linha exibe o ID, o nome do produto, o identificador da categoria, o preço formatado em reais e a quantidade em estoque.

## 9. Possíveis melhorias futuras

- Exibir o nome da categoria por meio de um `JOIN`, em vez de mostrar apenas seu identificador.
- Criar telas para cadastrar, editar e excluir produtos.
- Implementar pesquisa e filtros na listagem.
- Adicionar validação de formulários e mensagens de retorno.
- Melhorar a separação entre HTML, CSS e PHP.

## 10. Observações

Este repositório contém uma versão acadêmica do projeto, com dados fictícios para testes. As credenciais locais do banco de dados não devem ser publicadas. Configure os dados de conexão no próprio ambiente antes de executar a aplicação.

---

**Projeto acadêmico — Desenvolvimento de Sistemas**
