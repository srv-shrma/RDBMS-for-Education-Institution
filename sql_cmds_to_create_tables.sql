--SQL COMMANDS TO CREATE TABLES IN CREATED DATABASE



create table department_code(did number(3) constraint pk_cons_did_code primary key, 
dname varchar(30), location varchar(60),
constraint uq_cons_dname_code unique(dname));
alter table department_code modify dname varchar(30) constraint nn_cons_dname_code not null;

desc department_code;

  

create table course_code(cid number(4) constraint pk_cons_cid_code primary key, cname varchar(30),
trade varchar(60), f_did number(3), constraint uq_cons_cnametrade_code unique(cname, trade),
constraint fk_cons_did_code foreign key(f_did) references department_code(did));
alter table course_code modify cname varchar(30) constraint nn_cons_cname_code not null; 
alter table course_code modify trade varchar(60) constraint nn_cons_trade_code not null;

desc course_code;



create table student_code(rollno number(3) constraint pk_cons_rollno_code primary key, 
sname varchar(30) constraint nn_cons_name_code not null, 
saddress varchar(60) constraint nn_cons_addr_code not null,
smob number(10) constraint nn_cons_mob_code not null, dob date, f_cid number(4), 
constraint uq_cons_nameadd_code unique(sname, saddress),
constraint uq_cons_mobile_code unique(smob), constraint fk_cons_cid_code foreign key(f_cid) references 
course_code(cid));

desc student_code;



create table faculty_code(empid number(4) constraint pk_cons_empid_code primary key, 
name varchar(30), address varchar(60), mob number(10), email varchar(60), salary number(6), 
femp_did number(3), doj date,
constraint uq_cons_nameaddr_code unique(name, address), constraint uq_cons_mob_code unique(mob),
constraint fk_cons_fdid_code foreign key(femp_did) references department_code(did));
alter table faculty_code modify name varchar(30) constraint nn_cons_fname_code not null; 
alter table faculty_code modify address varchar(60) constraint nn_cons_faddr_code not null; 
alter table faculty_code modify mob number(10) constraint nn_cons_fmob_code not null; 
alter table faculty_code modify salary number(6) constraint nn_cons_fsalary_code not null 
constraint nnc_cons_salary_code check(salary >= 10000);
alter table faculty_code modify doj date constraint nn_cons_fdoj_code not null; 

desc faculty_code;



create table paper_subject_code(pcode number(4) constraint pk_cons_pcode_code primary key, 
pname varchar(30), semester number(1));
alter table paper_subject_code modify semester varchar(7);
alter table paper_subject_code modify pname varchar(30) constraint nn_cons_pname_code not null;

desc paper_subject_code;



create table content_of_code(content_pcode number(4), content_cid number(4), 
constraint pk_cons_cpcodeccid_code primary key(content_pcode, content_cid), 
constraint fk_cons_pcode_code foreign key(content_pcode) references
paper_subject_code(pcode), constraint fk_cons_ccid_code foreign key(content_cid) references course_code(cid));

desc content_of_code;
  


create table teaching_code(t_pcode number(4), t_empid number(4), session_sem varchar(7), 
constraint pk_cons_pcode_empid_code primary key(t_pcode, t_empid), 
constraint fk_cons_tpcode_code foreign key(t_pcode) references paper_subject_code(pcode), 
constraint fk_cons_tempid_code foreign key(t_empid) references faculty_code(empid));
alter table teaching_code modify session_sem varchar(7) constraint nn_cons_sess_sem_code not null;

desc teaching_code;
 


create table exam_appeared_in_code(stu_roll number(3), exam_pcode number(4), sem_session varchar(7),
marks number(3) constraint nn_cons_marks_code not null constraint nnc_cons_marks_code check(marks >= 0) ,
constraint pk_cons_roll_pcode_sem_code primary key(stu_roll, exam_pcode, sem_session), 
constraint fk_cons_roll_code foreign key(stu_roll) references student_code(rollno),
constraint fk_cons_epcode_code foreign key(exam_pcode) references paper_subject_code(pcode)); 

desc exam_appeared_in_code;
 

