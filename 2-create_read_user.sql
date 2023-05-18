--creates the database htn_0d_2 and the user user_0d_2
--the user_0d_2 has select privilages on htn_0d_2 with password user_0d_2_pwd
CREATE DATABSE
    IF NOT EXISTS 'htn_0d_2';
CREATE USER
    IF NOT EXISTS 'user_0d_2'@'localhost'
    IDENTIFIED BY 'user_0d_2_pwd';
GRANT SELECT
    ON 'htn_0d_2'.*
    TO 'user_0d_2'@'localhost'
    IDENTIFIED BY 'user_0d_2_pwd';
FLUSH PRIVILEGES;

