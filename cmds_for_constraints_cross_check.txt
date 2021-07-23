--COMMANDS TO CROSS-CHECK THE CONSTRAINSTS OF REQUIRED TABLE





Select user_constraints.table_name,user_constraints.constraint_name,user_constraints.constraint_type,
user_cons_columns.column_name,search_condition from user_constraints,user_cons_columns
where user_constraints.constraint_name=user_cons_columns.constraint_name
and user_cons_columns.table_name = 'DEPARTMENT_CODE';
  



Select user_constraints.table_name,user_constraints.constraint_name,user_constraints.constraint_type,
user_cons_columns.column_name,search_condition from user_constraints,user_cons_columns
where user_constraints.constraint_name =user_cons_columns.constraint_name and 
user_cons_columns.table_name = 'COURSE_CODE';
 




Select User_constraints.table_name,user_constraints.constraint_name, 
user_constraints.constraint_type,user_cons_columns.column_name,
search_condition from user_constraints,user_cons_columns where 
user_constraints.constraint_name =user_cons_columns.constraint_name and 
user_cons_columns.table_name = 'STUDENT_CODE';




Select user_constraints.table_name, user_constraints.constraint_name, user_constraints.constraint_type, 
user_cons_columns.column_name,search_condition from user_constraints,user_cons_columns
where user_constraints.constraint_name=user_cons_columns.constraint_name and 
user_cons_columns.table_name = 'FACULTY_CODE';
 




Select user_constraints.table_name,user_constraints.constraint_name,
user_constraints.constraint_type,user_cons_columns.column_name,
search_condition from user_constraints,user_cons_columns
where user_constraints.constraint_name=user_cons_columns.constraint_name
and user_cons_columns.table_name ='PAPER_SUBJECT_CODE';




  
Select user_constraints.table_name,user_constraints.constraint_name,user_constraints.constraint_type,
user_cons_columns.column_name,search_condition from user_constraints,user_cons_columns
where user_constraints.constraint_name =user_cons_columns.constraint_name and 
user_cons_columns.table_name = 'CONTENT_OF_CODE';






Select user_constraints.table_name,user_constraints.constraint_name,user_constraints.constraint_type,
user_cons_columns.column_name,search_condition from user_constraints,user_cons_columns
where user_constraints.constraint_name =user_cons_columns.constraint_name and 
user_cons_columns.table_name ='TEACHING_CODE';





Select user_constraints.table_name,user_constraints.constraint_name,user_constraints.constraint_type,
user_cons_columns.column_name,search_condition from user_constraints,user_cons_columns
where user_constraints.constraint_name =user_cons_columns.constraint_name and 
user_cons_columns.table_name = 'EXAM_APPEARED_IN_CODE';

