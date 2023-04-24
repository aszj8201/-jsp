create table tmp_student_202105(
std_no varchar2(5) not null primary key,
std_nm varchar2(10) 
)

insert into tmp_student_202105 values('10101', '김학생' );
insert into tmp_student_202105 values('10102', '이학생' );
insert into tmp_student_202105 values('10103', '박학생' );

select * from TMP_STUDENT_202105
