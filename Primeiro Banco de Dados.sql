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
);

insert into Cliente
(codigo, nome, endereço, cpf, telefone)
values
('0001','Otavio Henrique','rua principal','01002003044', '11112222' ),
('0002','Carmem Lais', 'Rua Matriz', '01002003041', '22221111'),
('0003','Batuque Verde', 'Rua Musical', '01101145412', '41252365'),
('0004','Vigoroso Gil', 'Rua Big Brother','22222222222', '14151213'),
('0005','Juliete Azul', 'Rua Ganhadora', '99999999999', '74856985');

insert into Vendedor
(codigo, nome, salario)
values
('001', 'Telma Telpasso', '2000.00'),
('002','Joelma Calipso','5000.00'),
('003','Britney Jeans','4000.00'),
('050','Elza Cantora','6000.00'),
('020','Lula presidente','2213.13');

insert into Produto
(id, unidade, descricao, valorUnitario)
values
('0000001','013','souvenir chave mestra de toda brasilia ','13.13'),
('123544','001','Galão Tintaoleo com 40L cores variadas','45.63'),
('125489','002','Tv fhd 60inch Samsung Melhor tv do mercado com tecnologia avassaladora','3000.00'),
('259123','003','Whey Protein 400g pra ficar bombadao, feito com leite do mst','99,90'),
('451369','003','Ração Proline anti alergica porte medio adulto','160,00');

insert into Pedido
(numPedido, prazoEntrega, codigoCliente, codigoVendedor)
values
('5421321','2023/01/01','0005','020'),
('5421322','2022/12/30','0001','050'),
('5421323','2022/11/01','0004','003'),
('5421324','2022/10/20','0003','003'),
('5421325','2022/11/01','0002','001');

insert into ItemPedido
(numPedido, idProduto, quantidade)
values
('5421321','0000001','13'),
('5421322','123544','05'),
('5421323','125489','01'),
('5421324','259123','03'),
('5421325','451369','02');
