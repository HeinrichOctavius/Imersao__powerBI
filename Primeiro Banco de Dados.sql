create database exerciciosComplementares;
use exerciciosComplementares;

create table Cliente(
codigo Int NOT NULL,
nome Varchar(50),
endereço Varchar(100),
CPF Char(11) NOT NULL, 
telefone Char(11),
primary key	(codigo)
);

create table Vendedor(
codigo Int NOT NULL,
nome Varchar(50),
salario Decimal(7,2),
PRIMARY KEY (codigo)
);

create table Produto(
id Int NOT NULL,
unidade Char(3),
descricao Varchar(50),
valorUnitario Decimal(7,2),
PRIMARY KEY (id)
);

create table Pedido(
numPedido Int NOT NULL,
prazoEntrega date,
codigoCliente Int,
codigoVendedor Int,
PRIMARY KEY (nunPedido),
FOREIGN KEY (codigoCliente) REFERENCES Cliente(codigo),
FOREIGN KEY (codigoVendedor) REFERENCES	Vendedor(codigo)
);

create table ItemPedido(
numeroPedido Int NOT NULL,
idProduto Int NOT NULL,
quantidade Int,
PRIMARY KEY (numeroPedido, idProduto),
FOREIGN KEY (numeroPedido) REFERENCES Pedido(numPedido),
FOREIGN KEY (idProduto) REFERENCES Produto(id)
)