#GROUP BY
#GROUP BY

use world;
select * from country;

select continent, sum(population) from country group by continent;
select continent, avg(population) from country group by continent;   
select region, avg(surfacearea) from country group by region;
select region, max(lifeexpectancy) from country group by region;
select indepyear, max(gnp) from country group by indepyear;
select governmentform, count(name) from country group by governmentform;

select continent, max(population), min(population) from country group by continent;


select continent, region, count(*) from country group by continent;
select continent, region, count(*) from country group by continent, region;


select continent, count(*) from country group by continent;
select continent, count(*) from country group by continent having count(*)>20;

select continent, sum(lifeexpectancy) from country group by continent having sum(lifeexpectancy) > 3000;
select continent, sum(lifeexpectancy) from country where continent<>"asia" group by continent;

select population, avg(LifeExpectancy) from country where population > 14000000 group by population;
-- Where --- Group By ---- Having
select population, avg(LifeExpectancy) from country where population > 14000000 group by population having avg(LifeExpectancy) > 70;

