CREATE DATABASE day25; 		-- 创建数据库
USE day25; 			-- 使用数据库
CREATE TABLE province(   	-- 创建表
	id INT PRIMARY KEY AUTO_INCREMENT,
	NAME VARCHAR(20) NOT NULL
);
-- 插入数据
INSERT INTO province VALUES(NULL,'北京');
INSERT INTO province VALUES(NULL,'上海');
INSERT INTO province VALUES(NULL,'广州');
INSERT INTO province VALUES(NULL,'陕西');



























CREATE DATABASE day1011;
USE day1011;
CREATE TABLE USER(	
			id INT PRIMARY KEY AUTO_INCREMENT,
			username VARCHAR(32) UNIQUE NOT NULL,
			PASSWORD VARCHAR(32) NOT NULL
		);
		
INSERT INTO USER VALUES(NULL,'zhangsan','123456');

SELECT * FROM USER;


CREATE DATABASE day18; 				-- 创建数据库
USE day18; 			  		-- 使用数据库
DROP TABLE USER;
CREATE TABLE USER(   				-- 创建表
	id INT PRIMARY KEY AUTO_INCREMENT,	-- id字段主键、自增长
	NAME VARCHAR(20) NOT NULL,		-- 姓名字段 非空
	gender VARCHAR(5),			-- 性别字段
	age INT,				-- 年龄字段
	address VARCHAR(32),			-- 籍贯字段
	qq	VARCHAR(20),			-- qq字段
	email VARCHAR(50),			-- 邮箱字段
	username VARCHAR(32),			-- 用户名字段
	PASSWORD VARCHAR(32)			-- 密码字段
);
INSERT INTO USER VALUES(
	NULL,'张三','男',22,'广东','123456','123456@qq.com','zhangsan','123456'
);
INSERT INTO USER VALUES(
	NULL,'李四','男',23,'广东','123456','123456@qq.com','lisi','123456'
);
INSERT INTO USER VALUES(
	NULL,'张三','男',22,'广东','123456','123456@qq.com',NULL,NULL
);
INSERT INTO USER VALUES(
	NULL,'李四','男',23,'广东','123456','123456@qq.com',NULL,NULL
);
INSERT INTO USER VALUES(
	NULL,'张三','男',22,'广东','123456','123456@qq.com',NULL,NULL
);
INSERT INTO USER VALUES(
	NULL,'李四','男',23,'广东','123456','123456@qq.com',NULL,NULL
);
INSERT INTO USER VALUES(
	NULL,'张三','男',22,'广东','123456','123456@qq.com',NULL,NULL
);
INSERT INTO USER VALUES(
	NULL,'李四','男',23,'广东','123456','123456@qq.com',NULL,NULL
);

SELECT * FROM USER;















SELECT * FROM account;
SELECT * FROM emp;

TRUNCATE emp;

CREATE DATABASE ricedb;
CREATE DATABASE greed;



-- 部门表
CREATE TABLE dept (
  id INT PRIMARY KEY PRIMARY KEY, -- 部门id
  dname VARCHAR(50), -- 部门名称
  loc VARCHAR(50) -- 部门所在地
);

-- 添加4个部门
INSERT INTO dept(id,dname,loc) VALUES 
(10,'教研部','北京'),
(20,'学工部','上海'),
(30,'销售部','广州'),
(40,'财务部','深圳');



-- 职务表，职务名称，职务描述
CREATE TABLE job (
  id INT PRIMARY KEY,
  jname VARCHAR(20),
  description VARCHAR(50)
);

-- 添加4个职务
INSERT INTO job (id, jname, description) VALUES
(1, '董事长', '管理整个公司，接单'),
(2, '经理', '管理部门员工'),
(3, '销售员', '向客人推销产品'),
(4, '文员', '使用办公软件');



-- 员工表
CREATE TABLE emp (
  id INT PRIMARY KEY, -- 员工id
  ename VARCHAR(50), -- 员工姓名
  job_id INT, -- 职务id
  mgr INT , -- 上级领导
  joindate DATE, -- 入职日期
  salary DECIMAL(7,2), -- 工资
  bonus DECIMAL(7,2), -- 奖金
  dept_id INT, -- 所在部门编号
  CONSTRAINT emp_jobid_ref_job_id_fk FOREIGN KEY (job_id) REFERENCES job (id),
  CONSTRAINT emp_deptid_ref_dept_id_fk FOREIGN KEY (dept_id) REFERENCES dept (id)
);

-- 添加员工
INSERT INTO emp(id,ename,job_id,mgr,joindate,salary,bonus,dept_id) VALUES 
(1001,'孙悟空',4,1004,'2000-12-17','8000.00',NULL,20),
(1002,'卢俊义',3,1006,'2001-02-20','16000.00','3000.00',30),
(1003,'林冲',3,1006,'2001-02-22','12500.00','5000.00',30),
(1004,'唐僧',2,1009,'2001-04-02','29750.00',NULL,20),
(1005,'李逵',4,1006,'2001-09-28','12500.00','14000.00',30),
(1006,'宋江',2,1009,'2001-05-01','28500.00',NULL,30),
(1007,'刘备',2,1009,'2001-09-01','24500.00',NULL,10),
(1008,'猪八戒',4,1004,'2007-04-19','30000.00',NULL,20),
(1009,'罗贯中',1,NULL,'2001-11-17','50000.00',NULL,10),
(1010,'吴用',3,1006,'2001-09-08','15000.00','0.00',30),
(1011,'沙僧',4,1004,'2007-05-23','11000.00',NULL,20),
(1012,'李逵',4,1006,'2001-12-03','9500.00',NULL,30),
(1013,'小白龙',4,1004,'2001-12-03','30000.00',NULL,20),
(1014,'关羽',4,1007,'2002-01-23','13000.00',NULL,10);



-- 工资等级表
CREATE TABLE salarygrade (
  grade INT PRIMARY KEY,   -- 级别
  losalary INT,  -- 最低工资
  hisalary INT -- 最高工资
);

-- 添加5个工资等级
INSERT INTO salarygrade(grade,losalary,hisalary) VALUES 
(1,7000,12000),
(2,12010,14000),
(3,14010,20000),
(4,20010,30000),
(5,30010,99990);






CREATE TABLE USER(
	id INT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(32),
	PASSWORD VARCHAR(32)

);

INSERT INTO USER VALUES(NULL,'zhangsan','123456');
INSERT INTO USER VALUES(NULL,'lisi','123456');

SELECT * FROM USER;




