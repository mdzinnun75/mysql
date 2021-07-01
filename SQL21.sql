use world;
select * from city;
select * from countrylanguage;

select name, population, city.CountryCode from city inner join countrylanguage 
on
city.CountryCode = countrylanguage.CountryCode;


select name, city.CountryCode, language, IsOfficial, population from city left join countrylanguage 
on
city.CountryCode = countrylanguage.countrycode;

select name, city.CountryCode, language, isofficial, population from city right join countrylanguage 
on
city.CountryCode = countrylanguage.countrycode; 