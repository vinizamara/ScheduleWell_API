# ScheduleWell API 🔌

A **ScheduleWell API** é uma API REST desenvolvida para fornecer suporte ao [aplicativo mobile ScheduleWell](https://github.com/vinizamara/ScheduleWell_Front), sendo responsável pelo gerenciamento de usuários, autenticação, anotações, listas e transações financeiras.

## Visão Geral 👀

O **ScheduleWell API** é o backend responsável pelo gerenciamento de dados e regras de negócio da aplicação ScheduleWell. O projeto foi desenvolvido como parte do Trabalho de Conclusão de Curso no SENAI, no curso de Desenvolvimento de Sistemas.

A API tem como objetivo fornecer uma estrutura REST para autenticação, gerenciamento de usuários, anotações, listas e transações financeiras, bem como demais funcionalidades do projeto, realizando toda a comunicação entre o aplicativo mobile e o banco de dados.

O backend foi estruturado de forma modular, utilizando Node.js, Express, MySQL e Docker, visando organização, separação de responsabilidades e padronização do ambiente de desenvolvimento.

## Funcionalidades ⚙️

- CRUD de usuários
- CRUD de anotações
- CRUD de checklists
- CRUD de itens de checklist
- CRUD de transações financeiras
- Sistema de autenticação de usuários
- Criptografia de senhas com bcrypt
- Funcionalidade de pesquisa de anotações, checklists e transações por título
- Módulo de controle financeiro com:
  - Renda total
  - Receitas e despesas mensais
  - Saldo mensal atual
  - Histórico de transações
- Suporte a transações recorrentes com frequência diária, semanal, mensal e anual
- Integração com banco de dados MySQL

## Tecnologias e Ferramentas Utilizadas 🧰

<p align="left">

  <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black" height="35" />

  <img src="https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=nodedotjs&logoColor=white" height="35" />

  <img src="https://img.shields.io/badge/Express-000000?style=for-the-badge&logo=express&logoColor=white" height="35" />

  <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" height="35" />

  <img src="https://img.shields.io/badge/bcrypt-323330?style=for-the-badge&logo=securityscorecard&logoColor=white" height="35" />

  <img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white" height="35" />

  <img src="https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=postman&logoColor=white" height="35" />

</p>

## Arquitetura da API 🏗️

A API foi desenvolvida utilizando Node.js e Express, seguindo uma arquitetura modular baseada em separação de responsabilidades.

O projeto organiza controllers, rotas e conexão com banco de dados em estruturas independentes, facilitando manutenção, escalabilidade e reutilização de código.

A comunicação com o banco de dados é realizada por meio de consultas SQL utilizando MySQL, permitindo o gerenciamento de usuários, anotações, listas e transações financeiras.

### Estrutura de pastas 📁

- **mysql-init/** – scripts SQL utilizados para inicialização automática do banco de dados no Docker
- **src/controller/** – controllers responsáveis pelas regras de negócio e processamento das requisições
- **src/db/** – configuração e conexão com o banco de dados MySQL
- **src/routes/** – definição e organização das rotas da API
- **src/server.js** – inicialização do servidor Express e configuração da aplicação

### Arquivos principais 📌

- **src/server.js** – ponto de entrada da aplicação
- **src/routes/apiRoutes.js** – centralização das rotas da API
- **src/db/connect.js** – configuração da conexão com o MySQL
- **docker-compose.db.yml** – configuração do container do banco de dados
- **docker-compose.yml** – configuração do ambiente completo de desenvolvimento com API e banco de dados
- **package.json** – gerenciamento de dependências e scripts do projeto

## Banco de Dados 🗄️

O projeto utiliza MySQL como sistema de gerenciamento de banco de dados relacional.

O banco é responsável pelo armazenamento e gerenciamento das informações da aplicação, incluindo usuários, anotações, listas personalizadas e transações financeiras.

A estrutura foi organizada com relacionamentos entre tabelas utilizando chaves estrangeiras e regras de integridade referencial com `ON DELETE CASCADE`.

### Estrutura principal 📁

- **usuario** – armazenamento de dados dos usuários da aplicação
- **financa** – registro de receitas, despesas, valores e frequência de transações
- **anotacao** – armazenamento de anotações de texto dos usuários
- **checklist** – armazenamento de listas personalizadas
- **item_checklist** – gerenciamento dos itens vinculados às listas

## Autenticação e Segurança 🔐

- Criptografia de senhas utilizando bcrypt
- Validação de formato de e-mail e senha
- Verificação de credenciais no login
- Proteção contra duplicidade de e-mails
- Relacionamentos com integridade referencial no banco de dados

## Integração com Frontend 📱

A API foi desenvolvida para integração com o aplicativo mobile ScheduleWell, sendo responsável pelo gerenciamento de usuários, anotações, listas e transações financeiras.

- Comunicação realizada via requisições HTTP
- Respostas estruturadas em formato JSON
- Endpoints organizados em arquitetura REST
- Integração com aplicação React Native
- Comunicação baseada em arquitetura cliente-servidor

### Repositório do Frontend

O aplicativo mobile utilizado neste projeto foi desenvolvido separadamente como parte do mesmo Trabalho de Conclusão de Curso.

- Frontend Mobile: [ScheduleWell Front](https://github.com/vinizamara/ScheduleWell_Front)
- Tecnologias utilizadas: React Native, Expo, Axios e JavaScript.

## Docker 🐳

O projeto utiliza Docker para padronização e isolamento do ambiente de desenvolvimento, facilitando a execução da aplicação e do banco de dados em diferentes máquinas.

A estrutura Docker é composta por containers separados para a API e para o banco de dados MySQL.

- Container da API Node.js
- Container do banco de dados MySQL
- Persistência de dados utilizando volumes Docker
- Inicialização automática do banco com scripts SQL

O projeto também utiliza Docker Compose para gerenciamento e orquestração dos containers.

### Arquivos Docker 📦

- **docker-compose.yml** – ambiente completo de desenvolvimento com API e banco de dados
- **docker-compose.db.yml** – execução isolada do banco de dados MySQL

## Como Rodar o Projeto 🚀

### Pré-requisitos

- Node.js instalado
- Docker instalado
- Git instalado
- Gerenciador de pacotes (npm)

### Instalação

```bash
git clone https://github.com/vinizamara/ScheduleWell_API.git
cd ScheduleWell_API
npm install
```

## Variáveis de Ambiente ⚙️

Crie um arquivo `.env` na raiz do projeto:

```env
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=root
DB_NAME=schedulewell
DB_PORT=3307
PORT=5000
```

As variáveis de ambiente são utilizadas para configuração da conexão com o banco de dados e execução da API.

Ao utilizar o Docker Compose fornecido pelo projeto, a senha padrão do MySQL é `root`.

## Execução com Docker 🐳

Para iniciar o ambiente completo utilizando Docker Compose:

```bash
docker-compose up --build
```

O comando irá inicializar:
- Container da API Node.js
- Container do banco de dados MySQL

O banco de dados é criado automaticamente utilizando os scripts presentes em `mysql-init/`.

### Executando apenas o banco de dados

Caso deseje iniciar somente o container do MySQL:

```bash
docker-compose -f docker-compose.db.yml up --build
```

## Execução Manual ▶️

Para executar a API manualmente:

```bash
npm start
```

A API será iniciada localmente na porta definida no arquivo `.env`.

## Endpoints do Projeto 🌐

| Método | Endpoint | Descrição |
|---|---|---|
| POST | `/createUser` | Cadastro de novos usuários |
| POST | `/login` | Autenticação de usuários |
| GET | `/getUsers` | Listagem de usuários |
| PUT | `/updateUser/:id` | Atualização de dados do usuário |
| DELETE | `/deleteUser/:id` | Remoção de usuários |
|---|---|---|
| POST | `/postNota` | Criação de anotações |
| GET | `/getAnotacao/:idUsuario` | Listagem de anotações do usuário |
| PUT | `/updateNota/:idAnotacao` | Atualização de anotações |
| DELETE | `/deleteNota/:idAnotacao` | Remoção de anotações |
|---|---|---|
| POST | `/postChecklist` | Criação de checklists |
| GET | `/getChecklist/:idUsuario` | Listagem de checklists |
| PUT | `/updateChecklist/:idChecklist` | Atualização de checklists |
| DELETE | `/deleteChecklist/:idChecklist` | Remoção de checklists |
|---|---|---|
| POST | `/postItemChecklist` | Criação de itens de checklist |
| GET | `/getItemChecklist/:idChecklist` | Listagem de itens do checklist |
| PUT | `/updateItemChecklist/:idItemChecklist` | Atualização de itens do checklist |
| DELETE | `/deleteItemChecklist/:idItemChecklist` | Remoção de itens do checklist |
|---|---|---|
| POST | `/criarFinanca` | Cadastro de transações financeiras |
| GET | `/listarFinancas/:fk_id_usuario` | Listagem de transações financeiras |
| PUT | `/atualizarFinanca/:id_financa` | Atualização de transações financeiras |
| DELETE | `/deletarFinanca/:id_financa` | Remoção de transações financeiras |
|---|---|---|
| GET | `/obterRendaTotal/:fk_id_usuario` | Cálculo do saldo financeiro acumulado |
| GET | `/resumoFinanceiro/:fk_id_usuario` | Resumo mensal de receitas, despesas e saldo |
| GET | `/transacoes/:fk_id_usuario` | Histórico de transações financeiras |
|---|---|---|
| GET | `/buscar-titulos/:fk_id_usuario/:titulo` | Funcionalidade de Pesquisa |

## Contributors 👥

Este projeto foi desenvolvido em equipe durante a fase acadêmica no SENAI.

Os colaboradores abaixo participaram diretamente do desenvolvimento original ([repositório inicial no GitLab](https://gitlab.com/schedulewell/api)):

<div align="left">

  <h3>- Gabriel Santos Magalhães</h3>
  <a href="https://gitlab.com/gabrielsantosmagalhaesx" target="_blank">
    <img src="https://img.shields.io/static/v1?message=Gabriel%20Santos%20Magalh%C3%A3es&label=&color=FC6D26&logo=gitlab&logoColor=white&style=for-the-badge" height="35" />
  </a>

  <h3>- Maria Laura Reis Furini</h3>
  <a href="https://gitlab.com/marialaurareisfurini" target="_blank">
    <img src="https://img.shields.io/static/v1?message=Maria%20Laura%20Reis%20Furini&label=&color=FC6D26&logo=gitlab&logoColor=white&style=for-the-badge" height="35" />
  </a>

  <h3>- Gustavo Maríngolo Barbosa</h3>
  <a href="https://gitlab.com/gugamaringolo" target="_blank">
    <img src="https://img.shields.io/static/v1?message=Gustavo%20Mar%C3%ADngolo%20Barbosa&label=&color=FC6D26&logo=gitlab&logoColor=white&style=for-the-badge" height="35" />
  </a>

  <h3>- Miguel de Jesus Ferreira</h3>
  <a href="https://gitlab.com/migueldejf05" target="_blank">
    <img src="https://img.shields.io/static/v1?message=Miguel%20de%20Jesus%20Ferreira&label=&color=FC6D26&logo=gitlab&logoColor=white&style=for-the-badge" height="35" />
  </a>

  <h3>- Leonardo Pereira Gonçalves</h3>
  <a href="https://gitlab.com/leonardopgoncaves" target="_blank">
    <img src="https://img.shields.io/static/v1?message=Leonardo%20Pereira%20Gon%C3%A7alves&label=&color=FC6D26&logo=gitlab&logoColor=white&style=for-the-badge" height="35" />
  </a>

</div>

## Autor 👨‍💻

### - Vinícius Manfrin Zamara

<div align="left">

  <a href="https://github.com/vinizamara" target="_blank">
    <img src="https://img.shields.io/static/v1?message=GitHub%20%7C%20vinizamara&logo=github&label=&color=181717&logoColor=white&style=for-the-badge" height="35" alt="github logo" />
  </a>

  <a href="https://www.linkedin.com/in/viniciusmanfrin/" target="_blank">
    <img src="https://img.shields.io/static/v1?message=LinkedIn%20%7C%20Vin%C3%ADcius%20Manfrin&logo=linkedin&label=&color=0077B5&logoColor=white&style=for-the-badge" height="35" alt="linkedin logo" />
  </a>

  <a href="mailto:vinizamara@gmail.com" target="_blank">
    <img src="https://img.shields.io/static/v1?message=Gmail%20%7C%20vinizamara@gmail.com&logo=gmail&label=&color=D14836&logoColor=white&style=for-the-badge" height="35" alt="gmail logo" />
  </a>

</div>
