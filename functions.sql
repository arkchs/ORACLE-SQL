--creating a function in pl sql
create or replace function biggest_of_three
(a number, b number, c number)
return number as
    largest number;
BEGIN
    if a>b then
    	largest:=a;
	else
        largest:=b;
	End if;
	if largest<c then
        largest:=c;
	end if;
	return largest;
END;
/
begin
    dbms_output.put_line(biggest_of_three(2,5,4));
end;



create or replace function even_or_odd
(a number)
return varchar is
BEGIN
    if mod(a,2)=0 then
    	return 'T';
	else
        return 'F';
	End if;
END;
/
begin
    dbms_output.put_line(even_or_odd(4));
end;


create or replace function printTable
(a number) return number is
i number;
b number;
begin
    i:=1;
	b:=a;
    loop
        exit when i=11;
        dbms_output.put_line(b);
		b:=a+b;
        i:=i+1;
	end loop;
	return a;
end;
/

begin
    dbms_output.put_line(printTable(3));
end;




create or replace function printTable
(a number) return number is
i number;
b number;
begin
    i:=1;
	b:=a;
    while i<=10 loop
        dbms_output.put_line(b);
		b:=a+b;
        i:=i+1;
	end loop;
	return a;
end;
/

begin
    dbms_output.put_line(printTable(3));
end;



create or replace function printTable
(a number) return number is
i number;
b number;
begin
    i:=1;
	b:=a;
    for i in reverse 1..10 loop
        dbms_output.put_line(b*i);
		-- b:=a+b;
	end loop;
	return a;
end;
/
begin
    dbms_output.put_line(printTable(3));
end;


create or replace function fibo
(a number) return number is
f number;
s number;
sol number;
begin
	f:=0;
    s:=1;
	dbms_output.put_line(f);
	for i in 1..a loop
        dbms_output.put_line(s);
		sol:=f+s;
		f:=s;
		s:=sol;
    end loop;
	return sol;
end;
/
begin
    dbms_output.put_line(fibo(10));
end;