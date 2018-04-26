DROP TABLE line_item;
DROP TABLE bill;
DROP TABLE pay_method;
DROP TABLE tut_session;
DROP TABLE subject_need;
DROP TABLE subject_spec;
DROP TABLE subject;
DROP TABLE client;
DROP TABLE unassigned_tutors;
DROP TABLE assigned_tutors;
DROP TABLE employee;


CREATE TABLE employee
( employee_id     NUMBER       NOT NULL,
  first_name      VARCHAR2(25) NOT NULL,
  last_name       VARCHAR2(25) NOT NULL,
  age             NUMBER(3)    NOT NULL,
  sex             VARCHAR2(6)  NOT NULL CHECK(sex IN ('male','female', 'other')),
  email_address   VARCHAR2(25) NOT NULL,
  mailing_address VARCHAR2(50) NOT NULL,
  phone_number    VARCHAR2(13) NOT NULL, --format: 1234567890, do not use hyphens, etc.
  start_date      DATE         NOT NULL,
  end_date        DATE,
  super_id        NUMBER,
  tutor_flag      CHAR(1)      NOT NULL    CHECK(tutor_flag IN ('y','n')),
  lead_flag       CHAR(1)      NOT NULL    CHECK(lead_flag IN ('y','n')),
  assigned_flag   CHAR(1)                  CHECK(assigned_flag IN ('y','n')),
  PRIMARY KEY (employee_id) );

CREATE TABLE assigned_tutors
( employee_id  NUMBER NOT NULL,
  PRIMARY KEY (employee_id),
  FOREIGN KEY (employee_id) REFERENCES employee(employee_id));

CREATE TABLE unassigned_tutors
( employee_id  NUMBER NOT NULL,
  PRIMARY KEY (employee_id),
  FOREIGN KEY (employee_id) REFERENCES employee(employee_id));

CREATE TABLE client
( client_id       NUMBER         NOT NULL,
  first_name      VARCHAR2(25)   NOT NULL,
  last_name       VARCHAR2(25)   NOT NULL,
  age             NUMBER(3)      NOT NULL,
  sex             VARCHAR2(6)    NOT NULL CHECK(sex IN ('male','female', 'other')),
  email_address   VARCHAR2(25)   NOT NULL,
  mailing_address VARCHAR2(50)   NOT NULL,
  phone_number    VARCHAR2(13)   NOT NULL,
  parent_id       NUMBER,
  parent_flag     CHAR(1)        NOT NULL CHECK(parent_flag IN ('y','n')),
  student_flag    CHAR(1)        NOT NULL CHECK(student_flag IN ('y','n')),
  PRIMARY KEY (client_id),
  FOREIGN KEY (parent_id) REFERENCES client(client_id) );

CREATE TABLE subject
( subject_id    NUMBER        NOT NULL,
  subject_name  VARCHAR2(50)  NOT NULL,
  description   VARCHAR2(50)  NULL,
  subject_rate  NUMBER(5,2)   NOT NULL,
  PRIMARY KEY (subject_id)  );

CREATE TABLE subject_spec
( spec_id     NUMBER NOT NULL,
  employee_id NUMBER NOT NULL,
  subject_id  NUMBER NOT NULL,
  FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
  FOREIGN KEY (subject_id)  REFERENCES subject(subject_id),
  PRIMARY KEY (spec_id) );

CREATE TABLE subject_need
( need_id     NUMBER NOT NULL,
  subject_id  NUMBER NOT NULL,
  client_id   NUMBER NOT NULL,
  PRIMARY KEY (need_id),
  FOREIGN KEY (subject_id)  REFERENCES subject(subject_id),
  FOREIGN KEY (client_id)   REFERENCES client(client_id) );

CREATE TABLE tut_session
( session_id    NUMBER         NOT NULL,
  session_date  DATE           NOT NULL, --Redundant with inclusion of TIMESTAMP?
  start_time    TIMESTAMP      NOT NULL,
  end_time      TIMESTAMP      NOT NULL,
  session_cost  NUMBER(5,2),
  session_notes VARCHAR2(4000),
  subject_id    NUMBER(3)      NOT NULL,
  employee_id   NUMBER(3)      NOT NULL,
  client_id     NUMBER(3)      NOT NULL,
  PRIMARY KEY (session_id),
  FOREIGN KEY (subject_id)  REFERENCES subject(subject_id),
  FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
  FOREIGN KEY (client_id)   REFERENCES client(client_id));

CREATE TABLE pay_method
( pay_id    NUMBER      NOT NULL,
  pay_type  VARCHAR(25) NOT NULL,
  card_type VARCHAR(25),
  PRIMARY KEY (pay_id) );

CREATE TABLE bill
( bill_id     NUMBER        NOT NULL,
  client_id   NUMBER        NOT NULL,
  bill_amount NUMBER(5,2)   NOT NULL,
  due_date    DATE          NOT NULL,
  pay_id      NUMBER,
  pay_status  VARCHAR2(6)   NOT NULL CHECK(pay_status IN ('paid','unpaid')),
  PRIMARY KEY (bill_id),
  FOREIGN KEY (client_id) REFERENCES client(client_id),
  FOREIGN KEY (pay_id)    REFERENCES pay_method(pay_id) );

CREATE TABLE line_item
( line_id     NUMBER        NOT NULL,
  line_amount NUMBER(5, 2)  NOT NULL,
  session_id  NUMBER        NOT NULL,
  bill_id     NUMBER        NOT NULL,
  PRIMARY KEY (line_id),
  FOREIGN KEY (session_id) REFERENCES tut_session(session_id),
  FOREIGN KEY (bill_id)    REFERENCES bill(bill_id) );
