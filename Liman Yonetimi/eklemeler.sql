Create Proc tedarikçiekle
	@tedarikçiId int,
	@tedarikçiadi varchar(200),
	@il varchar (50),
	@ilçe varchar(50)
as
begin 
	insert into tedarikçiler(tedarikçiId,tedarikçiadi,il,ilçe) values(@tedarikçiId,@tedarikçiadi,@il,@ilçe)
end
go
Create Proc limanekle
	@limanId int,
	@limanadi varchar(200),
	@gemikapasitesi int,
	@tedarikçiId int,
	@yöneticiId int
as
begin 
	insert into limanlar(limanId,limanadi,gemikapasitesi,tedarikçiId,yöneticiId) values(@limanId,@limanadi,@gemikapasitesi,@tedarikçiId,@yöneticiId)
end
go
Create Proc yöneticiekle
	@Id int,
	@ad varchar(50),
	@soyad varchar(50),
	@yas int,
	@email varchar(100)
as
begin 
	insert into yöneticiler(Id,ad,soyad,yas,email)values(@Id,@ad,@soyad,@yas,@email)
end
go
Create Proc kaptanekle
	@kaptanId int,
	@kaptanadi varchar(50),
	@kaptansoyadi varchar(60)
as
begin 
	insert into kaptanlar(kaptanId,kaptanadi,kaptansoyadi)values(@kaptanId,@kaptanadi,@kaptansoyadi)
end
go
Create Proc ilekle
	@ilId int,
	@iladi varchar(30),
	@ilkodu int,
	@limanId int
as
begin 
	insert into iller(ilId,iladi,ilkodu,limanId)values(@ilId,@iladi,@ilkodu,@limanId)
end
go
Create Proc ilçeekle
	@ilçeId int,
	@ilçeadi varchar(30),
	@ilçekodu int,
	@ilId int
as
begin 
	insert into ilçeler(ilçeId,ilçeadi,ilçekodu,ilId)values(@ilçeId,@ilçeadi,@ilçekodu,@ilId)
end
go
Create Proc katagoriekle
	@katagoriId int,
	@katagoriadi varchar(70)
as
begin 
	insert into katagoriler(katagoriId,katagoriadi) values (@katagoriId,@katagoriadi)
end
go

Create Proc ürünekle
	@ürünId int,
	@ürünadi varchar(60),
	@ürünmiktari int,
	@ürünfiyati money,
	@katagoriId int
as
begin 
	insert into ürünler(ürünId,ürünadi,ürünmiktari,ürünfiyati,katagoriId)values(@ürünId,@ürünadi,@ürünmiktari,@ürünfiyati,@katagoriId)
end
go
Create Proc soforekle
	@soforId int,
	@soforadi varchar(60)
as
begin 
	insert into soforler(soforId,soforadi)values(@soforId,@soforadi)
end
go
Create Proc seferekle
	@seferId int,
	@seferadi varchar(50),
	@kalkiszamani datetime,
	@variszamani datetime
as
begin 
	insert into seferler(seferId,seferadi,kalkiszamani,variszamani)values(@seferId,@seferadi,@kalkiszamani,@variszamani)
end
go
Create Proc aracekle
	@araçId int,
	@araçadi varchar(80),
	@limanId int,
	@benzinkapasitesi int,
	@soforId int,
	@seferId int
as
begin 
	insert into araçlar(araçId,araçadi,limanId,benzinkapasitesi,soforId,seferId)values(@araçId,@araçadi,@limanId,@benzinkapasitesi,@soforId,@seferId)
end
go
Create Proc depoekle
	@depoId int,
	@depoadi varchar(60),
	@ürünId int,
	@araçId int
as
begin 
	insert into depolar(depoId,depoadi,ürünId,araçId)values(@depoId,@depoadi,@ürünId,@araçId)
