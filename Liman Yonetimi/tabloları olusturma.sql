create database limanyönetimi
go
use limanyönetimi
go
create table tedarikçiler
(
	tedarikçiId int,
	tedarikçiadi varchar(200),
	il varchar (50),
	ilçe varchar(50),
	constraint pk_tedarikçiler_tedarikçiId primary key(tedarikçiId)
)
 go
 create table yöneticiler
 (
	Id int,
	ad varchar(50),
	soyad varchar(50),
	yas int,
	email varchar(100),
	constraint pk_yöneticiler_Id primary key(Id)
)
create table limanlar
(
	limanId int,
	limanadi varchar(200),
	gemikapasitesi int,
	tedarikçiId int,
	yöneticiId int,
	Constraint PK_limanlar_limanId Primary Key(limanId),
	constraint fk_limanlar_tedarikçiId foreign key(tedarikçiId) references tedarikçiler(tedarikçiId),
	constraint fk_limanlar_yöneticiId foreign key(yöneticiId) references yöneticiler(Id)
)
go
create table kaptanlar
(
	kaptanId int,
	kaptanadi varchar(50),
	kaptansoyadi varchar(60),
	constraint pk_kaptanlar_kaptanId primary key(kaptanId)
)
go
create table iller 
(
	ilId int,
	iladi varchar(30),
	ilkodu int,
	limanId int,
	constraint pk_iller_ilId primary key(ilId),
	constraint fk_iller_limanId foreign key(limanId) references limanlar (limanId)
)
go
create table ilçeler
(
	ilçeId int,
	ilçeadi varchar(30),
	ilçekodu int,
	ilId int,
	constraint pk_ilçeler_ilçeId primary key(ilçeId),
	constraint fk_ilçeler_ilId foreign key(ilId) references iller (ilId)
)
go
create table katagoriler
(
	katagoriId int,
	katagoriadi varchar(70),
	constraint pk_katagoriler_katagoriId primary key(katagoriId)

)
go
create table ürünler
(
	ürünId int,
	ürünadi varchar(60),
	ürünmiktari int,
	ürünfiyati money,
	katagoriId int,
	constraint pk_ürünler_ürünId primary key(ürünId),
	constraint fk_ürünler_katagoriId foreign key(katagoriId) references katagoriler(katagoriId)
)
go
create table soforler
(
	soforId int,
	soforadi varchar(60),
	constraint pk_soforler_soforId primary key(soforId)
)
go
create table seferler
(
	seferId int,
	seferadi varchar(50),
	kalkiszamani datetime,
	variszamani datetime,
	constraint pk_seferler_seferId primary key(seferId)
)
go
create table araçlar
(
	araçId int,
	araçadi varchar(80),
	limanId int,
	benzinkapasitesi int,
	soforId int,
	seferId int,
	constraint pk_araçlar_araçId primary key(araçId),
	constraint fk_araçlar_limanId foreign key(limanId) references limanlar(limanId),
	constraint fk_araçlar_soforId foreign key(soforId) references soforler(soforId),
	constraint fk_araçlar_seferId foreign key(seferId) references seferler(seferId) 

)
go
create table depolar
(
	depoId int,
	depoadi varchar(60),
	ürünId int,
	araçId int,
	constraint pk_depolar_depoId primary key(depoId),
	constraint fk_depolar_ürünId foreign key(ürünId) references ürünler(ürünId),
	constraint fk_depolar_araçId foreign key(araçId) references araçlar(araçId)
)
go
create table müþteriler
(
	müþteriId int,
	müþteriadi varchar(50),
	müþterisoyadi varchar(60),
	müþteritelno varchar(20),
	müþteritcno varchar(11),
	müþteriadres varchar(300),
	müþterieposta varchar (100),
	ilId int,
	constraint pk_müþteriler_müþteriId primary key(müþteriId),
	constraint fk_müþteriler_ilId foreign key(ilId) references iller(ilId)
)
go
create table kargosirketler
(
	sirketId int,
	sirketadi varchar(110),
	ilId int,
	ilçeId int,
	constraint pk_kargosirketler_sirketId primary key(sirketId),
	constraint fk_kargosirketler_ilId foreign key(ilId) references iller(ilId),
	constraint fk_kargosirketler_ilçeId foreign key(ilçeId) references ilçeler(ilçeId),
)
go
create table kargoalanlar
(
	Id int,
	ad varchar(45),
	soyad varchar(50),
	yas int,
	sipariþsayýsý int,
	email varchar(100),
	constraint pk_kargoalanlar_Id primary key(Id)
)
go
create table kargolar
(
	kargoId int,
	müþteriId int,
	ürünId int,
	depoId int,
	kargosirketId int,
	fiyat money,
	miktar int,
	ilId int,
	alankiþiId int,
	ilçeId int,
	constraint pk_kargolar_kargoId primary key(kargoId),
	constraint fk_kargolar_ilId foreign key(ilId) references iller(ilId),
	constraint fk_kargolar_ilçeId foreign key(ilçeId) references ilçeler(ilçeId),
	constraint fk_kargolar_depoId foreign key(depoId) references depolar(depoId),
	constraint fk_kargolar_kargosirketId foreign key(kargosirketId) references kargosirketler(sirketId),
	constraint fk_kargolar_müþteriId foreign key(müþteriId) references müþteriler(müþteriId),
	constraint fk_kargolar_alankiþiId foreign key(alankiþiId) references kargoalanlar(Id)

)
go
create table kaçakgöçmenler
(
	Id int,
	ad varchar(45),
	soyad varchar(50),
	yas int,
	acýklama varchar(100),
	constraint pk_kaçakgöçmenler_Id primary key(Id)
)
go
create table isciler
(
	Id int,
	ad varchar(45),
	soyad varchar(50),
	yas int,
	acýklama varchar(100),
	constraint pk_isciler_Id primary key(Id)

)
go
create table gemiler
(
	gemiId int,
	gemiadi varchar(100),
	limanId int,
	kaptanId int,
	ilId int,
	ilçeId int,
	benzinkapasitesi int,
	ekmotorsayýsý int,
	kaçakId int,
	ürünId int,
	isciId int,
	Constraint PK_gemiler_gemiId Primary Key(gemiId),
	constraint fk_gemiler_limanId foreign key(limanId) references limanlar(limanId),
	constraint fk_gemiler_kaptanId foreign key(kaptanId) references kaptanlar(kaptanId),
	constraint fk_gemiler_ilId foreign key(ilId) references iller(ilId),
	constraint fk_gemiler_ilçeId foreign key(ilçeId) references ilçeler(ilçeId),
	constraint fk_gemiler_ürünId foreign key(ürünId) references ürünler(ürünId),
	constraint fk_gemiler_kaçakId foreign key(kaçakId) references kaçakgöçmenler(Id),
	constraint fk_gemiler_isciId foreign key(isciId) references isciler(Id)


)
go
create table iadeler
(
	Id int,
	acýklama varchar(30),
	ürünId int,
	constraint pk_iadeler_Id primary key(Id),
	constraint fk_iadeler_ürünId foreign key(ürünId) references ürünler(ürünId) 

)
go
create table satýlanlar
(
	Id int,
	adý varchar(30),
	ürünId int,
 	total int,
	tarih datetime,
	constraint pk_satýlanlar_Id primary key(Id),
	constraint fk_satýlanlar_ürünId foreign key(ürünId) references ürünler(ürünId)  
)
go
create table odemeplanlari
(
	Id int,
	plankod int,
	durum varchar(100),
	acýklama varchar(100),
 	constraint pk_odemeplanlari_Id primary key(Id),
)
go
create table sevkiyatfiþleri
(
	Id int,
	tip varchar(30),
	fisno int,
	kargosirketId int,
	odemeplanId  int,
	alýcý varchar(55),
	satýcý varchar(55),
	durum varchar(50),
	kargofiþno int,
	total varchar(80),
	constraint pk_sevkiyatfiþleri_Id primary key(Id),
	constraint fk_sevkiyatfiþleri_kargosirketId foreign key(kargosirketId) references kargosirketler(sirketId),
	constraint fk_sevkiyatfiþleri_odemeplanId foreign key(odemeplanId) references odemeplanlari(Id)
)
go













