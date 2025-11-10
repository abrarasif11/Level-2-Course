
Create Table my_users(
    user_name VARCHAR(50),
    email VARCHAR(50)
);

INSERT INTO my_users (user_name, email) VALUES
('Fahim Ahmed', 'fahim@example.com'),
('Nusrat Jahan', 'nusrat@example.com'),
('Rakib Hasan', 'rakib@example.com'),
('Sara Akter', 'sara@example.com'),
('Mizanur Rahman', 'mizan@example.com'),
('Priya Sultana', 'priya@example.com'),
('Jahidul Islam', 'jahid@example.com'),
('Tania Rahman', 'tania@example.com'),
('Mehedi Hasan', 'mehedi@example.com'),
('Zarin Tasnim', 'zarin@example.com');

SELECT * FROM my_users;

CREATE Table deleted_users_audit(
    deleted_user_name VARCHAR(50),
    deletedAt TIMESTAMP
)

SELECT * from deleted_users_audit;

CREATE or REPLACE FUNCTION save_deleted_user()
RETURNS TRIGGER
LANGUAGE plpgsql
AS 
$$
   BEGIN
       INSERT INTO deleted_users_audit VALUES(OLD.user_name, now());
       RAISE NOTICE 'DELETED user audit';
       RETURN OLD;
   END
$$

CREATE or REPLACE TRIGGER save_deleted_user_trigger
BEFORE DELETE
on my_users
FOR EACH ROW
EXECUTE FUNCTION save_deleted_user();

DELETE from my_users WHERE user_name = 'Zarin Tasnim';