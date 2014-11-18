/****** Script for SelectTopNRows command from SSMS  ******/
use MagazinDB



select id, categorie from CategorieProdus except (
select p.idcategprod, cp.categorie 
from produs p inner join CategorieProdus cp 
on p.IdCategProd=cp.id
where p.IdMagazin=1)


select id, categorie from CategorieProdus where id not in (
select p.idcategprod
from produs p inner join CategorieProdus cp 
on p.IdCategProd=cp.id
where p.IdMagazin=1)

