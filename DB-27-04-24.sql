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
('ve5ljmzm1hbvb11mdei25k3ba4g9zyf4','eyJsaWQiOjEzfQ:1s0aRP:hdJ6FF5tiEFwbIYwU3HgISoU7vEL4z6PdpAXPN6tr08','2024-05-11 05:17:39.921904');

/*Data for the table `myapp_admin` */

/*Data for the table `myapp_complaint` */

insert  into `myapp_complaint`(`id`,`date`,`status`,`reply`,`complaint`,`USER_id`) values 
(1,'2024-02-20','replied','bhjb','kjhn',1),
(2,'2024-03-02','replied',';llmlom,','ddd',6),
(3,'2024-03-13','replied','dlvjpzklxmvl SZ<M','bad',8),
(4,'2024-03-13','replied','456467','bad',8),
(5,'2024-03-15','pending','pending','6757587',9),
(6,'2024-03-17','pending','pending','gfhfjmgm,hkmh,mhn,',8),
(7,'2024-03-30','pending','pending','jkjbk',11),
(8,'2024-04-02','replied','would be solved soon','background problem',11),
(9,'2024-04-09','replied','asdf','issue',11);

/*Data for the table `myapp_login` */

insert  into `myapp_login`(`id`,`usename`,`password`,`type`) values 
(1,'admin@gmail.com','Admin@123','admin'),
(2,'vh','jih','user'),
(8,'sha@gmail.com','shaha123','user'),
(9,'fathima@gmail.com','fathima123','user'),
(10,'fathimazuhara966@gmail.com','14342133','user'),
(11,'misbaashraftc@gmail.com','Misba@123','user'),
(12,'sss@gmail.com','sas123','user'),
(13,'u@gmail.com','1','user'),
(14,'ur@gmail','19','user'),
(15,'asasas@asas','1234','user'),
(16,'thta@hihi','1234','user'),
(17,'shaha@gmail.com','12','user'),
(18,'n@gcom','34','user'),
(19,'admin@n','1','user'),
(20,'admin@gm','1','user'),
(21,'admin@gm','1','user'),
(22,'admin@g','123','user'),
(23,'admin@gmail.com','e','user'),
(24,'ygyg@123','1234','user'),
(25,'ytyst@gmail.com','678','user'),
(26,'kjhjh@kjkkim.in','123','user'),
(27,'theraaaa@gmail.com','1234','user'),
(28,'theraaaa@gmail.com','11','user'),
(29,'u@gmail.com','1','user');

/*Data for the table `myapp_user` */

