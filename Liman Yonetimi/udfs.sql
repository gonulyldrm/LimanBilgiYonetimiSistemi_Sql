create function fn_kdv
(
	@urunadý varchar(60),
	@fiyat money
)
returns money 
as
begin
	declare @kdv money = 0
	if @urunadý='alabalýk'
		select @kdv=@fiyat*0.16
	else
		select @kdv=@fiyat*0.36
	return @kdv
end 
go
select
	ü.ürünadi adý,
	ürünfiyati fiyatý,
	dbo.fn_kdv('alabalýk',ürünfiyati) kdv,
	(ü.ürünfiyati+dbo.fn_kdv('alabalýk',ürünfiyati)) kdvlý_toplam
from ürünler ü
go


create function ekmotorsayýsý
(
	@sayi int
)
returns bit
as
begin
	declare @yeterlilik bit
	declare @kapasite int = @sayi
	if @kapasite>3
		set @yeterlilik=0
	else
		set @yeterlilik=1
	return @yeterlilik
end
go
select
	g.gemiId,
	g.gemiadi,
	g.kaptanId,
	g.ekmotorsayýsý,
	dbo.ekmotorsayýsý(g.ekmotorsayýsý) yeterlilik
from gemiler g
go



 Create Function fn_tarihlersatýlanlist
 (
	@Date1 Datetime,
	@Date2 Datetime
 )
 Returns Table
 As
 Return Select 
			s.Id,
			s.adý,
			s.total,
			s.ürünId,
			s.tarih
		From satýlanlar s Where s.tarih Between @Date1 And @Date2 
Go


Create Function FN_araçlist(@aId int)
Returns Table
As
Return Select 
			a.araçadi,
			a.benzinkapasitesi,
			so.soforadi,
			se.seferadi,
			se.kalkiszamani,
			se.variszamani
		From araçlar a
		Join soforler so On so.soforId=a.soforId
		Join seferler se On se.seferId = a.seferId
		Where a.araçId = @aId
Go
Create Function fn_soforlist
 (
	@Id int
 )
 Returns Table
 As
 Return Select 
			so.soforId,
			so.soforadi
		From soforler so Where so.soforId=@Id

Go


Create Function fn_yöneticilist
 (
	@Id int,
	@Id2 int
 )
 Returns Table
 As
 Return Select 
		y.ad,
		y.soyad,
		y.email,
		y.yas
From yöneticiler y where Id=@Id and Id=@Id2
Go


Create Function fn_ürünlist
 (
	@Id int
 )
 Returns Table
 As
return Select 
		sum(ü.ürünmiktari) miktar,
		sum(ü.ürünfiyati) fiyat
From ürünler ü
Where ü.ürünId = @Id
Go 


Create Function fn_gemilist
 (
	@Id int
 )
 Returns Table
 As
return Select 
		COUNT(g.gemiadi) as gemisayýsý
From gemiler g
Where g.gemiId = @Id
Go


create function Fn_yas
(
	@sayi int
)
returns bit
as
begin
	declare @s bit
	declare @a int = @sayi
	if @a<18
		set @s=0
	if @a > 18
		set @s=1
	return @s
end
go
select
		K.ad,
		K.soyad,
		k.yas,
		k.acýklama,
		dbo.Fn_yas(k.yas)as izindurumu
from kaçakgöçmenler k
go

 




