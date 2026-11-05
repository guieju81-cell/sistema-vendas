DROP DATABASE IF EXISTS bd_sistema_vendas;

CREATE DATABASE bd_sistema_vendas;

USE bd_sistema_vendas;

CREATE TABLE tbl_clientes (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) DEFAULT NULL,
    cidade VARCHAR(50) DEFAULT 'São Paulo',
    PRIMARY KEY (id),
    UNIQUE KEY email (email)
) ENGINE=InnoDB AUTO_INCREMENT=31;

INSERT INTO tbl_clientes VALUES
(1,'Ana Silva','ana.silva@email.com','São Paulo'),
(2,'Bruno Oliveira','bruno.oliveira@email.com','Campinas'),
(3,'Carlos Eduardo','carlos.eduardo@email.com','São Paulo'),
(4,'Daniela Rocha','daniela.rocha@email.com','Santos'),
(5,'Eduardo Santos','eduardo.santos@email.com','São Paulo'),
(6,'Fernanda Lima','fernanda.lima@email.com','Sorocaba'),
(7,'Gabriel Costa','gabriel.costa@email.com','São Paulo'),
(8,'Helena Martins','helena.martins@email.com','Ribeirão Preto'),
(9,'Igor Ferreira','igor.ferreira@email.com','São Paulo'),
(10,'Juliana Alves','juliana.alves@email.com','São José dos Campos'),
(11,'Lucas Pereira','lucas.pereira@email.com','São Paulo'),
(12,'Mariana Souza','mariana.souza@email.com','Osasco'),
(13,'Nicolas Rodrigues','nicolas.rodrigues@email.com','São Paulo'),
(14,'Olivia Barbosa','olivia.barbosa@email.com','Santo André'),
(15,'Paulo Henrique','paulo.henrique@email.com','São Paulo'),
(16,'Quintino Bocaiuva','quintino.bocaiuva@email.com','Campinas'),
(17,'Rafaela Castro','rafaela.castro@email.com','São Paulo'),
(18,'Sergio Ramos','sergio.ramos@email.com','Guarulhos'),
(19,'Tatiane Freitas','tatiane.freitas@email.com','São Paulo'),
(20,'Ubiratan Silva','ubiratan.silva@email.com','Piracicaba'),
(21,'Vanessa Camargo','vanessa.camargo@email.com','São Paulo'),
(22,'Wagner Montes','wagner.montes@email.com','Bauru'),
(23,'Xavier Prado','xavier.prado@email.com','São Paulo'),
(24,'Yara Mendes','yara.mendes@email.com','Jundiaí'),
(25,'Zuleica Gomes','zuleica.gomes@email.com','São Paulo'),
(26,'Arthur Pendelton','arthur.p@email.com','Taubaté'),
(27,'Beatriz Souza','beatriz.s@email.com','São Paulo'),
(28,'Caio Ribeiro','caio.r@email.com','Francas'),
(29,'Diana Prince','diana.p@email.com','São Paulo'),
(30,'Erick Jacquin','erick.j@email.com','São José do Rio Preto');

