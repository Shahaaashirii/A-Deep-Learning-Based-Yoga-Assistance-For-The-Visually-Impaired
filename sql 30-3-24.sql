/*
SQLyog Community v13.2.1 (64 bit)
MySQL - 10.4.32-MariaDB : Database - yogadatabase
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yogadatabase` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `yogadatabase`;

/*Data for the table `auth_group` */

/*Data for the table `auth_group_permissions` */

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add login',7,'add_login'),
(26,'Can change login',7,'change_login'),
(27,'Can delete login',7,'delete_login'),
(28,'Can view login',7,'view_login'),
(29,'Can add yogapose',8,'add_yogapose'),
(30,'Can change yogapose',8,'change_yogapose'),
(31,'Can delete yogapose',8,'delete_yogapose'),
(32,'Can view yogapose',8,'view_yogapose'),
(33,'Can add yogatips',9,'add_yogatips'),
(34,'Can change yogatips',9,'change_yogatips'),
(35,'Can delete yogatips',9,'delete_yogatips'),
(36,'Can view yogatips',9,'view_yogatips'),
(37,'Can add admin',10,'add_admin'),
(38,'Can change admin',10,'change_admin'),
(39,'Can delete admin',10,'delete_admin'),
(40,'Can view admin',10,'view_admin'),
(41,'Can add user',11,'add_user'),
(42,'Can change user',11,'change_user'),
(43,'Can delete user',11,'delete_user'),
(44,'Can view user',11,'view_user'),
(45,'Can add complaint',12,'add_complaint'),
(46,'Can change complaint',12,'change_complaint'),
(47,'Can delete complaint',12,'delete_complaint'),
(48,'Can view complaint',12,'view_complaint');

/*Data for the table `auth_user` */

/*Data for the table `auth_user_groups` */

/*Data for the table `auth_user_user_permissions` */

/*Data for the table `django_admin_log` */

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(10,'myapp','admin'),
(12,'myapp','complaint'),
(7,'myapp','login'),
(11,'myapp','user'),
(8,'myapp','yogapose'),
(9,'myapp','yogatips'),
(6,'sessions','session');

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'contenttypes','0001_initial','2024-02-20 05:42:20.067355'),
(2,'auth','0001_initial','2024-02-20 05:42:20.800804'),
(3,'admin','0001_initial','2024-02-20 05:42:21.034115'),
(4,'admin','0002_logentry_remove_auto_add','2024-02-20 05:42:21.040759'),
(5,'admin','0003_logentry_add_action_flag_choices','2024-02-20 05:42:21.055776'),
(6,'contenttypes','0002_remove_content_type_name','2024-02-20 05:42:21.164468'),
(7,'auth','0002_alter_permission_name_max_length','2024-02-20 05:42:21.239661'),
(8,'auth','0003_alter_user_email_max_length','2024-02-20 05:42:21.247387'),
(9,'auth','0004_alter_user_username_opts','2024-02-20 05:42:21.261900'),
(10,'auth','0005_alter_user_last_login_null','2024-02-20 05:42:21.333062'),
(11,'auth','0006_require_contenttypes_0002','2024-02-20 05:42:21.335904'),
(12,'auth','0007_alter_validators_add_error_messages','2024-02-20 05:42:21.346976'),
(13,'auth','0008_alter_user_username_max_length','2024-02-20 05:42:21.366815'),
(14,'auth','0009_alter_user_last_name_max_length','2024-02-20 05:42:21.391754'),
(15,'auth','0010_alter_group_name_max_length','2024-02-20 05:42:21.406795'),
(16,'auth','0011_update_proxy_permissions','2024-02-20 05:42:21.422458'),
(17,'auth','0012_alter_user_first_name_max_length','2024-02-20 05:42:21.443888'),
(18,'myapp','0001_initial','2024-02-20 05:42:21.771926'),
(19,'sessions','0001_initial','2024-02-20 05:42:21.819859');

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('4qljkh9rhv9w6mph5c0eafmg6wtxaeak','eyJsaWQiOjF9:1rd1LN:8fNN5KWKCXgP87It2hYNfm-yi4SBK14UCOr6mb0ZE-w','2024-03-07 05:10:01.273786'),
('m5lj609nqk3yc53d5kvpym9wdle0fd2z','eyJsaWQiOjEzfQ:1rqQH5:KtdTN_AHivhfchPLNgxdKyJhmzSYJV55tp1Nu4ILYL8','2024-04-13 04:24:59.653082'),
('ve5ljmzm1hbvb11mdei25k3ba4g9zyf4','eyJsaWQiOiIifQ:1rqSg5:VL1TWDBM3Q6kPs7t8FPioflDZZ7qSiqd93mpLD5nN6Q','2024-04-13 06:58:57.805982');

