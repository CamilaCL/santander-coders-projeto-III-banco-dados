# **Projeto Gerenciamento de Restaurante e DVD Rental Database**

## Programa Santander Coders 2024.1 | Turma Data Science | Ada Tech
### *Módulo: Banco de Dados I*

Este projeto foi desenvolvido como parte do módulo de Banco de Dados I, curso Data Science do programa Santander Coders 2024.1. O projeto está dividido em duas partes, as quais estão detalhadas a seguir.

## Parte 1 - Sistema de Gerenciamento de Restaurante

Esta parte do projeto consiste em desenvolver um sistema de gerenciamento para um restaurante fictício, com o objetivo de organizar e melhorar sua logística interna. O sistema será responsável por gerenciar dados de clientes, funcionários, pratos, pedidos, mesas e reservas, atendendo os seguintes requisitos:

### Requisitos do Sistema:

1. **Cliente**:
   - Entidade contendo: nome, CPF, telefone, email e data de nascimento.
   - Um cliente pode fazer múltiplas **reservas** e **pedidos**.

2. **Funcionário**:
   - Entidade contendo: nome, CPF, cargo (ex.: Garçom, Cozinheiro) e telefone.
   - Funcionários podem participar de diferentes **pedidos**. Um pedido pode ser atendido por mais de um funcionário, por exemplo: o garçom que atende e o cozinheiro que prepara o prato.

3. **Pratos**:
   - Cada prato possui: nome, descrição e preço.
   - Um **pedido** pode incluir vários pratos, e cada prato pode estar presente em vários pedidos.

4. **Pedidos**:
   - Um pedido contém: data, hora e o cliente que fez o pedido.
   - Um pedido pode incluir vários pratos.

5. **Mesas**:
   - Cada mesa possui um número identificador e uma capacidade de assentos.

6. **Reservas**:
   - Os clientes podem reservar mesas, incluindo: data, hora e número da mesa reservada.

### Etapas de Implementação:

- Criação de um banco de dados relacional para armazenar as informações necessárias (clientes, funcionários, pratos, mesas, pedidos e reservas).
- Implementação de CRUD para as entidades principais (Clientes, Funcionários, Pratos, Pedidos, Mesas, Reservas).
- Geração de relatórios sobre o número de pedidos por mesa, funcionários envolvidos e pratos mais pedidos.

---

## Parte 2 - Consultas SQL para o Banco de Dados DVD Rental

Nesta segunda parte, o projeto envolve a exploração de um banco de dados de locação de DVDs para responder a perguntas utilizando SQL. O banco de dados `dvd_rental` contém 15 tabelas que modelam o funcionamento de uma loja de aluguel de DVDs. A seguir, é apresentada uma breve explicação sobre o banco de dados e, logo após, listam-se as perguntas a serem respondidas com consultas SQL.

### Estrutura do Banco de Dados DVD Rental:

- **actor**: Contém informações sobre os atores, como nome e sobrenome.
- **film**: Armazena dados dos filmes, como título, ano de lançamento, duração, classificação, entre outros.
- **film_actor**: Relaciona filmes com seus respectivos atores.
- **category**: Armazena dados das categorias de filmes.
- **film_category**: Relaciona filmes com suas respectivas categorias.
- **store**: Contém dados sobre as lojas, incluindo gerentes, equipe e endereços.
- **inventory**: Armazena informações sobre o inventário de DVDs disponíveis em cada loja.
- **rental**: Armazena informações sobre os aluguéis de DVDs, como datas de locação e devolução.
- **payment**: Contém dados sobre os pagamentos realizados pelos clientes.
- **staff**: Armazena informações sobre os funcionários da loja, incluindo nome, cargo e email.
- **customer**: Armazena informações dos clientes, como nome, email e endereço.
- **address**: Armazena dados dos endereços de funcionários e clientes.
- **city**: Contém os nomes das cidades associadas aos endereços.
- **country**: Armazena os nomes dos países associados às cidades.

### Estrutura do Diagrama Entidade-Relacionamento (ERD)

O diagrama de entidade-relacionamento do banco de dados de locação de DVDs, conforme ilustrado na imagem, exibe a conexão entre as diferentes tabelas, incluindo atores, filmes, inventário, aluguéis, categorias, pagamentos e clientes, além das relações entre as tabelas, como associações entre filmes e atores, filmes e categorias, etc.

<div style="text-align: center;">
  <img src="./assets/image-diagrama-ER.png" alt="alt text">
</div>

### Consultas SQL:

1. **Quais são os filmes, suas respectivas categorias e idiomas?**
   - A consulta deve retornar o título do filme (`film.title`), o nome da categoria (`category.name`) e o idioma do filme (`language.name`).

2. **Quais foram os filmes alugados entre os dias 1 de fevereiro e 15 de março de 2006 na loja 1?**
   - A consulta deve filtrar os aluguéis (`rental.rental_date`) e a loja (`store.store_id = 1`), listando os filmes alugados no período especificado.

3. **Qual a quantidade de vezes que cada filme foi alugado?**
   - A consulta deve retornar o número de vezes que cada filme foi alugado.

4. **Para cada funcionário, qual é o valor total retornado em locações e a quantidade total de locações?**
   - A consulta deve retornar o total de locações (`payment.amount`) e a quantidade de locações (`rental.rental_id`) para cada funcionário (`staff.staff_id`).

5. **Qual é o nome de categoria de filme que nos retorna mais dinheiro no total?**
   - A consulta deve ordenar as categorias de filmes (`category.name`) pelo valor total recebido em pagamentos (`payment.amount`), listando todas as categorias, inclusive aquelas que não geraram nenhuma receita.

---

Esse repositório está estruturado da seguinte forma:

```
santander-coders-projeto-III-banco-dados/
│
├── assets/                               # Imagens utilizadas no projeto
├── src/                                  # Código-fonte do projeto
│   ├── parte1                            # Scripts SQL para a implementação do sistema de gerenciamento de restaurante
│   ├── parte2                            # Scripts SQL para responder às perguntas referentes ao banco de dados dvd_rental
├── .gitignore                            # Arquivo para ignorar arquivos e diretórios no Git
├── README.md                             # Arquivo de descrição do projeto
```

**Instruções**:
1. Instalar um ambiente de banco de dados relacional (ex.: MySQL ou PostgreSQL).
2. Executar as scripts SQL na ordem indicada.
3. Explorar o sistema do restaurante via consultas SQL.
4. Utilizar os scripts da Parte 2 para responder as perguntas com base no banco de dados `dvd_rental`.
