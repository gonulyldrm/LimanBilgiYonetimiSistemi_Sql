create proc tedarikçisil
	@Id int
as
begin
	delete from tedarikçiler where tedarikçiId=@Id
end 
go
create proc yöneticisil
	@Id int
as
begin
	delete from yöneticiler where Id=@Id
end 
go
create proc limansil
	@Id int
as
begin
	delete from limanlar where limanId=@Id
end 
go
create proc kaptansil
	@Id int
as
begin
	delete from kaptanlar where kaptanId=@Id
end 
go
create proc ilsil
	@Id int
as
begin
	delete from iller where ilId=@Id
end 
go
create proc ilçesil
	@Id int
as
begin
	delete from ilçeler where ilçeId=@Id
end 
go
create proc katagorisil
	@Id int
as
begin
	delete from katagoriler where katagoriId=@Id
end 
go
create proc ürünsil
	@Id int
as
begin
	delete from ürünler where ürünId=@Id
end 
go
create proc soforsil
	@Id int
as
begin
	delete from soforler where soforId=@Id
end 
go
create proc sefersil
	@Id int
as
begin
	delete from seferler where seferId=@Id
end 
go
create proc aracsil
	@Id int
as
begin
	delete from araçlar where araçId=@Id
end 
go
create proc deposil
	@Id int
as
begin
	delete from depolar where depoId=@Id
end 
go
create proc müþterisil
	@Id int
as
begin
	delete from müþteriler where müþteriId=@Id
end 
go
create proc kargoþirketsil
	@Id int
as
begin
	delete from kargosirketler where sirketId=@Id
end 
go
create proc kargoalansil
	@Id int
as
begin
	delete from kargoalanlar where Id=@Id
end 
go
create proc kargosil
	@Id int
as
begin
	delete from kargolar where kargoId=@Id
end 
go
create proc kaçaksil
	@Id int
as
begin
	delete from kaçakgöçmenler where Id=@Id
end 
go
create proc iscisil
	@Id int
as
begin
	delete from isciler where Id=@Id
end 
go
create proc gemisil
	@Id int
as
begin
	delete from gemiler where gemiId=@Id
end 
go
create proc iadesil
	@Id int
as
begin
	delete from iadeler where Id=@Id
end 
go
create proc satýlansil
	@Id int
as
begin
	delete from satýlanlar where Id=@Id
end 
go
create proc sevkiyatfiþisil
	@Id int
as
begin
	delete from sevkiyatfiþleri where Id=@Id
end 
go
create proc odemeplansil
	@Id int
as
begin
	delete from odemeplanlari where Id=@Id
end 
go







