USE [MagazinDB]
GO

CREATE TABLE [dbo].[Magazin](
	[ID] [int] primary key,
	[nume] [nvarchar](25) NOT NULL);
CREATE TABLE [dbo].[CategorieProdus](
	[ID] [int] primary key,
	[categorie] [nvarchar](25) NOT NULL);
CREATE TABLE [dbo].[Produs](
	[ID] [int] primary key,
	[IdMagazin] [int] ,
	[IdCategProd] [int] ,
	Foreign key (idMagazin) references Magazin(id),
	Foreign key (idCategProd) references CategorieProdus(id),
	[nume] [nvarchar](25) NOT NULL
);
CREATE TABLE [dbo].[Stoc](
	[ID] [int] primary key,
	[IDProdus] [int],
	[IdMagazin] [int] ,
	Foreign key (idMagazin) references Magazin(id),
	Foreign key (idProdus) references Produs(id),
	[cantitate] decimal(25),
	[pretUnitar] decimal(25),
);
CREATE TABLE [dbo].[Intrari](
	[ID] [int] primary key,
	[idProdus] [int],
	[IdMagazin] [int] ,
	[cantitate] int,
	[pret] decimal(18),
	Foreign key (idMagazin) references Magazin(id),
	Foreign key (idProdus) references Produs(id),
	[data] datetime
); 
CREATE TABLE [dbo].[Iesiri](
	[ID] [int] primary key,
	[idProdus] [int],
	[IdMagazin] [int] ,
	[cantitate] int,
	[pret] decimal(18),
	Foreign key (idMagazin) references Magazin(id),
	Foreign key (idProdus) references Produs(id),
	[data] datetime
);







