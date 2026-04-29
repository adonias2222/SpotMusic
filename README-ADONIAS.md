# SpotMusic dentro do banco Reserva Fácil

Este projeto foi ajustado para funcionar usando o mesmo banco do Reserva Fácil, mas sem misturar as tabelas.

## O que foi mantido

- Projeto Spring Boot MVC.
- Thymeleaf.
- MySQL.
- CRUD de playlists.
- CRUD de músicas dentro de uma playlist.
- Estrutura Controller, Service, DAO e Domain.

## O que foi ajustado

- O banco padrão agora é `reserva_facil`.
- As tabelas foram separadas com prefixo `spotmusic_`:
  - `spotmusic_playlists`
  - `spotmusic_musicas`
- A senha fixa do banco foi removida do código.
- O projeto agora aceita variáveis de ambiente para rodar localmente ou hospedado.
- A configuração antiga do Thymeleaf/Spring 4 foi removida.
- A classe de configuração MVC foi atualizada.
- O visual foi melhorado e ficou responsivo para abrir no celular.

## Como rodar localmente

1. Crie ou use o banco `reserva_facil` no MySQL.
2. Configure seu usuário e senha no terminal.

No Windows PowerShell:

```powershell
$env:DB_URL="jdbc:mysql://localhost:3306/reserva_facil?useSSL=false&allowPublicKeyRetrieval=true&createDatabaseIfNotExist=true&serverTimezone=America/Sao_Paulo"
$env:DB_USERNAME="root"
$env:DB_PASSWORD="SUA_SENHA_DO_MYSQL"
./mvnw spring-boot:run
```

Se seu MySQL não tiver senha no root, use:

```powershell
$env:DB_PASSWORD=""
./mvnw spring-boot:run
```

Depois acesse:

```text
http://localhost:8080
```

## Configuração para Render

Build Command:

```text
./mvnw clean package -DskipTests
```

Start Command:

```text
java -jar target/spotmusic-reserva-facil.jar
```

Variáveis de ambiente no Render:

```text
DB_URL=jdbc:mysql://SEU_HOST:3306/reserva_facil?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=America/Sao_Paulo
DB_USERNAME=SEU_USUARIO
DB_PASSWORD=SUA_SENHA
```

O Render também usa a variável `PORT`, e o projeto já está preparado para isso.

## Observação importante

O SpotMusic não conversa com o Reserva Fácil. Eles apenas usam o mesmo banco físico. Como as tabelas têm nomes separados, os dados ficam independentes.
