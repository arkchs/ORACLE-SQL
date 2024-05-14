select chr(65) from dual;--number to ascii

select concat('abd','eddf') from dual;--concatenates

select instr('abc','e') from dual;--index of the character with 1 
--based indexing, returns 0 on not found.

select length('abs') from dual;--size of the string

select lpad ('a',2,'b') from dual;--number is the size of the 
--resulting string and it is left padded by the second one

select rpad ('a',3,'b') from dual;--number is the size of the
--resulting string and it is right padded by the second one

select ltrim('abscab','sc') from dual;--deletes the second character
--if found on the left, so the above code doesn't remove 
--sc because it is not on the left part.

select rtrim('abscab','ab') from dual;--removes the second string
--from the right

select replace('absdfs','s','c')from dual;--changes all instances of 
--searched string s to c

select substr('absfs',3,2) from dual;--string,position,length of
--the substring.

select initcap('lesgoboi hello') from dual;--initial letter
--of each word becomes capital

select lower('UPPer') from dual;

select upper('uppER') from dual;

select translate('lesgoboiamiana','a','m') from dual;--converts
--all second string characters to third string in the first input string
--irrespectively of the order of the characters in the second string.
--example: ('so what','ah','e') gives 'so wet'

select abs(-23) from dual;

select ceil(12.2) from dual;

select cos(3.14) from dual;

select exp(2) from dual;

select floor(2.9) from dual;

select mod(10,6) from dual;--10%6

select power(2,3) from dual;--2^3

select round(1.2323,2) from dual;--2 decimal places

select sign(-12) from dual;

select sqrt(64) from dual;

select trunc(122,-2) from dual;--truncate to -2 decimal places

select sysdate from dual;

select add_months('12-aug-2024',2) from dual;--increase the month by 2

select last_day('12-aug-2024') from dual;--last day of the month

select months_between('1-aug-2024','1-feb-2024') from dual;

select next_day('1-jan-2024','WEDNESDAY') from dual;--next day of the week

select greatest(3,2,1,2,3,4) from dual;

select least(1,23,2,2323,2,3) from dual;

select to_char(sysdate,'hhmiss') from dual;--displays hours, minutes and seconds


drop table emp;
create table emp(
    salary int,
    commision int
);

insert into emp values (12,3);
insert into emp values (23,4);
insert into emp values (34,2);
insert into emp values (12,2);
select * from emp;
select sum(salary) from emp;



