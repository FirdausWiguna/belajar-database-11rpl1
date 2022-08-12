CREATE DATABASE sekolah;
CREATE TABLE siswa ( nis CHAR(8) primary key, nama VARCHAR(100), jk CHAR(1), tmp_lahir VARCHAR(50), tgl_lahir DATE, alamat TEXT, kelas VARCHAR(10), nilai FLOAT);
Query OK, 0 rows affected (0.032 sec)
MariaDB [sekolah]> SHOW TABLES;
Empty set (0.001 sec)
MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| firdaus            |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| sekolah            |
| test               |
+--------------------+
7 rows in set (0.001 sec)
MariaDB [sekolah]> SHOW TABLES;
+-------------------+
| Tables_in_sekolah |
+-------------------+
| siswa             |
+-------------------+
1 row in set (0.001 sec)
MariaDB [sekolah]> DESCRIBE siswa;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| nis       | char(8)      | NO   | PRI | NULL    |       |
| nama      | varchar(100) | YES  |     | NULL    |       |
| jk        | char(1)      | YES  |     | NULL    |       |
| tmp_lahir | varchar(50)  | YES  |     | NULL    |       |
| tgl_lahir | date         | YES  |     | NULL    |       |
| alamat    | text         | YES  |     | NULL    |       |
| kelas     | varchar(10)  | YES  |     | NULL    |       |
| nilai     | float        | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
8 rows in set (0.008 sec)
MariaDB [(none)]> USE sekolah;
Database changed
MariaDB [sekolah]> INSERT INTO siswa VALUE( '12100274', 'FIRDAUS WIGUNA', 'L', 'SUBANG', '2005-08-17', 'KALIJATI', '11-RPL-1', '70.97');
Query OK, 1 row affected (0.003 sec)
MariaDB [sekolah]> INSERT INTO siswa VALUE( '12100725', 'SHABYAN DWI JUAN', 'L', 'SUBANG', '2005-09-05', 'KALIJATI', '11-RPL-1', '72');
Query OK, 1 row affected (0.002 sec)
MariaDB [sekolah]> INSERT INTO siswa VALUE( '12100249', 'FADHL GAVIN DAFFA ABDULLAH', 'L', 'SUBANG', '2006-01-21', 'CIJAMBE', '11-RPL-1', '80');
Query OK, 1 row affected (0.008 sec)
MariaDB [sekolah]> INSERT INTO siswa VALUE( '12100479', 'MUTHIA ZAHRA RUKMANA', 'P', 'SUBANG', '2006-03-04', 'PALASARI', '11-RPL-1', '79');
Query OK, 1 row affected (0.008 sec)
MariaDB [sekolah]> INSERT INTO siswa VALUE( '12100848', 'YUFA GINA MARYAFA', 'P', 'SUBANG', '2006-02-18', 'BINONG', '11-RPL-1', '86');
Query OK, 1 row affected (0.008 sec)
MariaDB [sekolah]> UPDATE siswa SET tmp_lahir="BANDUNG" WHERE nis="12100274";
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0
MariaDB [sekolah]> UPDATE siswa SET tmp_lahir="BANDUNG" WHERE nis="12100274";
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0
MariaDB [sekolah]> UPDATE siswa SET tgl_lahir="2005-05-05" WHERE nis="12100274";
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0
MariaDB [sekolah]> DELETE FROM siswa WHERE nis="12100274";
Query OK, 1 row affected (0.002 sec)
MariaDB [sekolah]> SELECT * FROM siswa;
+----------+----------------------------+------+-----------+------------+----------+----------+-------+
| nis      | nama                       | jk   | tmp_lahir | tgl_lahir  | alamat   | kelas    | nilai |
+----------+----------------------------+------+-----------+------------+----------+----------+-------+
| 12100249 | FADHL GAVIN DAFFA ABDULLAH | L    | SUBANG    | 2006-01-21 | CIJAMBE  | 11-RPL-1 | 80.89 |
| 12100479 | MUTHIA ZAHRA RUKMANA       | P    | SUBANG    | 2006-03-04 | PALASARI | 11-RPL-1 | 79.78 |
| 12100725 | SHABYAN DWI JUAN           | L    | SUBANG    | 2005-09-05 | KALIJATI | 11-RPL-1 | 72.54 |
| 12100848 | YUFA GINA MARYAFA          | P    | SUBANG    | 2006-02-18 | BINONG   | 11-RPL-1 | 86.32 |
+----------+----------------------------+------+-----------+------------+----------+----------+-------+
4 rows in set (0.000 sec)