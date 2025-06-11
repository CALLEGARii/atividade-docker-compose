CREATE TABLE contato
(
    id        INT             NOT NULL    AUTO_INCREMENT,
    nome      VARCHAR(350)    NOT NULL,
    email     VARCHAR(150)    NOT NULL,    
    datahora  TIMESTAMP       DEFAULT     CURRENT_TIMESTAMP,
    mensagem  TEXT            NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

INSERT INTO contato (nome, email, mensagem) VALUES
('Ana Souza', 'ana.souza@example.com', 'Gostaria de saber mais sobre os serviços oferecidos.'),
('Carlos Lima', 'carlos.lima@example.com', 'Tive um problema com o formulário de contato.'),
('Juliana Ribeiro', 'juliana.ribeiro@example.com', 'Parabéns pelo excelente atendimento!'),
('Pedro Santos', 'pedro.santos@example.com', 'Quero agendar uma reunião para semana que vem.'),
('Fernanda Alves', 'fernanda.alves@example.com', 'Vocês atendem fora do horário comercial?');


