CREATE DATABASE OficinaMecanica;

USE OficinaMecanica;

CREATE TABLE Clientes (
    CPF VARCHAR(11),
    CNPJ VARCHAR(14),
    Nome VARCHAR(100),
    Idade INT,
    Contato VARCHAR(15),
    PRIMARY KEY (CPF)
);

CREATE TABLE Mecanicos (
    ID INT AUTO_INCREMENT,
    Nome VARCHAR(100),
    Endereco VARCHAR(200),
    Contato VARCHAR(15),
    PRIMARY KEY (ID)
);

CREATE TABLE Pedidos (
    ID INT AUTO_INCREMENT,
    DescricaoVeiculo VARCHAR(200),
    Servicos VARCHAR(500),
    ClienteCPF VARCHAR(11),
    MecanicoID INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (ClienteCPF) REFERENCES Clientes(CPF),
    FOREIGN KEY (MecanicoID) REFERENCES Mecanicos(ID)
);

CREATE TABLE Precos (
    ID INT AUTO_INCREMENT,
    MaoDeObra FLOAT,
    Pecas FLOAT,
    TempoGasto TIME,
    PedidoID INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(ID)
);

CREATE TABLE OrdensServico (
    NumeroOS INT,
    StatusOS VARCHAR(20),
    DataEmissao DATE,
    DataFinalizacao DATE,
    Valor FLOAT,
    PedidoID INT,
    PRIMARY KEY (NumeroOS),
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(ID)
);
