Create Proc tedarikçigunc
	@tedarikçiId int,
	@tedarikçiadi varchar(200),
	@il varchar (50),
	@ilçe varchar(50)
as
begin 
	update tedarikçiler
	set tedarikçiadi=@tedarikçiadi,
	il=@il,
	ilçe=@ilçe
where tedarikçiId=@tedarikçiId
end
go
Create Proc limangünc
	@limanId int,
	@limanadi varchar(200),
	@gemikapasitesi int,
	@tedarikçiId int,
	@yöneticiId int
as
begin 
	update limanlar
	set limanadi=@limanadi,
	gemikapasitesi=@gemikapasitesi,
	tedarikçiId=@tedarikçiId,
	yöneticiId=@yöneticiId
where limanId=@limanId
end
go
Create Proc yöneticigunc
	@Id int,
	@ad varchar(50),
	@soyad varchar(50),
	@yas int,
	@email varchar(100)
as
begin 
	update yöneticiler
	set ad=@ad,
	soyad=@soyad,
	yas=@yas,
	email=@email
where Id=@Id
end
go
Create Proc kaptangunc
	@kaptanId int,
	@kaptanadi varchar(50),
	@kaptansoyadi varchar(60)
as
begin 
	update kaptanlar
	set kaptanadi=@kaptanadi,
	kaptansoyadi=@kaptansoyadi
where kaptanId=@kaptanId
end
go
Create Proc ilgunc
	@ilId int,
	@iladi varchar(30),
	@ilkodu int,
	@limanId int
as
begin 
	update iller
	set iladi=@iladi,
	ilkodu=@ilkodu,
	limanId=@limanId
where ilId=@ilId
end
go
Create Proc ilçegunc
	@ilçeId int,
	@ilçeadi varchar(30),
	@ilçekodu int,
	@ilId int
as
begin 
	update ilçeler
	set ilçeadi=@ilçeadi,
	ilçekodu=@ilçekodu,
	ilId=@ilId
where ilçeId=@ilçeId
end
go
Create Proc katagorigunc
	@katagoriId int,
	@katagoriadi varchar(70)
as
begin 
	update katagoriler
	set  katagoriadi=@katagoriadi
where katagoriId=@katagoriId
end
go
Create Proc ürüngunc
	@ürünId int,
	@ürünadi varchar(60),
	@ürünmiktari int,
	@ürünfiyati money,
	@katagoriId int
as
begin 
	update ürünler
	set ürünadi=@ürünadi,
	ürünmiktari=@ürünmiktari,
	ürünfiyati=@ürünfiyati,
	katagoriId=@katagoriId
where ürünId=@ürünId
end
go
Create Proc soforgunc
	@soforId int,
	@soforadi varchar(60)
as
begin 
	update soforler
	set soforadi=@soforadi
where soforId=@soforId
end
go
Create Proc sefergunc
	@seferId int,
	@seferadi varchar(50),
	@kalkiszamani datetime,
	@variszamani datetime
as
begin 
	update seferler
	set seferadi=@seferadi,
	kalkiszamani=@kalkiszamani,
	variszamani=@variszamani
where seferId=@seferId
end
go
 
Create Proc aracgunc
	@araçId int,
	@araçadi varchar(80),
	@limanId int,
	@benzinkapasitesi int,
	@soforId int,
	@seferId int
as
begin 
	update araçlar
	set  araçadi=@araçadi,
	limanId=@limanId,
	benzinkapasitesi=@benzinkapasitesi,
	soforId=@soforId,
	seferId=@seferId
where araçId=@araçId
end
go
Create Proc depogun
	@depoId int,
	@depoadi varchar(60),
	@ürünId int,
	@araçId int
as
begin 
	update depolar
	set depoadi=@depoadi,
	ürünId=@ürünId,
	araçId=@araçId
where araçId=@araçId
end
go
Create Proc müþterigün
	@müþteriId int,
	@müþteriadi varchar(50),
	@müþterisoyadi varchar(60),
	@müþteritelno varchar(20),
	@müþteritcno varchar(11),
	@müþteriadres varchar(300),
	@müþterieposta varchar (100),
	@ilId int
as
begin 
	update müþteriler
	set müþteriadi=@müþteriadi,
	müþterisoyadi=@müþterisoyadi,
	müþteritelno=@müþteritelno,
	müþteritcno=@müþteritcno,
	müþteriadres=@müþteriadres,
	müþterieposta=@müþterieposta,
	ilId=@ilId
