--list contact info current tutors and list contact info for current leads

SELECT e.first_name, e.last_name, e.email_address "Email", e.phone_number "Phone"
FROM employee e
WHERE e.tutor_flag='y' AND e.end_date IS NULL
ORDER BY e.last_name;

SELECT e.first_name, e.last_name, e.email_address "Email", e.phone_number "Phone"
FROM employee e
WHERE e.lead_flag='y' AND e.end_date IS NULL
ORDER BY e.last_name;

--list tutors with no assigned specialization and who are currently with the company (excludes leads)
SELECT e.employee_id, e.first_name, e.last_name
FROM employee e
LEFT JOIN subject_spec ss
ON e.employee_id=ss.employee_id
WHERE ss.spec_id IS NULL AND e.end_date IS NULL AND e.lead_flag = 'n'
ORDER BY e.employee_id;

--current tutor name and specialization (includes lead tutors)
SELECT s.subject_name "SPECIALIZATION", e.employee_id, e.first_name, e.last_name 
FROM employee e
INNER JOIN subject_spec ss
ON e.employee_id=ss.employee_id
INNER JOIN subject s
ON ss.subject_id=s.subject_id
WHERE e.end_date IS NULL
ORDER BY s.subject_id;

/*List student name, name of subject needed and current tutors with that specialization
(exclude leads)*/
SELECT c.client_id, c.first_name "Student Name", c.last_name "Last Name", s.subject_name "Subject Need",
  e.employee_id, e.first_name "Tutor Name", e.last_name "Last Name"
FROM subject_spec ss
INNER JOIN subject_need sn
ON ss.subject_id=sn.subject_id
INNER JOIN client c
ON sn.client_id=c.client_id
INNER JOIN employee e
ON ss.employee_id=e.employee_id
INNER JOIN subject s
ON sn.subject_id = s.subject_id
WHERE e.tutor_flag = 'y' AND e.lead_flag = 'n' AND e.end_date IS NULL
ORDER BY c.last_name;

/*returns number of male and female tutors (excludes leads) as well as a male to female ratio*/

SELECT M."# of Male Tutors", F."# of Female Tutors", 
  round((M."# of Male Tutors"/F."# of Female Tutors"), 2) "M/F Ratio" 
FROM
(SELECT tutor_flag, COUNT(*) "# of Male Tutors" FROM employee
WHERE lead_flag='n' AND end_date IS NULL AND sex='male'
GROUP by tutor_flag) M
INNER JOIN
(SELECT tutor_flag, COUNT(*) "# of Female Tutors" FROM employee
WHERE lead_flag='n' AND end_date IS NULL AND sex='female'
GROUP by tutor_flag) F
ON M.tutor_flag=F.tutor_flag;

/*diplay session notes with name of tutor, date of session and client name
exclude sessions for which there are no notes*/
SELECT e.first_name "Tutor First", e.last_name "Tutor Last", c.first_name "Student First",
       c.last_name "Student Last", ts.session_date "Session Date", ts.session_notes "Notes"
FROM employee e
INNER JOIN tut_session ts
ON e.employee_id=ts.employee_id
INNER JOIN client c
ON ts.client_id=c.client_id
WHERE ts.session_notes IS NOT NULL
ORDER BY c.last_name;

--get list of subjects currently needed
SELECT DISTINCT subject_name
FROM subject s
INNER JOIN subject_need sn
ON s.subject_id=sn.subject_id
ORDER BY s.subject_name;

--list client name, bill # and amount of unpaid bills
SELECT c.client_id, c.first_name, c.last_name, b.bill_id, b.bill_amount, b.due_date
FROM client c
INNER JOIN bill b
ON c.client_id=b.client_id
WHERE b.pay_status='unpaid'
ORDER BY c.client_id;

--list line items by client name and bill #
SELECT c.first_name "Client First", c.last_name "Client Last", b.bill_id, l.line_amount, b.due_date
FROM client c
INNER JOIN bill b
ON c.client_id=b.client_id
INNER JOIN line_item l
ON b.bill_id=l.bill_id
ORDER BY b.bill_id;

--list future schedules for tutors

SELECT E.employee_id, E.first_name, E.last_name, TS.session_date,
        EXTRACT(HOUR FROM TS.start_time) "Start Time - 24 hr",
        EXTRACT(HOUR FROM TS.end_time) "End Time - 24 hr", S.subject_name,
        C.first_name "Student First", C.last_name "Student Last"
FROM employee E
INNER JOIN tut_session TS
ON E.employee_id=TS.employee_id
INNER JOIN client C
ON TS.client_id=C.client_id
INNER JOIN subject S
ON TS.subject_id=S.subject_id
WHERE CURRENT_DATE < TS.session_date
ORDER BY E.last_name;

--return number of students by age bracket: Elementary, Junior High, High School

SELECT ES."Elementary Students", JH."Junior High Students", HS."High School Students" FROM
((SELECT student_flag, COUNT(*) "Elementary Students"
FROM client
WHERE student_flag='y' AND age < 13
GROUP BY student_flag) ES
INNER JOIN
(SELECT student_flag, COUNT(*) "Junior High Students" FROM client
WHERE student_flag='y' AND age >= 13 AND age < 15
GROUP BY student_flag) JH
ON ES.student_flag=JH.student_flag
INNER JOIN
(SELECT student_flag, COUNT(*) "High School Students" FROM client
WHERE student_flag = 'y' AND age > 15
GROUP BY student_flag) HS
ON JH.student_flag=HS.student_flag);

--list delinquent bills (unpaid 30 days after session)
SELECT C.client_id, C.first_name, C.last_name, B.bill_id, B.bill_amount, B.due_date
FROM client C
INNER JOIN bill B
ON C.client_id=B.client_id
WHERE CURRENT_DATE - B.due_date > 30;

--select ID number of parents who have more than 1 student with the company
SELECT parent_id FROM
((SELECT client_id, first_name, last_name
FROM client
WHERE parent_flag='y') P
INNER JOIN
(SELECT client_id, parent_id
FROM client
WHERE student_flag='y') C
ON P.client_id = C.parent_id)
GROUP BY parent_id
HAVING COUNT(*)>1
ORDER BY parent_id;

--list total amount owed by clients

SELECT CL.client_id, CL.first_name, CL.last_name, CS."Total Owed" FROM
(SELECT first_name, last_name, client_id
FROM client
WHERE parent_flag='y') CL
INNER JOIN
(SELECT client_id, SUM(bill_amount) "Total Owed"
FROM bill
WHERE pay_status='unpaid'
GROUP BY client_id) CS
ON CL.client_id=CS.client_id
ORDER BY CL.client_id;
