select current_date from dual;

select sysdate from dual;

select current_timestamp from dual;

select trunc(122,-2) from dual;

select trunc(sysdate,'mm') from dual;

select to_char(sysdate,'dd') from dual;

select to_char(systimestamp) from dual;

SELECT CONVERT(VARCHAR(8), GETDATE(),108) from dual;

SELECT TO_CHAR(SYSTIMESTAMP, 'YYYY-MM-DD HH24:MI:SS.FF TZH:TZM') FROM dual;
