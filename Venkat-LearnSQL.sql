USE [learnsqlDB3]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 6/7/2023 1:55:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [varchar](255) NULL,
	[Description] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 6/7/2023 1:55:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[CustomerID] [int] NOT NULL,
	[CustomerName] [varchar](255) NULL,
	[ContactName] [varchar](255) NULL,
	[Address] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[PostalCode] [varchar](255) NULL,
	[Country] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 6/7/2023 1:55:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[EmployeeID] [int] NOT NULL,
	[LastName] [varchar](255) NULL,
	[FirstName] [varchar](255) NULL,
	[BirthDate] [datetime] NULL,
	[Photo] [varchar](255) NULL,
	[Notes] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderdetails]    Script Date: 6/7/2023 1:55:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderdetails](
	[OrderDetailID] [int] NOT NULL,
	[OrderID] [float] NULL,
	[ProductID] [float] NULL,
	[Quantity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 6/7/2023 1:55:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[OrderID] [int] NOT NULL,
	[CustomerID] [varchar](255) NULL,
	[EmployeeID] [varchar](255) NULL,
	[OrderDate] [varchar](255) NULL,
	[ShipperID] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 6/7/2023 1:55:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[ProductID] [int] NOT NULL,
	[ProductName] [varchar](255) NULL,
	[SupplierID] [float] NULL,
	[CategoryID] [float] NULL,
	[Unit] [varchar](255) NULL,
	[Price] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shippers]    Script Date: 6/7/2023 1:55:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shippers](
	[ShipperID] [int] NOT NULL,
	[ShipperName] [varchar](255) NULL,
	[Phone] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[suppliers]    Script Date: 6/7/2023 1:55:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[suppliers](
	[SupplierID] [int] NOT NULL,
	[SupplierName] [varchar](255) NULL,
	[ContactName] [varchar](255) NULL,
	[Address] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[PostalCode] [float] NULL,
	[Country] [varchar](255) NULL,
	[Phone] [varchar](255) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[categories] ([CategoryID], [CategoryName], [Description]) VALUES (1,'Beverages','Soft drinks, coffees, teas, beers, and ales')
GO
INSERT [dbo].[categories] ([CategoryID], [CategoryName], [Description]) VALUES (2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings')
GO
INSERT [dbo].[categories] ([CategoryID], [CategoryName], [Description]) VALUES (3,'Confections','Desserts, candies, and sweet breads')
GO
INSERT [dbo].[categories] ([CategoryID], [CategoryName], [Description]) VALUES (4,'Dairy Products','Cheeses')
GO
INSERT [dbo].[categories] ([CategoryID], [CategoryName], [Description]) VALUES (5,'Grains/Cereals','Breads, crackers, pasta, and cereal')
GO
INSERT [dbo].[categories] ([CategoryID], [CategoryName], [Description]) VALUES (6,'Meat/Poultry','Prepared meats')
GO
INSERT [dbo].[categories] ([CategoryID], [CategoryName], [Description]) VALUES (7,'Produce','Dried fruit and bean curd')
GO
INSERT [dbo].[categories] ([CategoryID], [CategoryName], [Description]) VALUES (8,'Seafood','Seaweed and fish')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (1,'Alfreds Futterkiste ','Maria Anders ','Obere Str. 57 ','Berlin ','12209 ','Germany ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (2,'Ana Trujillo Emparedados y helados ','Ana Trujillo ','Avda. de la Constitución 2222 ','México D.F. ','05021 ','Mexico ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (3,'Antonio Moreno Taquería ','Antonio Moreno ','Mataderos 2312 ','México D.F. ','05023 ','Mexico ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (4,'Around the Horn ','Thomas Hardy ','120 Hanover Sq. ','London ','WA1 1DP ','UK ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (5,'Berglunds snabbköp ','Christina Berglund ','Berguvsvägen 8 ','Luleå ','S-958 22 ','Sweden ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (6,'Blauer See Delikatessen ','Hanna Moos ','Forsterstr. 57 ','Mannheim ','68306 ','Germany ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (7,'Blondel père et fils ','Frédérique Citeaux ','24, place Kléber ','Strasbourg ','67000 ','France ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (8,'Bólido Comidas preparadas ','Martín Sommer ','C/ Araquil, 67 ','Madrid ','28023 ','Spain ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (9,'Bon app'' ','Laurence Lebihans ','12, rue des Bouchers ','Marseille ','13008 ','France ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (10,'Bottom-Dollar Marketse ','Elizabeth Lincoln ','23 Tsawassen Blvd. ','Tsawassen ','T2F 8M4 ','Canada ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (11,'B''s Beverages ','Victoria Ashworth ','Fauntleroy Circus ','London ','EC2 5NT ','UK ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (12,'Cactus Comidas para llevar ','Patricio Simpson ','Cerrito 333 ','Buenos Aires ','1010 ','Argentina ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (13,'Centro comercial Moctezuma ','Francisco Chang ','Sierras de Granada 9993 ','México D.F. ','05022 ','Mexico ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (14,'Chop-suey Chinese ','Yang Wang ','Hauptstr. 29 ','Bern ','3012 ','Switzerland ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (15,'Comércio Mineiro ','Pedro Afonso ','Av. dos Lusíadas, 23 ','São Paulo ','05432-043 ','Brazil ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (16,'Consolidated Holdings ','Elizabeth Brown ','Berkeley Gardens 12 Brewery  ','London ','WX1 6LT ','UK ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (17,'Drachenblut Delikatessend ','Sven Ottlieb ','Walserweg 21 ','Aachen ','52066 ','Germany ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (18,'Du monde entier ','Janine Labrune ','67, rue des Cinquante Otages ','Nantes ','44000 ','France ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (19,'Eastern Connection ','Ann Devon ','35 King George ','London ','WX3 6FW ','UK ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (20,'Ernst Handel ','Roland Mendel ','Kirchgasse 6 ','Graz ','8010 ','Austria ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (21,'Familia Arquibaldo ','Aria Cruz ','Rua Orós, 92 ','São Paulo ','05442-030 ','Brazil ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (22,'FISSA Fabrica Inter. Salchichas S.A. ','Diego Roel ','C/ Moralzarzal, 86 ','Madrid ','28034 ','Spain ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (23,'Folies gourmandes ','Martine Rancé ','184, chaussée de Tournai ','Lille ','59000 ','France ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (24,'Folk och fä HB ','Maria Larsson ','Åkergatan 24 ','Bräcke ','S-844 67 ','Sweden ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (25,'Frankenversand ','Peter Franken ','Berliner Platz 43 ','München ','80805 ','Germany ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (26,'France restauration ','Carine Schmitt ','54, rue Royale ','Nantes ','44000 ','France ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (27,'Franchi S.p.A. ','Paolo Accorti ','Via Monte Bianco 34 ','Torino ','10100 ','Italy ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (28,'Furia Bacalhau e Frutos do Mar ','Lino Rodriguez  ','Jardim das rosas n. 32 ','Lisboa ','1675 ','Portugal ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (29,'Galería del gastrónomo ','Eduardo Saavedra ','Rambla de Cataluña, 23 ','Barcelona ','08022 ','Spain ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (30,'Godos Cocina Típica ','José Pedro Freyre ','C/ Romero, 33 ','Sevilla ','41101 ','Spain ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (31,'Gourmet Lanchonetes ','André Fonseca ','Av. Brasil, 442 ','Campinas ','04876-786 ','Brazil ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (32,'Great Lakes Food Market ','Howard Snyder ','2732 Baker Blvd. ','Eugene ','97403 ','USA ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (33,'GROSELLA-Restaurante ','Manuel Pereira ','5ª Ave. Los Palos Grandes ','Caracas ','1081 ','Venezuela ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (34,'Hanari Carnes ','Mario Pontes ','Rua do Paço, 67 ','Rio de Janeiro ','05454-876 ','Brazil ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (35,'HILARIÓN-Abastos ','Carlos Hernández ','Carrera 22 con Ave. Carlos Soublette #8-35 ','San Cristóbal ','5022 ','Venezuela ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (36,'Hungry Coyote Import Store ','Yoshi Latimer ','City Center Plaza 516 Main St. ','Elgin ','97827 ','USA ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (37,'Hungry Owl All-Night Grocers ','Patricia McKenna ','8 Johnstown Road ','Cork ', NULL,'Ireland ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (38,'Island Trading ','Helen Bennett ','Garden House Crowther Way ','Cowes ','PO31 7PJ ','UK ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (39,'Königlich Essen ','Philip Cramer ','Maubelstr. 90 ','Brandenburg ','14776 ','Germany ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (40,'La corne d''abondance ','Daniel Tonini ','67, avenue de l''Europe ','Versailles ','78000 ','France ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (41,'La maison d''Asie ','Annette Roulet ','1 rue Alsace-Lorraine ','Toulouse ','31000 ','France ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (42,'Laughing Bacchus Wine Cellars ','Yoshi Tannamuri ','1900 Oak St. ','Vancouver ','V3F 2K1 ','Canada ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (43,'Lazy K Kountry Store ','John Steel ','12 Orchestra Terrace ','Walla Walla ','99362 ','USA ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (44,'Lehmanns Marktstand ','Renate Messner ','Magazinweg 7 ','Frankfurt a.M.  ','60528 ','Germany ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (45,'Let''s Stop N Shop ','Jaime Yorres ','87 Polk St. Suite 5 ','San Francisco ','94117 ','USA ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (46,'LILA-Supermercado ','Carlos González ','Carrera 52 con Ave. Bolívar #65-98 Llano Largo ','Barquisimeto ','3508 ','Venezuela ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (47,'LINO-Delicateses ','Felipe Izquierdo ','Ave. 5 de Mayo Porlamar ','I. de Margarita ','4980 ','Venezuela ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (48,'Lonesome Pine Restaurant ','Fran Wilson ','89 Chiaroscuro Rd. ','Portland ','97219 ','USA ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (49,'Magazzini Alimentari Riuniti ','Giovanni Rovelli ','Via Ludovico il Moro 22 ','Bergamo ','24100 ','Italy ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (50,'Maison Dewey ','Catherine Dewey ','Rue Joseph-Bens 532 ','Bruxelles ','B-1180 ','Belgium ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (51,'Mère Paillarde ','Jean Fresnière ','43 rue St. Laurent ','Montréal ','H1J 1C3 ','Canada ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (52,'Morgenstern Gesundkost ','Alexander Feuer ','Heerstr. 22 ','Leipzig ','04179 ','Germany ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (53,'North/South ','Simon Crowther ','South House 300 Queensbridge ','London ','SW7 1RZ ','UK ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (54,'Océano Atlántico Ltda. ','Yvonne Moncada ','Ing. Gustavo Moncada 8585 Piso 20-A ','Buenos Aires ','1010 ','Argentina ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (55,'Old World Delicatessen ','Rene Phillips ','2743 Bering St. ','Anchorage ','99508 ','USA ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (56,'Ottilies Käseladen ','Henriette Pfalzheim ','Mehrheimerstr. 369 ','Köln ','50739 ','Germany ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (57,'Paris spécialités ','Marie Bertrand ','265, boulevard Charonne ','Paris ','75012 ','France ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (58,'Pericles Comidas clásicas ','Guillermo Fernández ','Calle Dr. Jorge Cash 321 ','México D.F. ','05033 ','Mexico ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (59,'Piccolo und mehr ','Georg Pipps ','Geislweg 14 ','Salzburg ','5020 ','Austria ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (60,'Princesa Isabel Vinhoss ','Isabel de Castro ','Estrada da saúde n. 58 ','Lisboa ','1756 ','Portugal ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (61,'Que Delícia ','Bernardo Batista ','Rua da Panificadora, 12 ','Rio de Janeiro ','02389-673 ','Brazil ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (62,'Queen Cozinha ','Lúcia Carvalho ','Alameda dos Canàrios, 891 ','São Paulo ','05487-020 ','Brazil ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (63,'QUICK-Stop ','Horst Kloss ','Taucherstraße 10 ','Cunewalde ','01307 ','Germany ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (64,'Rancho grande ','Sergio Gutiérrez ','Av. del Libertador 900 ','Buenos Aires ','1010 ','Argentina ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (65,'Rattlesnake Canyon Grocery ','Paula Wilson ','2817 Milton Dr. ','Albuquerque ','87110 ','USA ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (66,'Reggiani Caseifici ','Maurizio Moroni ','Strada Provinciale 124 ','Reggio Emilia ','42100 ','Italy ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (67,'Ricardo Adocicados ','Janete Limeira ','Av. Copacabana, 267 ','Rio de Janeiro ','02389-890 ','Brazil ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (68,'Richter Supermarkt ','Michael Holz ','Grenzacherweg 237 ','Genève ','1203 ','Switzerland ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (69,'Romero y tomillo ','Alejandra Camino ','Gran Vía, 1 ','Madrid ','28001 ','Spain ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (70,'Santé Gourmet ','Jonas Bergulfsen ','Erling Skakkes gate 78 ','Stavern ','4110 ','Norway ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (71,'Save-a-lot Markets ','Jose Pavarotti ','187 Suffolk Ln. ','Boise ','83720 ','USA ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (72,'Seven Seas Imports ','Hari Kumar ','90 Wadhurst Rd. ','London ','OX15 4NB ','UK ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (73,'Simons bistro ','Jytte Petersen ','Vinbæltet 34 ','København ','1734 ','Denmark ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (74,'Spécialités du monde ','Dominique Perrier ','25, rue Lauriston ','Paris ','75016 ','France ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (75,'Split Rail Beer & Ale ','Art Braunschweiger ','P.O. Box 555 ','Lander ','82520 ','USA ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (76,'Suprêmes délices ','Pascale Cartrain ','Boulevard Tirou, 255 ','Charleroi ','B-6000 ','Belgium ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (77,'The Big Cheese ','Liz Nixon ','89 Jefferson Way Suite 2 ','Portland ','97201 ','USA ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (78,'The Cracker Box ','Liu Wong ','55 Grizzly Peak Rd. ','Butte ','59801 ','USA ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (79,'Toms Spezialitäten ','Karin Josephs ','Luisenstr. 48 ','Münster ','44087 ','Germany ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (80,'Tortuga Restaurante ','Miguel Angel Paolino ','Avda. Azteca 123 ','México D.F. ','05033 ','Mexico ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (81,'Tradição Hipermercados ','Anabela Domingues ','Av. Inês de Castro, 414 ','São Paulo ','05634-030 ','Brazil ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (82,'Trail''s Head Gourmet Provisioners ','Helvetius Nagy ','722 DaVinci Blvd. ','Kirkland ','98034 ','USA ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (83,'Vaffeljernet ','Palle Ibsen ','Smagsløget 45 ','Århus ','8200 ','Denmark ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (84,'Victuailles en stock ','Mary Saveley ','2, rue du Commerce ','Lyon ','69004 ','France ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (85,'Vins et alcools Chevalier ','Paul Henriot ','59 rue de l''Abbaye ','Reims ','51100 ','France ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (86,'Die Wandernde Kuh ','Rita Müller ','Adenauerallee 900 ','Stuttgart ','70563 ','Germany ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (87,'Wartian Herkku ','Pirkko Koskitalo ','Torikatu 38 ','Oulu ','90110 ','Finland ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (88,'Wellington Importadora ','Paula Parente ','Rua do Mercado, 12 ','Resende ','08737-363 ','Brazil ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (89,'White Clover Markets ','Karl Jablonski ','305 - 14th Ave. S. Suite 3B ','Seattle ','98128 ','USA ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (90,'Wilman Kala ','Matti Karttunen ','Keskuskatu 45 ','Helsinki ','21240 ','Finland ')
GO
INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (91,'Wolski ','Zbyszek ','ul. Filtrowa 68 ','Walla ','01-012 ','Poland ')
GO
INSERT [dbo].[employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo], [Notes]) VALUES (1,'Davolio','Nancy', CAST(N'1968-12-08T00:00:00.000' AS DateTime),'EmpID1.pic','Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of ''Toastmasters International''.')
GO
INSERT [dbo].[employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo], [Notes]) VALUES (2,'Fuller','Andrew', CAST(N'1952-02-19T00:00:00.000' AS DateTime),'EmpID2.pic','Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales. Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.')
GO
INSERT [dbo].[employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo], [Notes]) VALUES (3,'Leverling','Janet', CAST(N'1963-08-30T00:00:00.000' AS DateTime),'EmpID3.pic','Janet has a BS degree in chemistry from Boston College). She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative.')
GO
INSERT [dbo].[employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo], [Notes]) VALUES (4,'Peacock','Margaret', CAST(N'1958-09-19T00:00:00.000' AS DateTime),'EmpID4.pic','Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.')
GO
INSERT [dbo].[employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo], [Notes]) VALUES (5,'Buchanan','Steven', CAST(N'1955-03-04T00:00:00.000' AS DateTime),'EmpID5.pic','Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager. Mr. Buchanan has completed the courses ''Successful Telemarketing'' and ''International Sales Management''. He is fluent in French.')
GO
INSERT [dbo].[employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo], [Notes]) VALUES (6,'Suyama','Michael', CAST(N'1963-07-02T00:00:00.000' AS DateTime),'EmpID6.pic','Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing). He has also taken the courses ''Multi-Cultural Selling'' and ''Time Management for the Sales Professional''. He is fluent in Japanese and can read and write French, Portuguese, and Spanish.')
GO
INSERT [dbo].[employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo], [Notes]) VALUES (7,'King','Robert', CAST(N'1960-05-29T00:00:00.000' AS DateTime),'EmpID7.pic','Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled ''Selling in Europe'', he was transferred to the London office.')
GO
INSERT [dbo].[employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo], [Notes]) VALUES (8,'Callahan','Laura', CAST(N'1958-01-09T00:00:00.000' AS DateTime),'EmpID8.pic','Laura received a BA in psychology from the University of Washington. She has also completed a course in business French. She reads and writes French.')
GO
INSERT [dbo].[employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo], [Notes]) VALUES (9,'Dodsworth','Anne', CAST(N'1969-07-02T00:00:00.000' AS DateTime),'EmpID9.pic','Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German.')
GO
INSERT [dbo].[employees] ([EmployeeID], [LastName], [FirstName], [BirthDate], [Photo], [Notes]) VALUES (10,'West','Adam', CAST(N'1928-09-19T00:00:00.000' AS DateTime),'EmpID10.pic','An old chum.')
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (1, 10248, 11, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (2, 10248, 42, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (3, 10248, 72, 5)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (4, 10249, 14, 9)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (5, 10249, 51, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (6, 10250, 41, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (7, 10250, 51, 35)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (8, 10250, 65, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (9, 10251, 22, 6)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (10, 10251, 57, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (11, 10251, 65, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (12, 10252, 20, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (13, 10252, 33, 25)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (14, 10252, 60, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (15, 10253, 31, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (16, 10253, 39, 42)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (17, 10253, 49, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (18, 10254, 24, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (19, 10254, 55, 21)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (20, 10254, 74, 21)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (21, 10255, 2, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (22, 10255, 16, 35)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (23, 10255, 36, 25)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (24, 10255, 59, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (25, 10256, 53, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (26, 10256, 77, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (27, 10257, 27, 25)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (28, 10257, 39, 6)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (29, 10257, 77, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (30, 10258, 2, 50)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (31, 10258, 5, 65)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (32, 10258, 32, 6)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (33, 10259, 21, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (34, 10259, 37, 1)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (35, 10260, 41, 16)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (36, 10260, 57, 50)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (37, 10260, 62, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (38, 10260, 70, 21)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (39, 10261, 21, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (40, 10261, 35, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (41, 10262, 5, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (42, 10262, 7, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (43, 10262, 56, 2)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (44, 10263, 16, 60)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (45, 10263, 24, 28)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (46, 10263, 30, 60)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (47, 10263, 74, 36)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (48, 10264, 2, 35)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (49, 10264, 41, 25)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (50, 10265, 17, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (51, 10265, 70, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (52, 10266, 12, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (53, 10267, 40, 50)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (54, 10267, 59, 70)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (55, 10267, 76, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (56, 10268, 29, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (57, 10268, 72, 4)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (58, 10269, 33, 60)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (59, 10269, 72, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (60, 10270, 36, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (61, 10270, 43, 25)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (62, 10271, 33, 24)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (63, 10272, 20, 6)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (64, 10272, 31, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (65, 10272, 72, 24)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (66, 10273, 10, 24)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (67, 10273, 31, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (68, 10273, 33, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (69, 10273, 40, 60)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (70, 10273, 76, 33)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (71, 10274, 71, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (72, 10274, 72, 7)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (73, 10275, 24, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (74, 10275, 59, 6)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (75, 10276, 10, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (76, 10276, 13, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (77, 10277, 28, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (78, 10277, 62, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (79, 10278, 44, 16)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (80, 10278, 59, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (81, 10278, 63, 8)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (82, 10278, 73, 25)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (83, 10279, 17, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (84, 10280, 24, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (85, 10280, 55, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (86, 10280, 75, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (87, 10281, 19, 1)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (88, 10281, 24, 6)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (89, 10281, 35, 4)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (90, 10282, 30, 6)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (91, 10282, 57, 2)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (92, 10283, 15, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (93, 10283, 19, 18)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (94, 10283, 60, 35)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (95, 10283, 72, 3)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (96, 10284, 27, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (97, 10284, 44, 21)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (98, 10284, 60, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (99, 10284, 67, 5)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (100, 10285, 1, 45)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (101, 10285, 40, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (102, 10285, 53, 36)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (103, 10286, 35, 100)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (104, 10286, 62, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (105, 10287, 16, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (106, 10287, 34, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (107, 10287, 46, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (108, 10288, 54, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (109, 10288, 68, 3)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (110, 10289, 3, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (111, 10289, 64, 9)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (112, 10290, 5, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (113, 10290, 29, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (114, 10290, 49, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (115, 10290, 77, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (116, 10291, 13, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (117, 10291, 44, 24)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (118, 10291, 51, 2)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (119, 10292, 20, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (120, 10293, 18, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (121, 10293, 24, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (122, 10293, 63, 5)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (123, 10293, 75, 6)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (124, 10294, 1, 18)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (125, 10294, 17, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (126, 10294, 43, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (127, 10294, 60, 21)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (128, 10294, 75, 6)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (129, 10295, 56, 4)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (130, 10296, 11, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (131, 10296, 16, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (132, 10296, 69, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (133, 10297, 39, 60)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (134, 10297, 72, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (135, 10298, 2, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (136, 10298, 36, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (137, 10298, 59, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (138, 10298, 62, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (139, 10299, 19, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (140, 10299, 70, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (141, 10300, 66, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (142, 10300, 68, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (143, 10301, 40, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (144, 10301, 56, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (145, 10302, 17, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (146, 10302, 28, 28)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (147, 10302, 43, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (148, 10303, 40, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (149, 10303, 65, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (150, 10303, 68, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (151, 10304, 49, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (152, 10304, 59, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (153, 10304, 71, 2)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (154, 10305, 18, 25)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (155, 10305, 29, 25)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (156, 10305, 39, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (157, 10306, 30, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (158, 10306, 53, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (159, 10306, 54, 5)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (160, 10307, 62, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (161, 10307, 68, 3)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (162, 10308, 69, 1)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (163, 10308, 70, 5)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (164, 10309, 4, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (165, 10309, 6, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (166, 10309, 42, 2)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (167, 10309, 43, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (168, 10309, 71, 3)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (169, 10310, 16, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (170, 10310, 62, 5)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (171, 10311, 42, 6)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (172, 10311, 69, 7)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (173, 10312, 28, 4)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (174, 10312, 43, 24)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (175, 10312, 53, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (176, 10312, 75, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (177, 10313, 36, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (178, 10314, 32, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (179, 10314, 58, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (180, 10314, 62, 25)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (181, 10315, 34, 14)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (182, 10315, 70, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (183, 10316, 41, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (184, 10316, 62, 70)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (185, 10317, 1, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (186, 10318, 41, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (187, 10318, 76, 6)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (188, 10319, 17, 8)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (189, 10319, 28, 14)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (190, 10319, 76, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (191, 10320, 71, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (192, 10321, 35, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (193, 10322, 52, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (194, 10323, 15, 5)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (195, 10323, 25, 4)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (196, 10323, 39, 4)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (197, 10324, 16, 21)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (198, 10324, 35, 70)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (199, 10324, 46, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (200, 10324, 59, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (201, 10324, 63, 80)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (202, 10325, 6, 6)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (203, 10325, 13, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (204, 10325, 14, 9)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (205, 10325, 31, 4)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (206, 10325, 72, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (207, 10326, 4, 24)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (208, 10326, 57, 16)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (209, 10326, 75, 50)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (210, 10327, 2, 25)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (211, 10327, 11, 50)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (212, 10327, 30, 35)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (213, 10327, 58, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (214, 10328, 59, 9)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (215, 10328, 65, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (216, 10328, 68, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (217, 10329, 19, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (218, 10329, 30, 8)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (219, 10329, 38, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (220, 10329, 56, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (221, 10330, 26, 50)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (222, 10330, 72, 25)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (223, 10331, 54, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (224, 10332, 18, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (225, 10332, 42, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (226, 10332, 47, 16)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (227, 10333, 14, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (228, 10333, 21, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (229, 10333, 71, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (230, 10334, 52, 8)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (231, 10334, 68, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (232, 10335, 2, 7)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (233, 10335, 31, 25)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (234, 10335, 32, 6)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (235, 10335, 51, 48)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (236, 10336, 4, 18)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (237, 10337, 23, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (238, 10337, 26, 24)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (239, 10337, 36, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (240, 10337, 37, 28)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (241, 10337, 72, 25)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (242, 10338, 17, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (243, 10338, 30, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (244, 10339, 4, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (245, 10339, 17, 70)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (246, 10339, 62, 28)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (247, 10340, 18, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (248, 10340, 41, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (249, 10340, 43, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (250, 10341, 33, 8)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (251, 10341, 59, 9)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (252, 10342, 2, 24)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (253, 10342, 31, 56)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (254, 10342, 36, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (255, 10342, 55, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (256, 10343, 64, 50)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (257, 10343, 68, 4)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (258, 10343, 76, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (259, 10344, 4, 35)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (260, 10344, 8, 70)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (261, 10345, 8, 70)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (262, 10345, 19, 80)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (263, 10345, 42, 9)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (264, 10346, 17, 36)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (265, 10346, 56, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (266, 10347, 25, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (267, 10347, 39, 50)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (268, 10347, 40, 4)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (269, 10347, 75, 6)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (270, 10348, 1, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (271, 10348, 23, 25)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (272, 10349, 54, 24)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (273, 10350, 50, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (274, 10350, 69, 18)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (275, 10351, 38, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (276, 10351, 41, 13)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (277, 10351, 44, 77)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (278, 10351, 65, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (279, 10352, 24, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (280, 10352, 54, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (281, 10353, 11, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (282, 10353, 38, 50)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (283, 10354, 1, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (284, 10354, 29, 4)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (285, 10355, 24, 25)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (286, 10355, 57, 25)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (287, 10356, 31, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (288, 10356, 55, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (289, 10356, 69, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (290, 10357, 10, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (291, 10357, 26, 16)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (292, 10357, 60, 8)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (293, 10358, 24, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (294, 10358, 34, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (295, 10358, 36, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (296, 10359, 16, 56)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (297, 10359, 31, 70)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (298, 10359, 60, 80)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (299, 10360, 28, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (300, 10360, 29, 35)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (301, 10360, 38, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (302, 10360, 49, 35)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (303, 10360, 54, 28)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (304, 10361, 39, 54)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (305, 10361, 60, 55)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (306, 10362, 25, 50)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (307, 10362, 51, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (308, 10362, 54, 24)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (309, 10363, 31, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (310, 10363, 75, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (311, 10363, 76, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (312, 10364, 69, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (313, 10364, 71, 5)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (314, 10365, 11, 24)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (315, 10366, 65, 5)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (316, 10366, 77, 5)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (317, 10367, 34, 36)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (318, 10367, 54, 18)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (319, 10367, 65, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (320, 10367, 77, 7)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (321, 10368, 21, 5)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (322, 10368, 28, 13)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (323, 10368, 57, 25)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (324, 10368, 64, 35)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (325, 10369, 29, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (326, 10369, 56, 18)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (327, 10370, 1, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (328, 10370, 64, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (329, 10370, 74, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (330, 10371, 36, 6)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (331, 10372, 20, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (332, 10372, 38, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (333, 10372, 60, 70)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (334, 10372, 72, 42)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (335, 10373, 58, 80)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (336, 10373, 71, 50)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (337, 10374, 31, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (338, 10374, 58, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (339, 10375, 14, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (340, 10375, 54, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (341, 10376, 31, 42)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (342, 10377, 28, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (343, 10377, 39, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (344, 10378, 71, 6)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (345, 10379, 41, 8)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (346, 10379, 63, 16)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (347, 10379, 65, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (348, 10380, 30, 18)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (349, 10380, 53, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (350, 10380, 60, 6)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (351, 10380, 70, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (352, 10381, 74, 14)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (353, 10382, 5, 32)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (354, 10382, 18, 9)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (355, 10382, 29, 14)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (356, 10382, 33, 60)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (357, 10382, 74, 50)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (358, 10383, 13, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (359, 10383, 50, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (360, 10383, 56, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (361, 10384, 20, 28)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (362, 10384, 60, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (363, 10385, 7, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (364, 10385, 60, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (365, 10385, 68, 8)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (366, 10386, 24, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (367, 10386, 34, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (368, 10387, 24, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (369, 10387, 28, 6)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (370, 10387, 59, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (371, 10387, 71, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (372, 10388, 45, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (373, 10388, 52, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (374, 10388, 53, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (375, 10389, 10, 16)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (376, 10389, 55, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (377, 10389, 62, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (378, 10389, 70, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (379, 10390, 31, 60)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (380, 10390, 35, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (381, 10390, 46, 45)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (382, 10390, 72, 24)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (383, 10391, 13, 18)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (384, 10392, 69, 50)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (385, 10393, 2, 25)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (386, 10393, 14, 42)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (387, 10393, 25, 7)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (388, 10393, 26, 70)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (389, 10393, 31, 32)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (390, 10394, 13, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (391, 10394, 62, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (392, 10395, 46, 28)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (393, 10395, 53, 70)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (394, 10395, 69, 8)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (395, 10396, 23, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (396, 10396, 71, 60)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (397, 10396, 72, 21)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (398, 10397, 21, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (399, 10397, 51, 18)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (400, 10398, 35, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (401, 10398, 55, 120)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (402, 10399, 68, 60)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (403, 10399, 71, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (404, 10399, 76, 35)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (405, 10399, 77, 14)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (406, 10400, 29, 21)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (407, 10400, 35, 35)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (408, 10400, 49, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (409, 10401, 30, 18)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (410, 10401, 56, 70)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (411, 10401, 65, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (412, 10401, 71, 60)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (413, 10402, 23, 60)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (414, 10402, 63, 65)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (415, 10403, 16, 21)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (416, 10403, 48, 70)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (417, 10404, 26, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (418, 10404, 42, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (419, 10404, 49, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (420, 10405, 3, 50)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (421, 10406, 1, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (422, 10406, 21, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (423, 10406, 28, 42)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (424, 10406, 36, 5)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (425, 10406, 40, 2)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (426, 10407, 11, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (427, 10407, 69, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (428, 10407, 71, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (429, 10408, 37, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (430, 10408, 54, 6)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (431, 10408, 62, 35)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (432, 10409, 14, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (433, 10409, 21, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (434, 10410, 33, 49)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (435, 10410, 59, 16)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (436, 10411, 41, 25)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (437, 10411, 44, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (438, 10411, 59, 9)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (439, 10412, 14, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (440, 10413, 1, 24)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (441, 10413, 62, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (442, 10413, 76, 14)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (443, 10414, 19, 18)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (444, 10414, 33, 50)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (445, 10415, 17, 2)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (446, 10415, 33, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (447, 10416, 19, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (448, 10416, 53, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (449, 10416, 57, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (450, 10417, 38, 50)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (451, 10417, 46, 2)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (452, 10417, 68, 36)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (453, 10417, 77, 35)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (454, 10418, 2, 60)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (455, 10418, 47, 55)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (456, 10418, 61, 16)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (457, 10418, 74, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (458, 10419, 60, 60)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (459, 10419, 69, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (460, 10420, 9, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (461, 10420, 13, 2)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (462, 10420, 70, 8)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (463, 10420, 73, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (464, 10421, 19, 4)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (465, 10421, 26, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (466, 10421, 53, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (467, 10421, 77, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (468, 10422, 26, 2)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (469, 10423, 31, 14)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (470, 10423, 59, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (471, 10424, 35, 60)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (472, 10424, 38, 49)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (473, 10424, 68, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (474, 10425, 55, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (475, 10425, 76, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (476, 10426, 56, 5)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (477, 10426, 64, 7)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (478, 10427, 14, 35)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (479, 10428, 46, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (480, 10429, 50, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (481, 10429, 63, 35)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (482, 10430, 17, 45)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (483, 10430, 21, 50)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (484, 10430, 56, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (485, 10430, 59, 70)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (486, 10431, 17, 50)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (487, 10431, 40, 50)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (488, 10431, 47, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (489, 10432, 26, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (490, 10432, 54, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (491, 10433, 56, 28)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (492, 10434, 11, 6)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (493, 10434, 76, 18)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (494, 10435, 2, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (495, 10435, 22, 12)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (496, 10435, 72, 10)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (497, 10436, 46, 5)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (498, 10436, 56, 40)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (499, 10436, 64, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (500, 10436, 75, 24)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (501, 10437, 53, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (502, 10438, 19, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (503, 10438, 34, 20)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (504, 10438, 57, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (505, 10439, 12, 15)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (506, 10439, 16, 16)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (507, 10439, 64, 6)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (508, 10439, 74, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (509, 10440, 2, 45)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (510, 10440, 16, 49)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (511, 10440, 29, 24)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (512, 10440, 61, 90)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (513, 10441, 27, 50)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (514, 10442, 11, 30)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (515, 10442, 54, 80)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (516, 10442, 66, 60)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (517, 10443, 11, 6)
GO
INSERT [dbo].[orderdetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity]) VALUES (518, 10443, 28, 12)
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10248,'90 ','5 ','7/4/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10249,'81 ','6 ','7/5/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10250,'34 ','4 ','7/8/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10251,'84 ','3 ','7/8/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10252,'76 ','4 ','7/9/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10253,'34 ','3 ','7/10/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10254,'14 ','5 ','7/11/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10255,'68 ','9 ','7/12/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10256,'88 ','3 ','7/15/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10257,'35 ','4 ','7/16/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10258,'20 ','1 ','7/17/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10259,'13 ','4 ','7/18/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10260,'55 ','4 ','7/19/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10261,'61 ','4 ','7/19/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10262,'65 ','8 ','7/22/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10263,'20 ','9 ','7/23/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10264,'24 ','6 ','7/24/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10265,'7 ','2 ','7/25/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10266,'87 ','3 ','7/26/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10267,'25 ','4 ','7/29/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10268,'33 ','8 ','7/30/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10269,'89 ','5 ','7/31/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10270,'87 ','1 ','8/1/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10271,'75 ','6 ','8/1/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10272,'65 ','6 ','8/2/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10273,'63 ','3 ','8/5/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10274,'85 ','6 ','8/6/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10275,'49 ','1 ','8/7/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10276,'80 ','8 ','8/8/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10277,'52 ','2 ','8/9/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10278,'5 ','8 ','8/12/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10279,'44 ','8 ','8/13/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10280,'5 ','2 ','8/14/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10281,'69 ','4 ','8/14/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10282,'69 ','4 ','8/15/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10283,'46 ','3 ','8/16/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10284,'44 ','4 ','8/19/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10285,'63 ','1 ','8/20/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10286,'63 ','8 ','8/21/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10287,'67 ','8 ','8/22/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10288,'66 ','4 ','8/23/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10289,'11 ','7 ','8/26/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10290,'15 ','8 ','8/27/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10291,'61 ','6 ','8/27/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10292,'81 ','1 ','8/28/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10293,'80 ','1 ','8/29/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10294,'65 ','4 ','8/30/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10295,'85 ','2 ','9/2/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10296,'46 ','6 ','9/3/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10297,'7 ','5 ','9/4/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10298,'37 ','6 ','9/5/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10299,'67 ','4 ','9/6/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10300,'49 ','2 ','9/9/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10301,'86 ','8 ','9/9/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10302,'76 ','4 ','9/10/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10303,'30 ','7 ','9/11/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10304,'80 ','1 ','9/12/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10305,'55 ','8 ','9/13/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10306,'69 ','1 ','9/16/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10307,'48 ','2 ','9/17/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10308,'2 ','7 ','9/18/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10309,'37 ','3 ','9/19/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10310,'77 ','8 ','9/20/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10311,'18 ','1 ','9/20/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10312,'86 ','2 ','9/23/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10313,'63 ','2 ','9/24/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10314,'65 ','1 ','9/25/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10315,'38 ','4 ','9/26/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10316,'65 ','1 ','9/27/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10317,'48 ','6 ','9/30/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10318,'38 ','8 ','10/1/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10319,'80 ','7 ','10/2/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10320,'87 ','5 ','10/3/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10321,'38 ','3 ','10/3/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10322,'58 ','7 ','10/4/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10323,'39 ','4 ','10/7/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10324,'71 ','9 ','10/8/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10325,'39 ','1 ','10/9/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10326,'8 ','4 ','10/10/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10327,'24 ','2 ','10/11/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10328,'28 ','4 ','10/14/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10329,'75 ','4 ','10/15/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10330,'46 ','3 ','10/16/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10331,'9 ','9 ','10/16/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10332,'51 ','3 ','10/17/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10333,'87 ','5 ','10/18/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10334,'84 ','8 ','10/21/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10335,'37 ','7 ','10/22/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10336,'60 ','7 ','10/23/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10337,'25 ','4 ','10/24/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10338,'55 ','4 ','10/25/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10339,'51 ','2 ','10/28/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10340,'9 ','1 ','10/29/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10341,'73 ','7 ','10/29/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10342,'25 ','4 ','10/30/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10343,'44 ','4 ','10/31/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10344,'89 ','4 ','11/1/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10345,'63 ','2 ','11/4/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10346,'65 ','3 ','11/5/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10347,'21 ','4 ','11/6/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10348,'86 ','4 ','11/7/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10349,'75 ','7 ','11/8/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10350,'41 ','6 ','11/11/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10351,'20 ','1 ','11/11/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10352,'28 ','3 ','11/12/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10353,'59 ','7 ','11/13/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10354,'58 ','8 ','11/14/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10355,'4 ','6 ','11/15/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10356,'86 ','6 ','11/18/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10357,'46 ','1 ','11/19/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10358,'41 ','5 ','11/20/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10359,'72 ','5 ','11/21/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10360,'7 ','4 ','11/22/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10361,'63 ','1 ','11/22/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10362,'9 ','3 ','11/25/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10363,'17 ','4 ','11/26/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10364,'19 ','1 ','11/26/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10365,'3 ','3 ','11/27/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10366,'29 ','8 ','11/28/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10367,'83 ','7 ','11/28/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10368,'20 ','2 ','11/29/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10369,'75 ','8 ','12/2/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10370,'14 ','6 ','12/3/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10371,'41 ','1 ','12/3/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10372,'62 ','5 ','12/4/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10373,'37 ','4 ','12/5/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10374,'91 ','1 ','12/5/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10375,'36 ','3 ','12/6/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10376,'51 ','1 ','12/9/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10377,'72 ','1 ','12/9/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10378,'24 ','5 ','12/10/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10379,'61 ','2 ','12/11/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10380,'37 ','8 ','12/12/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10381,'46 ','3 ','12/12/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10382,'20 ','4 ','12/13/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10383,'4 ','8 ','12/16/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10384,'5 ','3 ','12/16/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10385,'75 ','1 ','12/17/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10386,'21 ','9 ','12/18/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10387,'70 ','1 ','12/18/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10388,'72 ','2 ','12/19/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10389,'10 ','4 ','12/20/1996 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10390,'20 ','6 ','12/23/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10391,'17 ','3 ','12/23/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10392,'59 ','2 ','12/24/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10393,'71 ','1 ','12/25/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10394,'36 ','1 ','12/25/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10395,'35 ','6 ','12/26/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10396,'25 ','1 ','12/27/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10397,'60 ','5 ','12/27/1996 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10398,'71 ','2 ','12/30/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10399,'83 ','8 ','12/31/1996 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10400,'19 ','1 ','1/1/1997 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10401,'65 ','1 ','1/1/1997 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10402,'20 ','8 ','1/2/1997 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10403,'20 ','4 ','1/3/1997 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10404,'49 ','2 ','1/3/1997 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10405,'47 ','1 ','1/6/1997 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10406,'62 ','7 ','1/7/1997 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10407,'56 ','2 ','1/7/1997 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10408,'23 ','8 ','1/8/1997 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10409,'54 ','3 ','1/9/1997 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10410,'10 ','3 ','1/10/1997 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10411,'10 ','9 ','1/10/1997 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10412,'87 ','8 ','1/13/1997 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10413,'41 ','3 ','1/14/1997 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10414,'21 ','2 ','1/14/1997 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10415,'36 ','3 ','1/15/1997 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10416,'87 ','8 ','1/16/1997 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10417,'73 ','4 ','1/16/1997 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10418,'63 ','4 ','1/17/1997 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10419,'68 ','4 ','1/20/1997 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10420,'88 ','3 ','1/21/1997 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10421,'61 ','8 ','1/21/1997 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10422,'27 ','2 ','1/22/1997 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10423,'31 ','6 ','1/23/1997 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10424,'51 ','7 ','1/23/1997 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10425,'41 ','6 ','1/24/1997 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10426,'29 ','4 ','1/27/1997 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10427,'59 ','4 ','1/27/1997 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10428,'66 ','7 ','1/28/1997 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10429,'37 ','3 ','1/29/1997 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10430,'20 ','4 ','1/30/1997 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10431,'10 ','4 ','1/30/1997 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10432,'75 ','3 ','1/31/1997 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10433,'60 ','3 ','2/3/1997 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10434,'24 ','3 ','2/3/1997 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10435,'16 ','8 ','2/4/1997 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10436,'7 ','3 ','2/5/1997 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10437,'87 ','8 ','2/5/1997 ','1 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10438,'79 ','3 ','2/6/1997 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10439,'51 ','6 ','2/7/1997 ','3 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10440,'71 ','4 ','2/10/1997 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10441,'55 ','3 ','2/10/1997 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10442,'20 ','3 ','2/11/1997 ','2 ')
GO
INSERT [dbo].[orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShipperID]) VALUES (10443,'66 ','8 ','2/12/1997 ','1 ')
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (1,'Chais', 1, 1,'10 boxes x 20 bags', 18)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (2,'Chang', 1, 1,'24 - 12 oz bottles', 19)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (3,'Aniseed Syrup', 1, 2,'12 - 550 ml bottles', 10)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (4,'Chef Anton''s Cajun Seasoning', 2, 2,'48 - 6 oz jars', 22)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (5,'Chef Anton''s Gumbo Mix', 2, 2,'36 boxes', 21.35)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (6,'Grandma''s Boysenberry Spread', 3, 2,'12 - 8 oz jars', 25)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (7,'Uncle Bob''s Organic Dried Pears', 3, 7,'12 - 1 lb pkgs.', 30)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (8,'Northwoods Cranberry Sauce', 3, 2,'12 - 12 oz jars', 40)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (9,'Mishi Kobe Niku', 4, 6,'18 - 500 g pkgs.', 97)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (10,'Ikura', 4, 8,'12 - 200 ml jars', 31)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (11,'Queso Cabrales', 5, 4,'1 kg pkg.', 21)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (12,'Queso Manchego La Pastora', 5, 4,'10 - 500 g pkgs.', 38)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (13,'Konbu', 6, 8,'2 kg box', 6)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (14,'Tofu', 6, 7,'40 - 100 g pkgs.', 23.25)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (15,'Genen Shouyu', 6, 2,'24 - 250 ml bottles', 15.5)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (16,'Pavlova', 7, 3,'32 - 500 g boxes', 17.45)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (17,'Alice Mutton', 7, 6,'20 - 1 kg tins', 39)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (18,'Carnarvon Tigers', 7, 8,'16 kg pkg.', 62.5)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (19,'Teatime Chocolate Biscuits', 8, 3,'10 boxes x 12 pieces', 9.2)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (20,'Sir Rodney''s Marmalade', 8, 3,'30 gift boxes', 81)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (21,'Sir Rodney''s Scones', 8, 3,'24 pkgs. x 4 pieces', 10)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (22,'Gustaf''s Knäckebröd', 9, 5,'24 - 500 g pkgs.', 21)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (23,'Tunnbröd', 9, 5,'12 - 250 g pkgs.', 9)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (24,'Guaraná Fantástica', 10, 1,'12 - 355 ml cans', 4.5)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (25,'NuNuCa Nuß-Nougat-Creme', 11, 3,'20 - 450 g glasses', 14)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (26,'Gumbär Gummibärchen', 11, 3,'100 - 250 g bags', 31.23)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (27,'Schoggi Schokolade', 11, 3,'100 - 100 g pieces', 43.9)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (28,'Rössle Sauerkraut', 12, 7,'25 - 825 g cans', 45.6)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (29,'Thüringer Rostbratwurst', 12, 6,'50 bags x 30 sausgs.', 123.79)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (30,'Nord-Ost Matjeshering', 13, 8,'10 - 200 g glasses', 25.89)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (31,'Gorgonzola Telino', 14, 4,'12 - 100 g pkgs', 12.5)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (32,'Mascarpone Fabioli', 14, 4,'24 - 200 g pkgs.', 32)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (33,'Geitost', 15, 4,'500 g', 2.5)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (34,'Sasquatch Ale', 16, 1,'24 - 12 oz bottles', 14)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (35,'Steeleye Stout', 16, 1,'24 - 12 oz bottles', 18)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (36,'Inlagd Sill', 17, 8,'24 - 250 g jars', 19)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (37,'Gravad lax', 17, 8,'12 - 500 g pkgs.', 26)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (38,'Côte de Blaye', 18, 1,'12 - 75 cl bottles', 263.5)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (39,'Chartreuse verte', 18, 1,'750 cc per bottle', 18)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (40,'Boston Crab Meat', 19, 8,'24 - 4 oz tins', 18.4)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (41,'Jack''s New England Clam Chowder', 19, 8,'12 - 12 oz cans', 9.65)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (42,'Singaporean Hokkien Fried Mee', 20, 5,'32 - 1 kg pkgs.', 14)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (43,'Ipoh Coffee', 20, 1,'16 - 500 g tins', 46)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (44,'Gula Malacca', 20, 2,'20 - 2 kg bags', 19.45)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (45,'Røgede sild', 21, 8,'1k pkg.', 9.5)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (46,'Spegesild', 21, 8,'4 - 450 g glasses', 12)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (47,'Zaanse koeken', 22, 3,'10 - 4 oz boxes', 9.5)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (48,'Chocolade', 22, 3,'10 pkgs.', 12.75)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (49,'Maxilaku', 23, 3,'24 - 50 g pkgs.', 20)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (50,'Valkoinen suklaa', 23, 3,'12 - 100 g bars', 16.25)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (51,'Manjimup Dried Apples', 24, 7,'50 - 300 g pkgs.', 53)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (52,'Filo Mix', 24, 5,'16 - 2 kg boxes', 7)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (53,'Perth Pasties', 24, 6,'48 pieces', 32.8)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (54,'Tourtière', 25, 6,'16 pies', 7.45)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (55,'Pâté chinois', 25, 6,'24 boxes x 2 pies', 24)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (56,'Gnocchi di nonna Alice', 26, 5,'24 - 250 g pkgs.', 38)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (57,'Ravioli Angelo', 26, 5,'24 - 250 g pkgs.', 19.5)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (58,'Escargots de Bourgogne', 27, 8,'24 pieces', 13.25)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (59,'Raclette Courdavault', 28, 4,'5 kg pkg.', 55)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (60,'Camembert Pierrot', 28, 4,'15 - 300 g rounds', 34)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (61,'Sirop d''érable', 29, 2,'24 - 500 ml bottles', 28.5)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (62,'Tarte au sucre', 29, 3,'48 pies', 49.3)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (63,'Vegie-spread', 7, 2,'15 - 625 g jars', 43.9)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (64,'Wimmers gute Semmelknödel', 12, 5,'20 bags x 4 pieces', 33.25)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (65,'Louisiana Fiery Hot Pepper Sauce', 2, 2,'32 - 8 oz bottles', 21.05)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (66,'Louisiana Hot Spiced Okra', 2, 2,'24 - 8 oz jars', 17)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (67,'Laughing Lumberjack Lager', 16, 1,'24 - 12 oz bottles', 14)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (68,'Scottish Longbreads', 8, 3,'10 boxes x 8 pieces', 12.5)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (69,'Gudbrandsdalsost', 15, 4,'10 kg pkg.', 36)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (70,'Outback Lager', 7, 1,'24 - 355 ml bottles', 15)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (71,'Fløtemysost', 15, 4,'10 - 500 g pkgs.', 21.5)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (72,'Mozzarella di Giovanni', 14, 4,'24 - 200 g pkgs.', 34.8)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (73,'Röd Kaviar', 17, 8,'24 - 150 g jars', 15)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (74,'Longlife Tofu', 4, 7,'5 kg pkg.', 10)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (75,'Rhönbräu Klosterbier', 12, 1,'24 - 0.5 l bottles', 7.75)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (76,'Lakkalikööri', 23, 1,'500 ml', 18)
GO
INSERT [dbo].[products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Unit], [Price]) VALUES (77,'Original Frankfurter grüne Soße', 12, 2,'12 boxes', 13)
GO
INSERT [dbo].[shippers] ([ShipperID], [ShipperName], [Phone]) VALUES (1,'Speedy Express','(503) 555-9831')
GO
INSERT [dbo].[shippers] ([ShipperID], [ShipperName], [Phone]) VALUES (2,'United Package','(503) 555-3199')
GO
INSERT [dbo].[shippers] ([ShipperID], [ShipperName], [Phone]) VALUES (3,'Federal Shipping','(503) 555-9931')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (1,'Exotic Liquid','Charlotte Cooper','49 Gilbert St.','Londona', NULL,'UK','(171) 555-2222')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (2,'New Orleans Cajun Delights','Shelley Burke','P.O. Box 78934','New Orleans', 70117,'USA','(100) 555-4822')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (3,'Grandma Kelly''s Homestead','Regina Murphy','707 Oxford Rd.','Ann Arbor', 48104,'USA','(313) 555-5735')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (4,'Tokyo Traders','Yoshi Nagase','9-8 Sekimai Musashino-shi','Tokyo', 100,'Japan','(03) 3555-5011')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (5,'Cooperativa de Quesos ''Las Cabras''','Antonio del Valle Saavedra','Calle del Rosal 4','Oviedo', 33007,'Spain','(98) 598 76 54')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (6,'Mayumi''s','Mayumi Ohno','92 Setsuko Chuo-ku','Osaka', 545,'Japan','(06) 431-7877')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (7,'Pavlova, Ltd.','Ian Devling','74 Rose St. Moonie Ponds','Melbourne', 3058,'Australia','(03) 444-2343')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (8,'Specialty Biscuits, Ltd.','Peter Wilson','29 King''s Way','Manchester', NULL,'UK','(161) 555-4448')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (9,'PB Knäckebröd AB','Lars Peterson','Kaloadagatan 13','Göteborg', NULL,'Sweden','031-987 65 43')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (10,'Refrescos Americanas LTDA','Carlos Diaz','Av. das Americanas 12.890','São Paulo', 5442,'Brazil','(11) 555 4640')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (11,'Heli Süßwaren GmbH & Co. KG','Petra Winkler','Tiergartenstraße 5','Berlin', 10785,'Germany','(010) 9984510')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (12,'Plutzer Lebensmittelgroßmärkte AG','Martin Bein','Bogenallee 51','Frankfurt', 60439,'Germany','(069) 992755')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (13,'Nord-Ost-Fisch Handelsgesellschaft mbH','Sven Petersen','Frahmredder 112a','Cuxhaven', 27478,'Germany','(04721) 8713')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (14,'Formaggi Fortini s.r.l.','Elio Rossi','Viale Dante, 75','Ravenna', 48100,'Italy','(0544) 60323')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (15,'Norske Meierier','Beate Vileid','Hatlevegen 5','Sandvika', 1320,'Norway','(0)2-953010')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (16,'Bigfoot Breweries','Cheryl Saylor','3400 - 8th Avenue Suite 210','Bend', 97101,'USA','(503) 555-9931')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (17,'Svensk Sjöföda AB','Michael Björn','Brovallavägen 231','Stockholm', NULL,'Sweden','08-123 45 67')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (18,'Aux joyeux ecclésiastiques','Guylène Nodier','203, Rue des Francs-Bourgeois','Paris', 75004,'France','(1) 03.83.00.68')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (19,'New England Seafood Cannery','Robb Merchant','Order Processing Dept. 2100 Paul Revere Blvd.','Boston', 2134,'USA','(617) 555-3267')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (20,'Leka Trading','Chandra Leka','471 Serangoon Loop, Suite #402','Singapore', 512,'Singapore','555-8787')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (21,'Lyngbysild','Niels Petersen','Lyngbysild Fiskebakken 10','Lyngby', 2800,'Denmark','43844108')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (22,'Zaanse Snoepfabriek','Dirk Luchte','Verkoop Rijnweg 22','Zaandam', NULL,'Netherlands','(12345) 1212')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (23,'Karkki Oy','Anne Heikkonen','Valtakatu 12','Lappeenranta', 53120,'Finland','(953) 10956')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (24,'G''day, Mate','Wendy Mackenzie','170 Prince Edward Parade Hunter''s Hill','Sydney', 2042,'Australia','(02) 555-5914')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (25,'Ma Maison','Jean-Guy Lauzon','2960 Rue St. Laurent','Montréal', NULL,'Canada','(514) 555-9022')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (26,'Pasta Buttini s.r.l.','Giovanni Giudici','Via dei Gelsomini, 153','Salerno', 84100,'Italy','(089) 6547665')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (27,'Escargots Nouveaux','Marie Delamare','22, rue H. Voiron','Montceau', 71300,'France','85.57.00.07')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (28,'Gai pâturage','Eliane Noz','Bat. B 3, rue des Alpes','Annecy', 74000,'France','38.76.98.06')
GO
INSERT [dbo].[suppliers] ([SupplierID], [SupplierName], [ContactName], [Address], [City], [PostalCode], [Country], [Phone]) VALUES (29,'Forêts d''érables','Chantal Goulet','148 rue Chasseur','Ste-Hyacinthe', NULL,'Canada','(514) 555-2955')
GO


SELECT CustomerName, City FROM Customers;
SELECT DISTINCT Country FROM Customers;
SELECT COUNT(DISTINCT Country) FROM Customers;
SELECT * FROM Customers WHERE Country='Mexico';
SELECT * FROM Customers WHERE CustomerID=1;
SELECT * FROM Customers WHERE Country='Germany' AND City='Berlin';
SELECT * FROM Customers WHERE City='Berlin' OR City='München';
SELECT * FROM Customers WHERE Country='Germany' OR Country='Spain';
SELECT * FROM Customers WHERE NOT Country='Germany';
SELECT * FROM Customers WHERE Country='Germany' AND (City='Berlin' OR City='München');
SELECT * FROM Customers WHERE NOT Country='Germany' AND NOT Country='USA';

SELECT * FROM Customers ORDER BY Country;
SELECT * FROM Customers ORDER BY Country DESC;
SELECT * FROM Customers ORDER BY Country, CustomerName;
SELECT * FROM Customers ORDER BY Country ASC, CustomerName DESC;


INSERT [dbo].[customers] ([CustomerID], [CustomerName], [ContactName], [Address], [City], [PostalCode], [Country]) VALUES (92,'Venkat ','Gandhi','ul. Filtrowa 68 ','Walla ','01-012 ','Poland ')
Update Customers set Address = null where customerid=92

SELECT CustomerName, ContactName, Address FROM Customers WHERE Address IS NULL;
SELECT CustomerName, ContactName, Address FROM Customers WHERE Address IS NOT NULL;

SELECT CustomerName, ContactName, Address FROM Customers WHERE Address IS NOT NULL;

UPDATE Customers SET ContactName='Juan' WHERE Country='Mexico';
UPDATE Customers SET ContactName='Juan';

DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';
DELETE FROM Customers;

SELECT Top 10 * FROM Customers
SELECT TOP 3 * FROM Customers WHERE Country='Germany';

SELECT MIN(Price) AS SmallestPrice FROM Products;
SELECT MAX(Price) AS LargestPrice FROM Products;

SELECT COUNT(ProductID) FROM Products;
SELECT AVG(Price) FROM Products;
SELECT SUM(Quantity) FROM OrderDetails;

SELECT * FROM Customers WHERE CustomerName LIKE 'a%';
SELECT * FROM Customers WHERE CustomerName LIKE '_r%';
SELECT * FROM Customers WHERE CustomerName LIKE 'a__%';


SELECT * FROM Customers WHERE Country IN ('Germany', 'France', 'UK');
SELECT * FROM Customers WHERE Country IN (SELECT Country FROM Suppliers);

SELECT * FROM Products WHERE Price BETWEEN 10 AND 20;
SELECT * FROM Products WHERE Price NOT BETWEEN 10 AND 20;

SELECT * FROM Products WHERE Price BETWEEN 10 AND 20 AND CategoryID NOT IN (1,2,3);

SELECT * FROM Products WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni' ORDER BY ProductName;

SELECT CustomerID AS ID, CustomerName AS Customer FROM Customers;

SELECT o.OrderID, o.OrderDate, c.CustomerName 
FROM Customers AS c, Orders AS o
WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;
SELECT CustomerName AS Customer, ContactName AS [Contact Person] FROM Customers;


/*INNER JOIN : INNER JOIN − Returns rows when there is a match in both tables. */
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;


SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);

/*LEFT JOIN  LEFT JOIN − Returns all rows from the left table, even if there are no matches in the right table. */
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

/*RIGHT JOIN  RIGHT JOIN − Returns all rows from the right table, even if there are no matches in the left table*/
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;

/* Full Outer Join  FULL JOIN − Returns rows when there is a match in one of the tables.*/
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;


/* SELF JOIN */
/*SELF JOIN − This is used to join a table to itself as if the table were two tables, temporarily renaming at least one table in the MS SQL Server statement.*/
SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;

/* Union */
SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;


/* Group by */
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;


/* Having */
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;

SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM (Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID)
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 10;

SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE LastName = 'Davolio' OR LastName = 'Fuller'
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 25;


/* EXISTS */
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price < 20);

SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price = 22);

/* Any */
SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);


SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity > 99);

  SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity > 1000);

  /* ALL */
SELECT ALL ProductName
FROM Products
WHERE TRUE;

SELECT ProductName
FROM Products
WHERE ProductID = ALL
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);

/* SELECT INTO */
SELECT * INTO CustomersBackup2017
FROM Customers;

SELECT * INTO CustomersBackup2017 IN 'Backup.mdb'
FROM Customers;

SELECT CustomerName, ContactName INTO CustomersBackup2017
FROM Customers;

SELECT * INTO CustomersGermany
FROM Customers
WHERE Country = 'Germany';

SELECT Customers.CustomerName, Orders.OrderID
INTO CustomersOrderBackup2017
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

/* SQL INSERT INTO SELECT */
INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers;

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT SupplierName, ContactName, Address, City, PostalCode, Country FROM Suppliers;

INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers
WHERE Country='Germany';

/* Case */
SELECT OrderID, Quantity,
CASE
    WHEN Quantity > 30 THEN 'The quantity is greater than 30'
    WHEN Quantity = 30 THEN 'The quantity is 30'
    ELSE 'The quantity is under 30'
END AS QuantityText
FROM OrderDetails;


--SELECT * FROM Customers;
SELECT * FROM Products;


/* Stored Procedure */
CREATE PROCEDURE SelectCustomerstabledata 
AS 
SELECT * FROM Customers 
GO

exec SelectCustomerstabledata




/* Transactions */
Begin Tran 
DELETE FROM CUSTOMERS 
   WHERE AGE = 25 
COMMIT 


Begin Tran 
DELETE FROM CUSTOMERS 
   WHERE AGE = 25; 
ROLLBACK

CREATE UNIQUE INDEX uniqueindex 
on customersName


T-SQL Functions
Count, max, min, avg, um, sqrt, rand, concat

Select SUBSTRING ('WORLD', 1,3) 
Select SUBSTRING ('INDIA', 3,3) 
Select SUBSTRING ('KING', 2,3)

LEN()
LOWER()
UPPER()    Select UPPER('SqlServer')
RTRIM()
REPLACE()   Select REPLACE('INDIA', 'I', 'K')
Select REPLICATE('WORLD', 2)
Select REVERSE('WORLD')
Select Difference('Smith','Smyth') 
SELECT FORMAT ( getdate(), 'D')
GETDATE()
Select datepart(day, getdate()) as currentdate
Select datepart(month, getdate()) as currentmonth
Select dateadd(day, 10, getdate()) as after10daysdatetimefromcurrentdatetime 
Select datediff(hour, 2015-11-16, 2015-11-11) as differencehoursbetween20151116and20151111 

SELECT CONVERT(VARCHAR(19),GETDATE()) 
SELECT CONVERT(VARCHAR(10),GETDATE(),10) 
SELECT CONVERT(VARCHAR(10),GETDATE(),110)






CREATE TABLE [dbo].[Emp](
	[EmpID] [int] IDENTITY(1,1) NOT NULL,
	[EmpName] [varchar](20) NULL,
	[EmpPhoneNo] [varchar](10) NULL,
 CONSTRAINT [PK_Emp] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, 
	ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE PROCEDURE [dbo].[usp_Add]
	@EmpID INT,
	@EmpName VARCHAR(20),
	@EmpPhoneNo VARCHAR(10)
AS
BEGIN
	SET NOCOUNT ON
	INSERT INTO Emp (EmpName, EmpPhoneNo) VALUES (@EmpName, @EmpPhoneNo)
END



CREATE PROCEDURE [dbo].[usp_Edit]
	@EmpID INT,
	@EmpName VARCHAR(20),
	@EmpPhoneNo VARCHAR(10)
AS
BEGIN
	UPDATE Emp
	SET EmpName = @EmpName,
		EmpPhoneNo = @EmpPhoneNo
	WHERE EmpId = @EmpID
END
GO

CREATE PROCEDURE [dbo].[usp_Delete]
	@EmpID INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE Emp
	WHERE EmpId = @EmpID
END
GO

CREATE PROCEDURE [dbo].[usp_View]
	@EmpID INT
AS
BEGIN
	SET NOCOUNT ON;
	select * 
	FROM Emp
	WHERE EmpId = @EmpID
END
GO

CREATE PROCEDURE [dbo].[usp_ViewAll]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * 
	FROM Emp
END
GO



/* SQL Server Cursor */

use Product_Database
SET NOCOUNT ON;

DECLARE @emp_id int ,@emp_name varchar(20),
    @message varchar(max);

PRINT '-------- EMPLOYEE DETAILS --------';

DECLARE emp_cursor CURSOR FOR
SELECT emp_id,emp_name
FROM Employee
order by emp_id;

OPEN emp_cursor

FETCH NEXT FROM emp_cursor INTO @emp_id,@emp_name
print 'Employee_ID  Employee_Name'

WHILE @@FETCH_STATUS = 0
BEGIN
    print '   ' + CAST(@emp_id as varchar(10)) +'           '+  cast(@emp_name as varchar(20))

    FETCH NEXT FROM emp_cursor INTO @emp_id,@emp_name
END
CLOSE emp_cursor;
DEALLOCATE emp_cursor;

/* Trigger */




