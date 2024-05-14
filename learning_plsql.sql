
--part two exploring the use of table in plsql
create table student(
    rollno number,
    name varchar(50),
    class varchar(10),
    constraint pk_constraint primary key (rollno)
);
insert into student values(1,'Akshat','IV');
insert into student values(2,'Vanshika','V');
insert into student values(3,'Rukmini','VIII');
insert into student values(4,'Raman','X');
insert into student values(5,'Anamika','IV');

declare
    name student.name%TYPE;
	id student.rollno%TYPE;
	class student.class%TYPE;
begin
    select rollno,name,class into id,name,class from student where rollno=4;
	dbms_output.put_line(id || ', ' || name ||', '||class);
end;

desc student;
select * from student order by class;

alter table student drop constraint pk_constraint;
alter table student add constraint pk_constraint primary key (rollno,class);

insert into student values(2,'Vaishnavi','IV');
insert into  student values(3,'Zainab','IV');

select * from student order by class,rollno;


--exploring the use of conditionals in plsql
declare
a number;
b number;
c number;
begin
    a:=2;
	b:=2;
	if (a>b) then
        dbms_output.put_line('a is greater than b');
	elsif (a=b) then
        dbms_output.put_line('a is equal to b');
	else
    	dbms_output.put_line('a is smaller than b');
	end if;
end;

--normal loop
declare
i number(2);
begin
i:=1;
loop
exit when i=11;
dbms_output.put_line(i);
i:=i+1;
end loop;
end;

--while loop
declare
i number(2);
begin
i:=1;
while i<=10 loop
dbms_output.put_line(i);
i:=i+1;
end loop;
end;

--for loop
declare
i number(2);
begin
for i in 1..10 loop
dbms_output.put_line(i);
end loop;
end;



--this is the example of a function that returns a value
    create table customers(id number);

    insert into customers values(1);
    insert into customers values(1);
    insert into customers values(1);
    insert into customers values(1);
    insert into customers values(1);
    insert into customers values(1);

create or replace function foo
return number is
total number(2):=1;
begin
select count(*) into total from customers;
return total;
end;

declare
c number;
begin
c:=foo();
dbms_output.put_line(c);
end;