/*Data for the table `myapp_admin` */

/*Data for the table `myapp_complaint` */

insert  into `myapp_complaint`(`id`,`date`,`status`,`reply`,`complaint`,`USER_id`) values 
(1,'2024-02-20','replied','bhjb','kjhn',1),
(2,'2024-03-02','replied',';llmlom,','ddd',6),
(3,'2024-03-13','replied','dlvjpzklxmvl SZ<M','bad',8),
(4,'2024-03-13','replied','456467','bad',8),
(5,'2024-03-15','pending','pending','6757587',9),
(6,'2024-03-17','pending','pending','gfhfjmgm,hkmh,mhn,',8),
(7,'2024-03-30','pending','pending','jkjbk',11);

/*Data for the table `myapp_login` */

insert  into `myapp_login`(`id`,`usename`,`password`,`type`) values 
(1,'admin@gmail.com','Admin@123','admin'),
(2,'vh','jih','user'),
(8,'sha@gmail.com','shaha123','user'),
(9,'fathima@gmail.com','fathima123','user'),
(10,'fathimazuhara966@gmail.com','fathima@123','user'),
(11,'misbaashraftc@gmail.com','Misba@123','user'),
(12,'sss@gmail.com','sas123','user'),
(13,'u@gmail.com','1','user'),
(14,'ur@gmail','19','user');

/*Data for the table `myapp_user` */

insert  into `myapp_user`(`id`,`name`,`gender`,`dateofbirth`,`photo`,`email`,`height`,`weight`,`LOGIN_id`) values 
(1,'kjnjk','','0000-00-00','','','','',2),
(6,'shahana','Female','2002-04-16','/media/20240302%2C094411.jpg','sha@gmail.com','148','47',8),
(7,'fathima','Male','2001-12-26','/media/20240309%2C104253.jpg','fathima@gmail.com','161','50',9),
(8,'zuhara','Female','2002-11-11','/media/20240315-122452.jpg','fathimazuhara966@gmail.com','hsh','hhs',10),
(9,'Misba','Female','2000-12-13','/media/20240315-133127.jpg','misbaashraftc@gmail.com','160','50',11),
(10,'ashi','Female','2002-04-07','/media/20240323%2C180504.jpg','sss@gmail.com','163','63',12),
(11,'user','Male','2024-03-01','/media/20240329-204820.jpg','u@gmail.com','123','56',13),
(12,'u','Male','2024-03-01','/media/20240329%2C201826.jpg','ur@gmail','123','67',14);

/*Data for the table `myapp_yogapose` */

insert  into `myapp_yogapose`(`id`,`title`,`picture`,`video`,`description`,`audiodescription`) values 
(2,'Tree pose','/media/20240222-120126.jpg','/media/20240226-0947441.mp4','Tree Pose, or Vrksasana, is a standing yoga posture that promotes balance, stability, and concentration. In this pose, one foot is grounded firmly while the other is placed on the inner thigh or calf, with hands joined at the heart center or extended',''),
(4,'Mountain pose','/media/20240225-222533.jpg','/media/20240225-2225331.mp4','Mountain pose, or Tadasana in Sanskrit, is a foundational yoga pose that is commonly used at the beginning of a yoga practice and is the basis for most standing asanas1. Mountain pose is a pose of stillness and awareness, and serves as a reminder to ','');

/*Data for the table `myapp_yogatips` */

insert  into `myapp_yogatips`(`id`,`title`,`description`,`audiodescription`) values 
(5,'mountainpose','Cultivate and maintain a balance of effort and ease. Align your ears, neck, shoulders, and hips above your ankles. Imagine a line of energy extending from your feet through your legs and spine and out through the crown of your head.',''),
(11,'goddesspose','For a powerful Goddess Pose, focus on alignment by keeping your knees over your toes and shins perpendicular to the floor. Engage your core for stability, and adjust your stance width or use support if needed.',''),
(12,'treepose','To find stability in Tree Pose, ground down through your standing foot and engage your core for a strong foundation. Pick a drishti, or focal point, to fix your gaze and improve your balance.',''),
(13,'trianglepose','Achieve a graceful Triangle Pose by keeping your spine long and reaching upwards from your hips. Don\'t hunch your shoulders - instead, imagine lengthening your side body through your fingertips. ',''),
(14,'lotuspose','Approach Lotus pose with care, prioritizing comfort over deep hip flexibility. If your hips aren\'t ready, don\'t force it. Use props like cushions to elevate your hips and reduce strain on your knees.','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
