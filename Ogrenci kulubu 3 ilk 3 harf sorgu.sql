----select upper('merhaba') as 'sutun'

--select lower(ograd)  as 'ogrenci ad�' , upper(ogrsoyad) as 'ogrenci soyad'

--from TBLOGRENCILER

--sehri adana ve kulubu satranc soyadlar� kucuk olsun

--select lower(ogrsoyad) as 'soyad ' from TBLOGRENCILER 
--where OGRKULUP='satranc' and OGRSEHIR='adana'


-- ogrencinin kulubunun ilk 3 harfi bil. gibi

select OGRAD + ' ' + OGRSOYAD as 'Ad Soyad' ,substring(KULUPAD,1,3) as 'Kulup Ad'

from TBLOGRENCILER
inner join TBLKULUP
on TBLOGRENCILER.OGRKULUP=TBLKULUP.KULUPID

