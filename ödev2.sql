

CREATE FUNCTION PhoneNoFormat(@phone varchar(20))
RETURNS VARCHAR(20)
BEGIN
DECLARE @returnphone VARCHAR(20)
SET @returnphone=SUBSTRING(@phone,1,1)+ ' (' + SUBSTRING(@phone,2,3)+ ') ' + SUBSTRING(@phone,5,3) + ' '+ SUBSTRING(@phone,8,2) + ' ' + SUBSTRING(@phone,10,2)
RETURN @returnphone
END
SELECT [dbo].[PhoneNoFormat]('05310821220') as TELEFON
