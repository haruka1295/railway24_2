DROP DATABASE IF EXISTS testing_system;
CREATE DATABASE IF NOT EXISTS testing_system;
USE testing_system;
DROP TABLE IF EXISTS department;
CREATE TABLE department(
  department_id       TINYINT,
  department_name     VARCHAR(50)
);
DROP TABLE IF EXISTS`position`;
CREATE TABLE `position`(
  position_id         TINYINT,
  postion_name        VARCHAR(50)
  );
  DROP TABLE IF EXISTS`account`;
CREATE TABLE `account`(
  account_id          TINYINT,
  email               VARCHAR(50),
  user_name           VARCHAR(50),
  full_name           VARCHAR(50),
  department_id       TINYINT,
  position_id         TINYINT,
  create_date         DATETIME
  );
  DROP TABLE IF EXISTS`group`;
CREATE TABLE `group`(
  group_id            TINYINT,
  group_name          VARCHAR(50),
  creator_id          TINYINT,
  creator_date        DATETIME
  );
  DROP TABLE IF EXISTS group_account;
  CREATE TABLE group_account(
  group_id            TINYINT,
  account_id          VARCHAR(50),
  join_date           DATE
  );
  DROP TABLE IF EXISTS type_question;
  CREATE TABLE type_question(
  type_id             TINYINT,
  type_name           VARCHAR(50)
  );
  DROP TABLE IF EXISTS category_question;
  CREATE TABLE category_question(
  category_id         TINYINT,
  category_name       VARCHAR(50)
  );
  DROP TABLE IF EXISTS question;
  CREATE TABLE question(
  question_id         TINYINT,
  content             VARCHAR(50),
  category_id         VARCHAR(50),
  type_id             VARCHAR(50),
  creator_id          TINYINT,
  create_date         DATETIME
  );
  DROP TABLE IF EXISTS anwer;
  CREATE TABLE answer(
  answer_id           TINYINT,
  content             VARCHAR(50),
  question_id         TINYINT,
  is_correct          BOOLEAN
  );
  DROP TABLE IF EXISTS exam;
  CREATE TABLE exam(
  exam_id            TINYINT,
  `code`             VARCHAR(50),
  title              VARCHAR(50),
  category_id        VARCHAR(50),
  duration           TINYINt,
  create_id          TINYINT,
  create_date        DATETIME
  );
  DROP TABLE IF EXISTS exam_question;
  CREATE TABLE exam_question(
  exam_id           TINYINT,
  question_id       VARCHAR(50)
);
  
  
  