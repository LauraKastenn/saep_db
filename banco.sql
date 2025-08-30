CREATE DATABASE saaep_db;
USE saaep_db;

CREATE TABLE professor (
	id_professor INT AUTO_INCREMENT PRIMARY KEY,
	email_professor VARCHAR(50) NOT NULL,
    senha_professor VARCHAR(10) NOT NULL,
	usuario_professor  VARCHAR(50) NOT NULL
);

CREATE TABLE turma (
	id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_turma VARCHAR(50) NOT NULL,
    cadastro_turma VARCHAR(50) NOT NULL
    professor_id INT
    FOREIGN KEY (professor_id) REFERENCES professor(id__professor)
)
;

CREATE TABLE atividades (
    id_atividade INT AUTO_INCREMENT PRIMARY KEY,
    nome_atividade VARCHAR(50) NOT NULL,
    descricao_atividade VARCHAR(50) NOT NULL
    turma_id INT
    FOREIGN KEY (turma_id) REFERENCES turma(id__turma)
)

;
INSERT INTO professor (email_professor, usuario_professor) VALUES
('eduarda_tomaz@gmail.com','eduardatomazz'),
('silvia_dalcanabe@gmail.com', 'silviadalcanabe'),
('fabia_falirga@gmail.com', 'fabiafalirga');

INSERT INTO turma (nome_professor, cadastro_professor) VALUES
('Desenvolvimento de sistemas','SA01'),
('Redes de computadores', 'SN02'),
('Desenvolvimento de sistemas', 'B402');

INSERT INTO atividades (nome_professor, descricao_professor) VALUES
('PHP - Atividade 12','Faça um código em php de uma loja de roupas com todos os requisitos que voce acha interessante'),
('CSS - Atividade 12', 'Depois de fazer o PHP da atividade 12, estilize a página'),
('JAVASCRIPT - Atividade 12', 'Valide a página da loja de roupas');
