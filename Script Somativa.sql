create database db_RedeSocial;
use db_RedeSocial;

CREATE TABLE Usuario (
    Codigo INT PRIMARY KEY AUTO_INCREMENT,
    Nickname VARCHAR(50),
    Foto_Perfil BLOB,
    Biografia TEXT
);

CREATE TABLE Mensagem (
    Codigo INT PRIMARY KEY AUTO_INCREMENT,
    Texto varchar(300),
    Horario_Enviada DATETIME,
    Horario_Recebida DATETIME,
    Horario_Lida DATETIME
);

CREATE TABLE Conexoes (
    Codigo INT PRIMARY KEY AUTO_INCREMENT,
    Codigo_Profissional INT,
    Codigo_Mensagem INT,
    FOREIGN KEY (Codigo_Profissional) REFERENCES Usuario(Codigo),
    FOREIGN KEY (Codigo_Mensagem) REFERENCES Mensagem(Codigo)
);