CREATE TABLE tbl_vendedores (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    percentual_comissao DECIMAL(5,2) DEFAULT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=11;

INSERT INTO tbl_vendedores VALUES
(1,'Roberto Carlos',5.00),
(2,'Patricia Abravanel',7.50),
(3,'Marcos Mion',6.00),
(4,'Galvão Bueno',8.00),
(5,'Ana Maria Braga',5.50),
(6,'Luciano Huck',6.50),
(7,'Sabrina Sato',7.00),
(8,'Celso Portiolli',4.50),
(9,'Eliana Michaelichen',8.50),
(10,'Fausto Silva',10.00);

CREATE TABLE tbl_produtos (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) DEFAULT NULL,
    categoria VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=151;

INSERT INTO tbl_produtos (id, nome, preco, categoria) VALUES
(1,'Notebook Dell Inspiron',3500.00,'Informática'),
(2,'Notebook Lenovo IdeaPad',2800.00,'Informática'),
(3,'MacBook Air M2',8999.00,'Informática'),
(4,'Monitor LG 29 UltraWide',1200.00,'Informática'),
(5,'Monitor Samsung 24 FHD',750.00,'Informática'),
(6,'Teclado Mecânico Redragon',250.00,'Informática'),
(7,'Teclado Sem Fio Logitech',180.00,'Informática'),
(8,'Mouse Gamer Razer',320.00,'Informática'),
(9,'Mouse Optico USB',35.00,'Informática'),
(10,'SSD Kingston 480GB',220.00,'Informática'),
(11,'SSD NVMe M.2 1TB',450.00,'Informática'),
(12,'HD Externo 2TB Seagate',380.00,'Informática'),
(13,'Memória RAM 8GB DDR4',160.00,'Informática'),
(14,'Memória RAM 16GB DDR5',390.00,'Informática'),
(15,'Placa de Vídeo RTX 3060',1890.00,'Informática'),
(16,'Placa de Vídeo RTX 4070',4200.00,'Informática'),
(17,'Processador Intel i5 12400',980.00,'Informática'),
(18,'Processador AMD Ryzen 5 5600X',920.00,'Informática'),
(19,'Placa Mãe Asus B550',780.00,'Informática'),
(20,'Fonte Corsair 650W',420.00,'Informática'),
(21,'Gabinete Gamer ATX',290.00,'Informática'),
(22,'Water Cooler 240mm',360.00,'Informática'),
(23,'Cabo HDMI 2.1 2m',45.00,'Informática'),
(24,'Webcam Logitech C920',380.00,'Informática'),
(25,'Roteador Wi-Fi 6 TP-Link',310.00,'Informática'),
(26,'Switch 8 Portas Gigabit',120.00,'Informática'),
(27,'Filtro de Linha 6 Tomadas',55.00,'Informática'),
(28,'Nobreak 1200VA SMS',790.00,'Informática'),
(29,'Headset Gamer HyperX',340.00,'Informática'),
(30,'Pendrive SanDisk 64GB',40.00,'Informática'),
(31,'Smartphone Samsung S23',3999.00,'Eletrônicos'),
(32,'Smartphone iPhone 14',4999.00,'Eletrônicos'),
(33,'Smartphone Xiaomi Redmi Note 12',1300.00,'Eletrônicos'),
(34,'Smartphone Motorola Edge 40',2100.00,'Eletrônicos'),
(35,'Tablet Samsung Galaxy Tab A8',1100.00,'Eletrônicos'),
(36,'iPad 10ª Geração 64GB',3499.00,'Eletrônicos'),
(37,'Smartwatch Apple Watch SE',2200.00,'Eletrônicos'),
(38,'Smartband Xiaomi Band 8',230.00,'Eletrônicos'),
(39,'Carregador Rápido USB-C',85.00,'Eletrônicos'),
(40,'Power Bank 20000mAh',150.00,'Eletrônicos'),
(41,'Smart TV 55 4K LG',2600.00,'Eletrônicos'),
(42,'Smart TV 50 4K Samsung',2200.00,'Eletrônicos'),
(43,'Smart TV 32 HD TCL',1050.00,'Eletrônicos'),
(44,'Soundbar JBL 110W',890.00,'Eletrônicos'),
(45,'Caixa de Som JBL Flip 6',650.00,'Eletrônicos'),
(46,'Fone Bluetooth Airpods 3',1399.00,'Eletrônicos'),
(47,'Fone Bluetooth JBL Wave 100',220.00,'Eletrônicos'),
(48,'Headphone Sony WH-1000XM4',1890.00,'Eletrônicos'),
(49,'Vitrola Retrô USB',450.00,'Eletrônicos'),
(50,'Projetor Portátil FHD',820.00,'Eletrônicos'),
(51,'Amazon Fire TV Stick',280.00,'Eletrônicos'),
(52,'Chromecast Google TV 4K',340.00,'Eletrônicos'),
(53,'Assistente Virtual Alexa Echo Dot 5',380.00,'Eletrônicos'),
(54,'Câmera de Segurança Wi-Fi',190.00,'Eletrônicos'),
(55,'Lâmpada Inteligente RGB',60.00,'Eletrônicos'),
(56,'Fechadura Eletrônica Digital',590.00,'Eletrônicos'),
(57,'Carregador por Indução',110.00,'Eletrônicos'),
(58,'Antena Digital Interna',35.00,'Eletrônicos'),
(59,'Cabo USB-C para Lightning',70.00,'Eletrônicos'),
(60,'Suporte para Celular Veicular',30.00,'Eletrônicos'),
(61,'Console PlayStation 5',3800.00,'Games'),
(62,'Console Xbox Series X',4200.00,'Games'),
(63,'Console Xbox Series S',2400.00,'Games'),
(64,'Console Nintendo Switch OLED',2100.00,'Games'),
(65,'Controle DualSense PS5',400.00,'Games'),
(66,'Controle Sem Fio Xbox',380.00,'Games'),
(67,'Controle Pro Nintendo Switch',350.00,'Games'),
(68,'Volante Logitech G29',1750.00,'Games'),
(69,'Jogo EA Sports FC 24 PS5',280.00,'Games'),
(70,'Jogo God of War Ragnarok PS5',250.00,'Games'),
(71,'Jogo Zelda Tears of the Kingdom',320.00,'Games'),
(72,'Jogo GTA V PS4',90.00,'Games'),
(73,'Jogo Spider-Man 2 PS5',290.00,'Games'),
(74,'Jogo Halo Infinite Xbox',180.00,'Games'),
(75,'Jogo Mario Kart 8 Deluxe',290.00,'Games'),
(76,'Cadeira Gamer ThunderX3',950.00,'Games'),
(77,'Mesa Gamer em L',480.00,'Games'),
(78,'Suporte para Headset RGB',85.00,'Games'),
(79,'Mousepad Extra Grande 90x40',70.00,'Games'),
(80,'Cartão Presente PSN R$100',100.00,'Games'),
(81,'Cartão Presente Xbox R$100',100.00,'Games'),
(82,'Óculos de Realidade Virtual Meta Quest 2',2600.00,'Games'),
(83,'Dock Station para Controles PS5',130.00,'Games'),
(84,'Cabo Carregador Controle 3m',40.00,'Games'),
(85,'Skin Protetora PS5',60.00,'Games'),
(86,'Volante com Pedais Thrustmaster',2900.00,'Games'),
(87,'Manete de Avião Joystick Hotas',580.00,'Games'),
(88,'Grip para Controle Switch',45.00,'Games'),
(89,'Case de Transporte Nintendo Switch',80.00,'Games'),
(90,'Kinect Sensor Xbox 360',150.00,'Games'),
(91,'Geladeira Brastemp Frost Free 375L',3100.00,'Eletrodomésticos'),
(92,'Fogão 4 Bocas Consul',850.00,'Eletrodomésticos'),
(93,'Micro-ondas Electrolux 20L',520.00,'Eletrodomésticos'),
(94,'Lava-Louças Brastemp 8 Serviços',1980.00,'Eletrodomésticos'),
(95,'Máquina de Lavar Electrolux 11kg',1750.00,'Eletrodomésticos'),
(96,'Aspirador de Pó Robô Mondial',450.00,'Eletrodomésticos'),
(97,'Aspirador Vertical 2 em 1',180.00,'Eletrodomésticos'),
(98,'Fritadeira Air Fryer Philips Walita',490.00,'Eletrodomésticos'),
(99,'Liquidificador Arno Powerix',140.00,'Eletrodomésticos'),
(100,'Batedeira Planetária Oster',320.00,'Eletrodomésticos'),
(101,'Cafeteira Nespresso Essenza',380.00,'Eletrodomésticos'),
(102,'Cafeteira Elétrica Três Corações',290.00,'Eletrodomésticos'),
(103,'Sanduicheira Grill Cadence',85.00,'Eletrodomésticos'),
(104,'Panela de Pressão Elétrica Rita Lobo',340.00,'Eletrodomésticos'),
(105,'Ferro de Passar a Vapor Arno',120.00,'Eletrodomésticos'),
(106,'Ventilador de Coluna Arno 40cm',220.00,'Eletrodomésticos'),
(107,'Ar Condicionado Split 12000 BTU Inverter',2100.00,'Eletrodomésticos'),
(108,'Purificador de Água Consul',410.00,'Eletrodomésticos'),
(109,'Chaleira Elétrica Inox 1.8L',95.00,'Eletrodomésticos'),
(110,'Torradeira Inox Oster',130.00,'Eletrodomésticos'),
(111,'Multiprocessador de Alimentos',260.00,'Eletrodomésticos'),
(112,'Adega Climatizada 12 Garrafas',890.00,'Eletrodomésticos'),
(113,'Freezer Horizontal 200L',1650.00,'Eletrodomésticos'),
(114,'Coifa de Parede Inox 60cm',750.00,'Eletrodomésticos'),
(115,'Cooktop 5 Bocas Indução',1290.00,'Eletrodomésticos'),
(116,'Forno Elétrico de Embutir 44L',620.00,'Eletrodomésticos'),
(117,'Umidificador de Ar Ultrassônico',110.00,'Eletrodomésticos'),
(118,'Aquecedor Elétrico Aak',130.00,'Eletrodomésticos'),
(119,'Moedor de Café Elétrico',160.00,'Eletrodomésticos'),
(120,'Mixer Multiuso com Acessórios',170.00,'Eletrodomésticos'),
(121,'Cadeira de Escritório Presidente',680.00,'Escritório'),
(122,'Mesa para Escritório em L',420.00,'Escritório'),
(123,'Gaveteiro Volante 3 Gavetas',280.00,'Escritório'),
(124,'Luminária de Mesa LED Articulada',75.00,'Escritório'),
(125,'Impressora Multifuncional Epson EcoTank',1150.00,'Escritório'),
(126,'Impressora Laser HP',890.00,'Escritório'),
(127,'Fragmentadora de Papel 8 Folhas',310.00,'Escritório'),
(128,'Calculadora Científica Casio',95.00,'Escritório'),
(129,'Organizador de Mesa em Acrílico',45.00,'Escritório'),
(130,'Rotulador Eletrônico Brother',230.00,'Escritório'),
(131,'Quadro Branco Magnético 120x90',140.00,'Escritório'),
(132,'Projetor de Slide Epson',2400.00,'Escritório'),
(133,'Plastificadora A4',180.00,'Escritório'),
(134,'Encadernadora de Espiral',220.00,'Escritório'),
(135,'Suporte para Monitor com Regulagem',85.00,'Escritório'),
(136,'Apoio Ergonomico para os Pés',65.00,'Escritório'),
(137,'Almofada Ergonômica Coccix',90.00,'Escritório'),
(138,'Kit 500 Folhas Sulfite A4',28.00,'Escritório'),
(139,'Caixa de Caneta Esferográfica 50 un',40.00,'Escritório'),
(140,'Grampeador de Mesa Média Capacidade',35.00,'Escritório'),
(141,'Furador de Papel 2 Furos',30.00,'Escritório'),
(142,'Quadro de Cortiça 90x60',60.00,'Escritório'),
(143,'Mochila Executiva para Notebook',180.00,'Escritório'),
(144,'Pasta Sanfonada 12 Divisórias',40.00,'Escritório'),
(145,'Tinta para Impressora Preta 100ml',50.00,'Escritório'),
(146,'Mousepad com Apoio em Gel',35.00,'Escritório'),
(147,'Fita Adesiva Larga Rolo 45m',12.00,'Escritório'),
(148,'Tesoura Profissional Aço Inox',25.00,'Escritório'),
(149,'Estilete Largo Profissional',18.00,'Escritório'),
(150,'Porta Crachá com Cordão Retrátil',15.00,'Escritório');

CREATE TABLE tbl_pedidos (
    id INT NOT NULL AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_vendedor INT NOT NULL,
    Status VARCHAR(20) DEFAULT 'Em Processamento',
    PRIMARY KEY (id),
    KEY id_cliente (id_cliente),
    KEY id_vendedor (id_vendedor),
    CONSTRAINT tbl_pedidos_ibfk_1
        FOREIGN KEY (id_cliente)
        REFERENCES tbl_clientes(id),
    CONSTRAINT tbl_pedidos_ibfk_2
        FOREIGN KEY (id_vendedor)
        REFERENCES tbl_vendedores(id)
) ENGINE=InnoDB AUTO_INCREMENT=51;

INSERT INTO tbl_pedidos VALUES
(1,1,1,'Entregue'),
(2,2,3,'Em Processamento'),
(3,3,2,'Enviado'),
(4,4,5,'Entregue'),
(5,5,4,'Cancelado'),
(6,6,6,'Entregue'),
(7,7,2,'Em Processamento'),
(8,8,7,'Entregue'),
(9,9,8,'Enviado'),
(10,10,10,'Entregue'),
(11,11,1,'Entregue'),
(12,12,3,'Cancelado'),
(13,13,9,'Em Processamento'),
(14,14,4,'Entregue'),
(15,15,5,'Enviado'),
(16,16,2,'Entregue'),
(17,17,6,'Entregue'),
(18,18,7,'Em Processamento'),
(19,19,8,'Entregue'),
(20,20,1,'Enviado'),
(21,21,10,'Entregue'),
(22,22,3,'Entregue'),
(23,23,5,'Cancelado'),
(24,24,4,'Em Processamento'),
(25,25,9,'Entregue'),
(26,26,2,'Enviado'),
(27,27,6,'Entregue'),
(28,28,7,'Entregue'),
(29,29,8,'Em Processamento'),
(30,30,1,'Entregue'),
(31,1,2,'Enviado'),
(32,3,4,'Entregue'),
(33,5,6,'Entregue'),
(34,7,8,'Em Processamento'),
(35,9,10,'Cancelado'),
(36,2,1,'Entregue'),
(37,4,3,'Entregue'),
(38,6,5,'Enviado'),
(39,8,7,'Entregue'),
(40,10,9,'Entregue'),
(41,11,2,'Em Processamento'),
(42,13,4,'Entregue'),
(43,15,6,'Enviado'),
(44,17,8,'Entregue'),
(45,19,10,'Entregue'),
(46,21,1,'Em Processamento'),
(47,23,3,'Entregue'),
(48,25,5,'Enviado'),
(49,27,7,'Entregue'),
(50,29,9,'Cancelado');

USE bd_sistema_vendas;

CREATE TABLE tbl_categorias (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB;

ALTER TABLE tbl_produtos
ADD COLUMN quantidade INT DEFAULT 10 AFTER preco;

USE bd_sistema_vendas;

SET SQL_SAFE_UPDATES = 0;

INSERT INTO tbl_categorias (nome)
SELECT DISTINCT categoria
FROM tbl_produtos;

ALTER TABLE tbl_produtos
ADD COLUMN id_categoria INT NULL AFTER preco;

UPDATE tbl_produtos p
INNER JOIN tbl_categorias c
    ON p.categoria = c.nome
SET p.id_categoria = c.id;

ALTER TABLE tbl_produtos
ADD CONSTRAINT fk_produto_categoria
FOREIGN KEY (id_categoria)
REFERENCES tbl_categorias(id);

UPDATE tbl_produtos
SET quantidade = CASE id
    WHEN 1 THEN 10
    WHEN 2 THEN 2
    WHEN 3 THEN 7
    WHEN 4 THEN 6
    WHEN 5 THEN 15
    WHEN 6 THEN 4
    WHEN 7 THEN 12
    WHEN 8 THEN 8
    WHEN 9 THEN 3
    WHEN 10 THEN 20
    WHEN 11 THEN 9
    WHEN 12 THEN 5
    WHEN 13 THEN 14
    WHEN 14 THEN 6
    WHEN 15 THEN 11
    WHEN 16 THEN 3
    WHEN 17 THEN 8
    WHEN 18 THEN 13
    WHEN 19 THEN 5
    WHEN 20 THEN 17
    WHEN 21 THEN 4
    WHEN 22 THEN 10
    WHEN 23 THEN 25
    WHEN 24 THEN 7
    WHEN 25 THEN 16
    WHEN 26 THEN 9
    WHEN 27 THEN 18
    WHEN 28 THEN 6
    WHEN 29 THEN 12
    WHEN 30 THEN 5
    WHEN 31 THEN 8
    WHEN 32 THEN 3
    WHEN 33 THEN 14
    WHEN 34 THEN 7
    WHEN 35 THEN 11
    WHEN 36 THEN 4
    WHEN 37 THEN 9
    WHEN 38 THEN 15
    WHEN 39 THEN 20
    WHEN 40 THEN 6
    WHEN 41 THEN 10
    WHEN 42 THEN 5
    WHEN 43 THEN 13
    WHEN 44 THEN 8
    WHEN 45 THEN 16
    WHEN 46 THEN 4
    WHEN 47 THEN 12
    WHEN 48 THEN 7
    WHEN 49 THEN 9
    WHEN 50 THEN 18
    WHEN 51 THEN 6
    WHEN 52 THEN 11
    WHEN 53 THEN 15
    WHEN 54 THEN 5
    WHEN 55 THEN 20
    WHEN 56 THEN 8
    WHEN 57 THEN 13
    WHEN 58 THEN 4
    WHEN 59 THEN 10
    WHEN 60 THEN 7
    WHEN 61 THEN 3
    WHEN 62 THEN 9
    WHEN 63 THEN 14
    WHEN 64 THEN 6
    WHEN 65 THEN 12
    WHEN 66 THEN 5
    WHEN 67 THEN 16
    WHEN 68 THEN 8
    WHEN 69 THEN 20
    WHEN 70 THEN 7
    WHEN 71 THEN 11
    WHEN 72 THEN 4
    WHEN 73 THEN 13
    WHEN 74 THEN 9
    WHEN 75 THEN 15
    WHEN 76 THEN 6
    WHEN 77 THEN 10
    WHEN 78 THEN 18
    WHEN 79 THEN 5
    WHEN 80 THEN 12
    WHEN 81 THEN 8
    WHEN 82 THEN 3
    WHEN 83 THEN 14
    WHEN 84 THEN 7
    WHEN 85 THEN 16
    WHEN 86 THEN 4
    WHEN 87 THEN 11
    WHEN 88 THEN 9
    WHEN 89 THEN 20
    WHEN 90 THEN 6
    WHEN 91 THEN 13
    WHEN 92 THEN 5
    WHEN 93 THEN 10
    WHEN 94 THEN 8
    WHEN 95 THEN 15
    WHEN 96 THEN 7
    WHEN 97 THEN 12
    WHEN 98 THEN 4
    WHEN 99 THEN 18
    WHEN 100 THEN 9
    WHEN 101 THEN 14
    WHEN 102 THEN 6
    WHEN 103 THEN 11
    WHEN 104 THEN 5
    WHEN 105 THEN 16
    WHEN 106 THEN 8
    WHEN 107 THEN 3
    WHEN 108 THEN 13
    WHEN 109 THEN 10
    WHEN 110 THEN 7
    WHEN 111 THEN 20
    WHEN 112 THEN 6
    WHEN 113 THEN 12
    WHEN 114 THEN 9
    WHEN 115 THEN 15
    WHEN 116 THEN 4
    WHEN 117 THEN 11
    WHEN 118 THEN 8
    WHEN 119 THEN 17
    WHEN 120 THEN 5
    WHEN 121 THEN 14
    WHEN 122 THEN 7
    WHEN 123 THEN 10
    WHEN 124 THEN 6
    WHEN 125 THEN 18
    WHEN 126 THEN 9
    WHEN 127 THEN 13
    WHEN 128 THEN 4
    WHEN 129 THEN 12
    WHEN 130 THEN 8
    WHEN 131 THEN 16
    WHEN 132 THEN 5
    WHEN 133 THEN 11
    WHEN 134 THEN 20
    WHEN 135 THEN 7
    WHEN 136 THEN 14
    WHEN 137 THEN 6
    WHEN 138 THEN 10
    WHEN 139 THEN 15
    WHEN 140 THEN 3
    WHEN 141 THEN 9
    WHEN 142 THEN 13
    WHEN 143 THEN 5
    WHEN 144 THEN 17
    WHEN 145 THEN 8
    WHEN 146 THEN 12
    WHEN 147 THEN 4
    WHEN 148 THEN 16
    WHEN 149 THEN 7
    WHEN 150 THEN 10
END;

USE bd_sistema_vendas;

ALTER TABLE tbl_produtos
DROP COLUMN categoria;

ALTER TABLE tbl_produtos
MODIFY COLUMN id_categoria INT NOT NULL;

ALTER TABLE tbl_produtos
MODIFY COLUMN quantidade INT NOT NULL;

ALTER TABLE tbl_produtos
ADD CONSTRAINT chk_quantidade
CHECK (quantidade >= 0);

ALTER TABLE tbl_produtos
MODIFY COLUMN preco DECIMAL(10,2) NOT NULL;

ALTER TABLE tbl_vendedores
MODIFY COLUMN percentual_comissao DECIMAL(5,2) NOT NULL;

ALTER TABLE tbl_vendedores
ADD CONSTRAINT chk_percentual_comissao
CHECK (percentual_comissao >= 0 AND percentual_comissao <= 100);

ALTER TABLE tbl_categorias
MODIFY COLUMN nome VARCHAR(50) NOT NULL;

ALTER TABLE tbl_categorias
ADD CONSTRAINT uk_categoria_nome
UNIQUE (nome);

USE bd_sistema_vendas;

ALTER TABLE tbl_pedidos
RENAME COLUMN Status TO status;

CREATE TABLE tbl_status_pedido (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY nome (nome)
) ENGINE=InnoDB;

INSERT INTO tbl_status_pedido (nome)
SELECT DISTINCT status
FROM tbl_pedidos;

ALTER TABLE tbl_pedidos
ADD COLUMN id_status INT NULL AFTER id_vendedor;

UPDATE tbl_pedidos p
INNER JOIN tbl_status_pedido s
    ON p.status = s.nome
SET p.id_status = s.id;

ALTER TABLE tbl_pedidos
ADD CONSTRAINT fk_pedido_status
FOREIGN KEY (id_status)
REFERENCES tbl_status_pedido(id);

ALTER TABLE tbl_pedidos
MODIFY COLUMN id_status INT NOT NULL;

ALTER TABLE tbl_pedidos
DROP COLUMN status;

USE bd_sistema_vendas;


-- 1. Produtos com preço maior que R$ 1.000
-- Retorna 33 produtos.
-- A coluna id_categoria apresenta o identificador da categoria,
-- mantendo a estrutura normalizada.
-- O ID 1 corresponde a Informática,
-- o ID 2 corresponde a Eletrônicos,
-- o ID 3 corresponde a Games,
-- o ID 4 corresponde a Eletrodomésticos
-- e o ID 5 corresponde a Escritório.
-- Os produtos são apresentados do maior para o menor preço.
-- O produto mais caro retornado é o MacBook Air M2, com R$ 8.999,00.

SELECT
    p.nome,
    p.preco,
    p.id_categoria,
    p.quantidade
FROM tbl_produtos p
WHERE p.preco > 1000
ORDER BY p.preco DESC;


-- 2. Produtos da categoria Informática com preço entre R$ 200 e R$ 1.500
-- Retorna 10 produtos.
-- A categoria Informática possui o id_categoria = 1.
-- Portanto, a consulta utiliza o valor 1 para identificar a categoria,
-- em vez de armazenar o texto 'Informática' na tabela de produtos.
-- Os preços retornados estão entre R$ 220,00 e R$ 1.200,00.

SELECT
    p.nome,
    p.preco,
    p.id_categoria,
    p.quantidade
FROM tbl_produtos p
WHERE p.id_categoria = 1
  AND p.preco BETWEEN 200 AND 1500
ORDER BY p.preco;


-- 3. Clientes de Campinas, Santos ou Sorocaba cujo nome começa com A
-- Retorna 0 registros.
-- Não existe, nos dados cadastrados, um cliente que atenda
-- simultaneamente às duas condições:
-- morar em Campinas, Santos ou Sorocaba
-- e possuir nome começando com a letra A.

SELECT
    id,
    nome,
    email,
    cidade
FROM tbl_clientes
WHERE cidade IN ('Campinas', 'Santos', 'Sorocaba')
  AND nome LIKE 'A%';


-- 4. Estatísticas dos preços dos produtos
-- Retorna uma única linha.
-- Quantidade total de produtos: 150.
-- Preço médio: aproximadamente R$ 792,15.
-- Menor preço: R$ 12,00.
-- Maior preço: R$ 8.999,00.
-- COUNT conta os produtos.
-- AVG calcula o preço médio.
-- MIN identifica o menor preço.
-- MAX identifica o maior preço.

SELECT
    COUNT(*) AS quantidade_produtos,
    AVG(preco) AS preco_medio,
    MIN(preco) AS menor_preco,
    MAX(preco) AS maior_preco
FROM tbl_produtos;