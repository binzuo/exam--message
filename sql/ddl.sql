DROP DATABASE IF EXISTS exam;
CREATE DATABASE IF NOT EXISTS exam;

# user table
DROP TABLE IF EXISTS exam.user;
CREATE TABLE exam.user (
  id       INT                   AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  username VARCHAR(255) UNIQUE
  COMMENT '用户名',
  password VARCHAR(255) NOT NULL
  COMMENT '密码',
  role     VARCHAR(255) NOT NULL DEFAULT 'user'
  COMMENT 'admin:管理员; user:普通用户'
)
  COMMENT '用户表';
# 用户留言表
DROP TABLE IF EXISTS exam.message;
CREATE TABLE exam.message (
  id       INT                   AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  username VARCHAR(255)
  COMMENT '用户名',
  content VARCHAR(255) NOT NULL
  COMMENT '留言内容',
  time  DATETIME
  COMMENT '留言时间'
)
  COMMENT '用户留言表';

INSERT INTO exam.user VALUES (NULL, 'a', 'a', 'admin');

SELECT *
FROM exam.user;
SELECT *
FROM exam.message;