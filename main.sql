-- SQLite
-- Single Table Lab Sheet

---CREATE TABLE pet (name VARCHAR(20), owner VARCHAR(20), species VARCHAR(20), sex CHAR(1), checkups SMALLINT UNSIGNED, birth DATE, death DATE);

. schema
. table

select * from pet;
SELECT * FROM pet WHERE sex = 'm';
SELECT DISTINCT owner FROM pet;
SELECT name, species, sex FROM pet WHERE species = 'snake' OR species
= 'bird';
SELECT name, owner, sex FROM pet WHERE sex = 'f'; 
SELECT name, birth, species FROM pet WHERE species = 'dog';
SELECT name, owner, species FROM pet WHERE species = 'bird';
SELECT species FROM pet WHERE sex = 'f';
SELECT name, birth FROM pet WHERE species = 'cat' OR species = 'bird';
SELECT name, species, sex FROM pet WHERE (species = 'cat' OR species = 'bird') AND sex = 'f';
SELECT name FROM pet WHERE sex < 'm';
SELECT name, owner FROM pet WHERE substr(name, -2) = 'er' OR substr(name, -3) = 'all';
SELECT name, owner FROM pet WHERE instr(owner, 'e') > 0; 
SELECT name From pet where substr(name, -2) <> 'fy';
SELECT name, owner FROM pet where length(owner) =4;
SELECT owner FROM pet where upper(substr(owner, 1, 1)) BETWEEN 'A' AND 'E' AND upper(substr(owner, -1, 1)) BETWEEN 'A' and 'E'; 
SELECT name, birth FROM pet ORDER BY birth; 
SELECT name, birth FROM pet ORDER BY birth DESC;
SELECT name, species, birth FROM pet ORDER BY species, birth DESC;
SELECT name, species, birth FROM pet ORDER BY birth, species DESC;

SELECT name FROM pet WHERE strftime('%m',birth) = strftime('%m','now');
SELECT name, strftime('%m', birth) FROM pet;
SELECT name, strftime('%m', birth)AS Month FROM pet;
SELECT owner, name, (checkups * 20) AS income FROM pet;
SELECT owner, name, birth, MIN(strftime('%Y',birth)) AS birth FROM pet GROUP BY owner;
SELECT owner, AVG(checkups) AS avg_checkups from pet group by owner;
SELECT species, COUNT(*) as num_pets from pet group by species order by num_pets ASC; 
SELECT owner, species, COUNT(*) AS num_pets from pet group by owner, species; 
SELECT owner, COUNT(DISTINCT species) AS distinct_species FROM pet GROUP BY owner;
SELECT owner, COUNT(*) AS number_birds from pet WHERE species = 'bird'; 
SELECT owner, SUM(checkups) AS total_checkups from pet GROUP BY owner; 