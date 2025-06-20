
# 📦 CRUD de Contatos com PHP, MySQL, Apache e phpMyAdmin via Docker Compose
---

## 📁 Estrutura dos serviços (`docker-compose.yaml`)

| Serviço       | Imagem                  | Função                               | Porta Externa | Porta Interna |
|---------------|-------------------------|--------------------------------------|---------------|----------------|
| `web`         | php:8.2-apache          | Servidor Apache + PHP                | `80`          | `80`           |
| `mysql`       | mysql:8.0               | Banco de dados MySQL                 | `8081`        | `3306`         |
| `phpmyadmin`  | phpmyadmin/phpmyadmin   | Interface para o banco de dados      | `8080`        | `80`           |

---

## 🚀 Como rodar localmente com Docker

. **Acesse os serviços:**
   - Aplicação web (CRUD): http://localhost
   - phpMyAdmin: http://localhost:8080  
---

## ☁️ Como subir na AWS (EC2)

> Você pode utilizar uma instância EC2 (Ubuntu Server) para hospedar a aplicação.

### Passo a passo:

1. **Criar uma instância EC2 com Ubuntu 22.04 ou similar**
2. **Abrir as portas no grupo de segurança:**
   - TCP 80 (para acessar o CRUD)
   - TCP 8080 (phpMyAdmin)
   - TCP 8081 (acesso externo ao MySQL, opcional e não recomendado para produção)

3. **Instalar Docker e Docker Compose:**
   ```bash
   sudo apt update
   sudo apt install docker.io docker-compose -y
   sudo usermod -aG docker $USER
   newgrp docker
   ```

4. **Clonar o projeto e subir:**
   ```bash
   git clone https://github.com/seu-usuario/seu-repo.git
   cd seu-repo
   docker-compose up -d
   ```

5. **Acessar a aplicação via navegador:**
   - http://IP_DA_INSTANCIA
   - http://IP_DA_INSTANCIA:8080 (phpMyAdmin)
   - É possível que você tenha que esperar um pouco para abrir o CRUD, pois o docker-compose estará iniciando o apache2 para mostrar a página da aplicação

   **Dica:**
   - Recarregar a página(F5) até que a aplicação apareça

---

## ⚙️ Configurações internas

- O banco é inicializado com a tabela `contato` e alguns registros de exemplo (definidos no arquivo `tabelaContato.sql`).

---

## ✅

