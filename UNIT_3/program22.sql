-- accept a student name and display the result if the student exists.
set serveroutput on

declare
    	s_name stud.name%type:='&student_name';
    	s_roll stud.rlno%type;
    	s_division stud.div%type;

begin
    	select rlno,div into s_roll,s_division from stud where name = s_name;

    	dbms_output.put_line('student name:'|| s_name);
    	dbms_output.put_line('roll number:'|| s_roll);
    	dbms_output.put_line('division: '|| s_division);

exception
     when no_data_found then
        dbms_output.put_line('student does not exist.');

end;
/