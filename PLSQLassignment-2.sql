create table student(rollno number,name varchar2(50),sub_id number,mark1 number,mark2 number,mark3 number);
insert into student values(1,'Akshat',12,1,2,3);
insert into student values(2,'Kanika',11,1,2,4);
insert into student values(3,'Vaishnavi',13,1,2,5);
insert into student values(4,'Vanshika',14,1,2,6);
insert into student values(5,'Rukmini',12,1,2,7);
select * from student;

create or replace procedure p1(rn in number, total out number) as
    m1 student.mark1%TYPE;
    m2 number;
    m3 number;
begin
    select mark1,mark2,mark3 into m1,m2,m3 from student
    where rollno=rn;
	total:=m1+m2+m3;
end;
/
declare
    rn number;
    total number;
begin
    rn:=2;
    p1(rn,total);
	dbms_output.put_line(total);
end;




--local function finds the average marks of three number given above and rounds it up to make it a number
create or replace procedure p1(rn in number, total out number) as
    m1 student.mark1%TYPE;
    m2 number;
    m3 number;
begin
    select mark1,mark2,mark3 into m1,m2,m3 from student
    where rollno=rn;
	total:=m1+m2+m3;
end;
/
declare
	function find_avg(rn number) return integer as
        total number;
		average integer;
    begin
        p1(rn,total);
		dbms_output.put_line(total);
		average:=total/3;
		return ceil(average);
    end find_avg;
begin
    dbms_output.put_line('average marks secured by student '||find_avg(2));
end;