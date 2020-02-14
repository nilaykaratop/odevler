

DECLARE @mail nvarchar(150) = 'nilay.karatop@gmail.com' , @isim nvarchar(50) = 'Nilay' , @soyisim nvarchar(50) = 'Karatop' ,
@domain nvarchar(50) = '@gmail.com' ;
PRINT @mail;
PRINT @isim;
PRINT @soyisim;
PRINT @domain;
SELECT @mail = @mail + ' mail ' , @isim = @isim + ' isim ', @soyisim = @soyisim + ' soyisim ' ,  @domain = @domain +' domain'
PRINT @mail;
PRINT @isim;
PRINT @soyisim;
PRINT @domain;
SELECT @mail = 'nilay.karatop@gmail.com' , @isim = 'Nilay' , @soyisim = 'Karatop' , @domain = '@gmail.com';

select @mail AS 'MAIL' , @isim AS 'ISIM', @soyisim AS 'SOYISIM' , @domain AS 'DOMAIN' 


DECLARE @mail nvarchar(150) , @isim nvarchar(50) ,@soyisim nvarchar(50) , @domain nvarchar(50)
SELECT @mail = 'nilay.karatop@gmail.com' , @isim = 'Nilay' , @soyisim = 'Karatop' , @domain = '@gmail.com'
PRINT @mail;
PRINT @isim;
PRINT @soyisim;
PRINT @domain;