where müþteriId=@müþteriId
end
go
Create Proc kargosirketgun
	@sirketId int,
	@sirketadi varchar(110),
	@ilId int,
	@ilçeId int
as
begin 
	update kargosirketler
	set sirketadi=@sirketadi,
	ilId=@ilId,
	ilçeId=@ilçeId
where sirketId=@sirketId
end
go
Create Proc kargoalangun
	@Id int,
	@ad varchar(45),
	@soyad varchar(50),
	@yas int,
	@sipariþsayýsý int,
	@email varchar(100)
as
begin 
	update kargoalanlar
	set ad=@ad,
	soyad=@soyad,
	yas=@yas,
	sipariþsayýsý=@sipariþsayýsý,
	email=@email
where Id=@Id
end
go
Create Proc kargogun
	@kargoId int,
	@müþteriId int,
	@ürünId int,
	@depoId int,
	@kargosirketId int,
	@fiyat money,
	@miktar int,
	@ilId int,
	@alankiþiId int,
	@ilçeId int
as
begin 
	update kargolar
	set müþteriId=@müþteriId,
	ürünId=@ürünId,
	depoId=@depoId,
	kargosirketId=@kargosirketId,
	fiyat=@fiyat,
	miktar=@miktar,
	ilId=@ilId,
	alankiþiId=@alankiþiId,
	ilçeId=@ilçeId
where kargoId=@kargoId
end
go
Create Proc kaçakgöçmengun
	@Id int,
	@ad varchar(45),
	@soyad varchar(50),
	@yas int,
	@acýklama varchar(100)
as
begin 
	update kaçakgöçmenler
	set ad=@ad,
	soyad=@soyad,
	yas=@yas,
	acýklama=@acýklama
where Id=@Id
end
go
Create Proc iscigun
	@Id int,
	@ad varchar(45),
	@soyad varchar(50),
	@yas int,
	@acýklama varchar(100)
as
begin 
	update isciler
	set ad=@ad,
	soyad=@soyad,
	yas=@yas,
	acýklama=@acýklama
where Id=@Id
end
go
Create Proc gemigunc
	@gemiId int,
	@gemiadi varchar(100),
	@limanId int,
	@kaptanId int,
	@ilId int,
	@ilçeId int,
	@benzinkapasitesi int,
	@ekmotorsayýsý int,
	@kaçakId int,
	@ürünId int
as
begin 
	update gemiler
	set gemiadi=@gemiadi,
	limanId=@limanId,
	kaptanId=@kaptanId,
	ilId=@ilId,
	ilçeId=@ilçeId,
	benzinkapasitesi=@benzinkapasitesi,
	ekmotorsayýsý=@ekmotorsayýsý,
	kaçakId=@kaçakId,
	ürünId=@ürünId
where gemiId=@gemiId
end
go
Create Proc iadegunc
	@Id int,
	@acýklama varchar(30),
	@ürünId int
as
begin 
	update iadeler
	set  acýklama=@acýklama,
	ürünId=@ürünId
where Id=@Id
end
go
Create Proc satýlangunc 
	@Id int,
	@adý varchar(30),
	@ürünId int,
 	@total int,
	@tarih datetime
as
begin 
	update satýlanlar
	set adý=@adý,
	ürünId=@ürünId,
	total=@total,
	tarih=@tarih
where Id=@Id
end
go
Create Proc odemeplantgunc
	@Id int,
	@plankod int,
	@durum varchar(100),
	@acýklama varchar(100)
as
begin 
	update odemeplanlari
	set plankod=@plankod,
	durum=@durum,
	acýklama=@acýklama
where Id=@Id
end
go
Create Proc sevkiyatfiþgun
	@Id int,
	@tip varchar(30),
	@fisno int,
	@kargosirketId int,
	@odemeplanId  int,
	@alýcý varchar(55),
	@satýcý varchar(55),
	@durum varchar(50),
	@kargofiþno int,
	@total varchar(80)
as
begin 
	update sevkiyatfiþleri
	set tip=@tip,
	fisno=@fisno,
	kargosirketId=@kargosirketId,
	odemeplanId=odemeplanId,
	alýcý=@alýcý,
	satýcý=@satýcý,
	durum=@durum,
	kargofiþno=@kargofiþno,
	total=@total
where Id=@Id
end
go


