SELECT dbo.CategorieProdus.categorie, dbo.Magazin.nume AS Expr2, dbo.Produs.nume, dbo.Stoc.cantitate,dbo.Stoc.pretUnitar
FROM dbo.CategorieProdus INNER JOIN
	 dbo.Magazin ON dbo.CategorieProdus.ID = dbo.Magazin.ID INNER JOIN
	 dbo.Produs ON dbo.CategorieProdus.ID = dbo.Produs.IdCategProd AND dbo.Magazin.ID = dbo.Produs.IdMagazin INNER JOIN
     dbo.Stoc ON dbo.Magazin.ID = dbo.Stoc.IdMagazin AND dbo.Produs.ID = dbo.Stoc.IDProdus