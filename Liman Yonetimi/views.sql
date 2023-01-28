create view ürünözet
as 
select
	ü.ürünId,
	ü.ürünadi,
	d.depoId,
	d.depoadi,
	i.Id iadeler,
	i.acýklama,
	s.Id satýlanlar,
	s.tarih,
	s.total
from ürünler ü
join depolar d on ü.ürünId=d.ürünId
join iadeler i on ü.ürünId=i.ürünId 
join satýlanlar s on ü.ürünId=s.ürünId
go
select * from ürünözet where ürünId between 60 and 70

create view kargoozet
as
select
	k.kargoId,
	ks.sirketadi,
	k.fiyat,
	k.müþteriId,
	m.müþteriadi,
	m.müþteriadres,
	ka.ad calisanadi,
	ka.email
from kargolar k
join kargosirketler ks on k.kargosirketId = ks.sirketId
join müþteriler m on k.müþteriId=m.müþteriId
join kargoalanlar ka on k.alankiþiId=ka.Id
go
select * from kargoozet
go

create view aracozet
as 
select 
	a.araçId,
	a.araçadi,
	a.benzinkapasitesi,
	d.depoadi,
	so.soforadi,
	se.seferadi,
	se.kalkiszamani,
	se.variszamani
from araçlar a
join depolar d on a.araçId=d.araçId
join seferler se on a.seferId=se.seferId
join soforler so on a.soforId=so.soforId 
go
select * from aracozet where araçId=2
go

create view kaçakbilgileri
as
select
	kg.Id kacakId,
	kg.ad,
	kg.soyad,
	kg.yas,
	kg.acýklama,
	g.gemiId,
	g.gemiadi,
	g.kaptanId,
	g.ilId,
	g.ilçeId
from kaçakgöçmenler kg
join gemiler g on kg.Id=g.kaçakId 
go
select * from kaçakbilgileri 
go

create view gemiözet
as
select
	l.limanId,
	l.limanadi,
	l.gemikapasitesi,
	i.iladi,
	g.gemiadi,
	g.kaptanId,
	g.benzinkapasitesi,
	g.ekmotorsayýsý
from gemiler g
join limanlar l on g.limanId=l.limanId
join iller i on l.limanId=i.limanId
go
select * from gemiözet












