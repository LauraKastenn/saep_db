CREATE DATABASE saep_db;
USE saep_db;

CREATE TABLE professor (
	id_professor INT AUTO_INCREMENT PRIMARY KEY,
	email_professor VARCHAR(50) NOT NULL,
    senha_professor VARCHAR(10) NOT NULL
);

CREATE TABLE turma (
	id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_turma VARCHAR(50) NOT NULL,
    professor_id INT,
    FOREIGN KEY (professor_id) REFERENCES professor(id_professor)
)
;

CREATE TABLE atividades (
    id_atividade INT AUTO_INCREMENT PRIMARY KEY,
    nome_atividade VARCHAR(50) NOT NULL,
    turma_id INT,
    FOREIGN KEY (turma_id) REFERENCES turma(id__turma)
)

;
INSERT INTO professor (email_professor, senha_professor) VALUES
('eduarda_tomaz@gmail.com','eduardatomazz'),
('silvia_dalcanabe@gmail.com', 'silviadalcanabe'),
('fabia_falirga@gmail.com', 'fabiafalirga');

INSERT INTO turma (nome_turma, professor_id) VALUES
('Desenvolvimento de sistemas',1),
('Redes de computadores', 2),
('Desenvolvimento de sistemas', 3);

INSERT INTO atividades (nome_atividade, turma_id) VALUES
('PHP - Atividade 12',1),
('CSS - Atividade 12', 2),
('JAVASCRIPT - Atividade 12', 3);
