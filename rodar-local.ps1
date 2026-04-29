# Ajuste apenas a senha do MySQL abaixo, se o seu root tiver senha.
# O projeto usa o banco reserva_facil e cria as tabelas spotmusic_* automaticamente.

$env:DB_URL="jdbc:mysql://localhost:3306/reserva_facil?useSSL=false&allowPublicKeyRetrieval=true&createDatabaseIfNotExist=true&serverTimezone=America/Sao_Paulo"
$env:DB_USERNAME="root"
$env:DB_PASSWORD=""

Write-Host "Iniciando SpotMusic no banco reserva_facil..." -ForegroundColor Green
./mvnw spring-boot:run