insert  into `myapp_user`(`id`,`name`,`gender`,`dateofbirth`,`photo`,`email`,`height`,`weight`,`LOGIN_id`) values 
(1,'kjnjk','','0000-00-00','','','','',2),
(6,'shahana','Female','2002-04-16','/media/20240302%2C094411.jpg','sha@gmail.com','148','47',8),
(7,'fathima','Male','2001-12-26','/media/20240309%2C104253.jpg','fathima@gmail.com','161','50',9),
(8,'zuhara','Female','2002-11-11','/media/20240315-122452.jpg','fathimazuhara966@gmail.com','hsh','hhs',10),
(9,'Misba','Female','2000-12-13','/media/20240315-133127.jpg','misbaashraftc@gmail.com','160','50',11),
(10,'ashi','Female','2002-04-07','/media/20240323%2C180504.jpg','sss@gmail.com','163','63',12),
(11,'user','Male','9999-03-12','/media/20240329-204820.jpg','u@gmail.com','200','200',13),
(12,'u','Male','2024-03-01','/media/20240329%2C201826.jpg','ur@gmail','123','67',14),
(13,'addsd','Male','0001-01-01','/media/20240409%2C141503.jpg','asasas@asas','12121212121212','434',15),
(14,'fathimapk','Male','2024-04-10','/media/20240409%2C152825.jpg','thta@hihi','768696896','778978',16),
(15,'shaha','Male','2024-05-03','/media/20240412%2C100829.jpg','shaha@gmail.com','26','496',17),
(16,'um','Male','2024-04-04','/media/20240412%2C104608.jpg','n@gcom','344','55',18),
(17,'er','Male','2024-04-03','/media/20240412%2C110019.jpg','admin@n','34','56',19),
(18,'er','Male','2024-04-01','/media/20240412%2C110119.jpg','admin@gm','34','34',20),
(19,'er','Male','2024-04-01','/media/20240412%2C110252.jpg','admin@gm','124','345',21),
(20,'er','Male','2024-04-01','/media/20240412%2C110418.jpg','admin@g','23','45',22),
(21,'er','Male','2024-04-03','/media/20240412%2C150016.jpg','admin@gmail.com','56','78',23),
(22,'zoyy','Female','2004-12-06','/media/20240415%2C110644.jpg','ygyg@123','159','78',24),
(23,'ttuyt','Female','2006-02-08','/media/20240415%2C111040.jpg','ytyst@gmail.com','200','200',25),
(24,'shah','Male','2024-04-09','/media/20240416%2C133233.jpg','kjhjh@kjkkim.in','500','500',26),
(25,'wde','Female','2024-04-01','/media/20240416%2C142026.jpg','theraaaa@gmail.com','122','122',27),
(26,'wde','Male','2002-06-02','/media/20240427%2C104706.jpg','theraaaa@gmail.com','200','122',28),
(27,'wde','Male','2002-12-11','/media/20240427%2C113410.jpg','u@gmail.com','148','122',29);

/*Data for the table `myapp_yogapose` */

insert  into `myapp_yogapose`(`id`,`title`,`picture`,`video`,`description`,`audiodescription`) values 
(24,'mountainpose','/media/20240416-134319.jpg','/media/20240416-1343191.mp4','nothing',''),
(25,'treepose','/media/20240415-113641.jpg','/media/20240415-1136411.mp4','Tree Pose: Stand on one leg, bend the other knee, place foot on inner thigh or calf, hands in prayer position at chest, and focus on balance and stability.',''),
(26,'urdhvahastasana','/media/20240415-120010.jpg','/media/20240415-1200101.mp4','Urdhva Hastasana: Stand tall, inhale arms overhead with palms facing each other or touching, and lengthen through the sides of the body while keeping shoulders relaxed.',''),
(27,'warriorpose','/media/20240415-120418.jpg','/media/20240415-1204181.mp4','\"Warrior Pose: Step one foot back, bend front knee over ankle, extend arms parallel to the floor, torso facing forward, and gaze over front fingertips.\"',''),
(28,'lotuspose','/media/20240415-120534.jpg','/media/20240415-1205341.mp4','\"Lotus Pose: Sit with legs crossed, place each foot on opposite thigh, align spine, and place hands on knees or in mudra position.\"','');

/*Data for the table `myapp_yogatips` */

insert  into `myapp_yogatips`(`id`,`title`,`description`,`audiodescription`) values 
(5,'mountainpose','\"Mountain Pose: Focus on grounding feet, lengthening spine, and engaging core for stability.\"',''),
(12,'treepose','To find stability in Tree Pose, ground down through your standing foot and engage your core for a strong foundation. Pick a drishti, or focal point, to fix your gaze and improve your balance.',''),
(19,'urdhvahastasana','\"Urdhva Hastasana: Inhale, raise arms overhead, lengthen spine, and engage core while keeping shoulders relaxed.\"',''),
(20,'warriorpose','\"Warrior Pose: Ground feet firmly, bend front knee over ankle, and extend arms parallel to the floor, while keeping torso facing forward.\"',''),
(21,'lotuspose','\"Lotus Pose: Cross legs, place each foot on opposite thigh, align spine, and relax shoulders while focusing on breath.\"','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
