Create Trigger TR�r�nekle
On �r�nler
After Insert
As
	Declare @Id INT, @Ad VARCHAR(60), @fiyat MONEY, @miktar INT,@katagoriId int
	Select 
		@Id= �r�nId,
		@Ad=�r�nadi,
		@miktar =  �r�nmiktari,
		@fiyat = �r�nfiyati,
		@katagoriId=@katagoriId
	From inserted
	Insert Into �r�nler Values(@Id, @Ad , @fiyat, @miktar,@katagoriId)
Go

Create Trigger TRkargoalansil
On kargoalanlar
Instead Of Delete
As
	Declare @Id INT
	Select @Id = Id From deleted
	Update kargoalanlar Set yas = 20 Where Id = @Id
go

Create Trigger TRsat�langunc
On sat�lanlar
For Update
As
	Declare @Id int,@ad� varchar(30),@�r�nId int,@tarih datetime,@total int
	Select 
		@Id = Id
	From deleted
	Select 
		@ad�=ad�,
		@�r�nId =�r�nId,
 		@total=total,
		@tarih =tarih 
	From inserted
	update sat�lanlar
	set ad�=@ad�,
		�r�nId=@�r�nId,
		total=@total,
		tarih=@tarih
	where Id=@Id
Go

Create Trigger TRara�sil
On ara�lar
Instead Of Delete
As
	Declare @Id INT
	Select @Id = ara�Id From deleted
	Update ara�lar Set benzinkapasitesi=0 Where ara�Id = @Id
go












