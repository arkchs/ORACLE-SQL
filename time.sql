--displays the messages for time according to ist

declare
    curr timestamp;
	hh number;
	mm number;
begin
    select systimestamp at time zone 'US/pacific' into curr from dual;
	dbms_output.put_line(curr);
	hh:= to_number(to_char(curr,'hh'));
	mm:=to_number(to_char(curr,'mm'));
	hh:=hh+12;
	if (mm+30)>=60 then
        hh:=hh+1;
	end if;
	if hh<12 then
        dbms_output.put_line('good morning');
    elsif hh<18 then
        dbms_output.put_line('good afternoon');
    else 
    dbms_output.put_line('good night');
	end if;
end;


