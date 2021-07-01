use world;
select * from  country;

select substring(name, 1, 3) from country;

select name, region from country;
select concat(name, region) from country;
select concat(name, region) FULLNAME from country; 