end
go
Create Proc müþteriekle
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
	insert into müþteriler(müþteriId,müþteriadi,müþterisoyadi,müþteritelno,müþteritcno,müþteriadres,müþterieposta,ilId)
	values(@müþteriId,@müþteriadi,@müþterisoyadi,@müþteritelno,@müþteritcno,@müþteriadres,@müþterieposta,@ilId)
end
go
Create Proc kargosirketekle
	@sirketId int,
	@sirketadi varchar(110),
	@ilId int,
	@ilçeId int
as
begin 
	insert into kargosirketler(sirketId,sirketadi,ilId,ilçeId) values(@sirketId,@sirketadi,@ilId,@ilçeId)
end
go
Create Proc kargoalanekle
	@Id int,
	@ad varchar(45),
	@soyad varchar(50),
	@yas int,
	@sipariþsayýsý int,
	@email varchar(100)
as
begin 
	insert into kargoalanlar(Id,ad,soyad,yas,sipariþsayýsý,email) values(@Id,@ad,@soyad,@yas,@sipariþsayýsý,@email)
end
go
Create Proc kargoekle
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
	insert into kargolar(kargoId,müþteriId,ürünId,depoId,kargosirketId,fiyat,miktar,ilId,alankiþiId,ilçeId)
		values(@kargoId,@müþteriId,@ürünId,@depoId,@kargosirketId,@fiyat,@miktar,@ilId,@alankiþiId,@ilçeId)
end
go
Create Proc kaçakgöçmenekle
	@Id int,
	@ad varchar(45),
	@soyad varchar(50),
	@yas int,
	@acýklama varchar(100)
as
begin 
	insert into kaçakgöçmenler(Id,ad,soyad,yas,acýklama) values(@Id,@ad,@soyad,@yas,@acýklama)
end
go
Create Proc isciekle
	@Id int,
	@ad varchar(45),
	@soyad varchar(50),
	@yas int,
	@acýklama varchar(100)
as
begin 
	insert into isciler(Id,ad,soyad,yas,acýklama) values(@Id,@ad,@soyad,@yas,@acýklama)
end
go
Create Proc gemiekle
	@gemiId int,
	@gemiadi varchar(100),
	@limanId int,
	@kaptanId int,
	@ilId int,
	@ilçeId int,
	@benzinkapasitesi int,
	@ekmotorsayýsý int,
	@kaçakId int,
	@ürünId int,
	@isciId int
as
begin 
	insert into gemiler(gemiId,gemiadi,limanId,kaptanId,ilId,ilçeId,benzinkapasitesi,ekmotorsayýsý,kaçakId,ürünId,isciId) 
	values(@gemiId,@gemiadi,@limanId,@kaptanId,@ilId,@ilçeId,@benzinkapasitesi,@ekmotorsayýsý,@kaçakId,@ürünId,@isciId)
end
go
Create Proc iadeekle
	@Id int,
	@acýklama varchar(30),
	@ürünId int
as
begin 
	insert into iadeler(Id,acýklama,ürünId)values(@Id,@acýklama,@ürünId)
end
go
Create Proc satýlanekle 
	@Id int,
	@adý varchar(30),
	@ürünId int,
 	@total int,
	@tarih datetime
as
begin 
	insert into satýlanlar(Id,adý,ürünId,tarih,total)values(@Id,@adý,@ürünId,@tarih,@total)
end
go
Create Proc odemeplantekle
	@Id int,
	@plankod int,
	@durum varchar(100),
	@acýklama varchar(100)
as
begin 
	insert into odemeplanlari(Id,plankod,durum,acýklama) values(@Id,@plankod,@durum,@acýklama)
end
go
Create Proc sevkiyatfiþekle
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
	insert into sevkiyatfiþleri(Id,tip,fisno,kargosirketId,odemeplanId,alýcý,satýcý,durum,kargofiþno,total)
	values(@Id,@tip,@fisno,@kargosirketId,@odemeplanId,@alýcý,@satýcý,@durum,@kargofiþno,@total)
end







