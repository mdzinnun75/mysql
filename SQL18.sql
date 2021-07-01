# Order BY
# Order BY

use world;
select * from country; 

select * from country order by region;
select * from country order by region desc;

select population, avg(LifeExpectancy) from country where population > 14000000 group by population having avg(LifeExpectancy) > 70 order by population desc;		-- descending order
select population, avg(LifeExpectancy) from country where population > 14000000 group by population having avg(LifeExpectancy) > 70 order by avg(LifeExpectancy) desc;

