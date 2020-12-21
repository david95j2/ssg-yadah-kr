/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.16-MariaDB : Database - a2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`a2` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `a2`;

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `title` char(200) NOT NULL,
  `body` text NOT NULL,
  `memberId` int(10) unsigned NOT NULL,
  `boardId` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `like` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `article` */

insert  into `article`(`id`,`regDate`,`updateDate`,`title`,`body`,`memberId`,`boardId`,`hit`,`like`) values 
(1,'2020-12-18 09:11:35','2020-12-19 13:11:23','1강 자바 코드 표준화의 필요성','# 코드 관례 표준화의 필요성\r\n\r\n- 소스 코드의 가독성: 프로젝트 내 개발조직들이 코드 관례를 통일시키면 코드의 일관성이 높아지기 때문에 개발 업무 인수자, 코드 리뷰어, 기타 관련 개발자들이 코드를 이해하기가 쉬워진다.\r\n\r\n- 글로벌 표준과의 호환성: 프로젝트에 타 프로젝트의 소스 코드 혹은 각종 오픈 소스 코드를 활용하는 경향이 높아지고 있으므로, 사실상의 글로벌 표준 코드 관례와 어긋나는 방식을 사용하게 되면 코드의 일관성이 떨어질 가능성이 높아져서 불편해진다.\r\n오라클사의 자바 프로그래밍 언어 코드 관례 문서\r\n\r\n# 많은 자바 프로젝트들이 이 코드 관례를 기반으로 한다.\r\n- 문서: http://www.oracle.com/technetwork/java/codeconv-138413.html',1,3,5,0),
(2,'2020-12-18 22:29:36','2020-12-18 22:29:36','2강 자바 명명규칙 권장안','# 자바 프로그램 명명 규칙 권장안\r\n\r\n- 패키지 이름\r\n자신이 속한 조직의 인터넷 도메인 이름을 뒤집은 이름을 사용하여 패키지 이름을 만든다.\r\n⇒ 다른 조직의 패키지 이름과의 충돌을 피하게 해준다.\r\n부서, 프로젝트, 컴퓨터, 로긴 이름 등을 부가해서 패키지 이름을 만들 수 있다.\r\n예) com.ABCproject.jgl\r\njava, javax는 자바 표준 패키지 이름에만 사용할 수 있도록 예약되어 있다.\r\n \r\n\r\n- 클래스 이름\r\n대문자로 시작하는 명사.\r\n이름속에 포함된 각 단어 또한 대문자로 시작.\r\n예) Thread, Properties, SecurityManager\r\n \r\n\r\n- 인터페이스 이름 , ILoggerFactory\r\n대문자로 시작하는 혹은 접두사 I(인터페이스를 의미)를 붙인 명사 혹은 형용사\r\n이름속에 포함된 각 단어 또한 대문자로 시작.\r\n예) DataInput, Runnable\r\n \r\n\r\n- 메소드 이름\r\n\r\n소문자로 시작하는 동사\r\n이름속에 포함된 각 단어는 (첫번째 단어를 제외하고) 대문자로 시작\r\n\r\n타입 T인 v라는 이름의 속성을 접근하기 위한 메소드 이름: T getV(), void setV(T val)\r\n예) java.awt.Component의 void setName(String), String getName()\r\n\r\n※ T가 boolean일 경우, getV() 대신 isV()일 수 있다.\r\n예) java.awt.Component의 void setVisible(boolean), boolean isVisible()\r\n\r\n객체의 내용을 타입 Type으로 변환하여 반환하는 메소드 이름: Type toType()\r\n예) java.lang.Object 클래스의 String toString()\r\n \r\n\r\n- 상수가 아닌 인스턴스 변수, 클래스 변수 이름\r\n소문자로 시작하는 명사 (혹은 축약된 명사)\r\n이름속에 포함된 각 단어는 (첫번째 단어를 제외하고) 대문자로 시작\r\n \r\n\r\n- 파이널 변수 (기본 타입일 경우)\r\n모두 대문자\r\n이름속에 포함된 각 단어사이는 `_\'을 삽입\r\n예) MIN_VALUE, MAX_VALUE, PI\r\n \r\n\r\n- 지역 변수, 매개 변수\r\n의미 있는 짧은 이름\r\n예) buf, len, c, i, j, ...',1,3,2,0),
(3,'2020-12-19 18:48:02','2020-12-21 10:32:44','3강 Clean Code','# 어떻게 clean code 를 할 수 있을까?\r\n\r\n## 좋은 코드란?\r\n\r\n좋은 코드라는 것은 일단 돌아가기만하면 되는 코드가 절대 아니다. 좋은 코드란 코드 그 자체로 설명이 다 되는 코드이다.\r\n\r\n만약 팀으로 일한다면 좋은 코드는 팀원들이 딱 읽었을때, 읽기만 해도 무엇인지 이해가 되고,\r\n코드가 무엇을 하는지 물어볼 필요도 없이 이해가 되는 코드이다. 또한 혼자서 일한다면, 나중에 그 코드를 \r\n읽을때 당시 내가 고민하던 것이 무엇인지 코드만으로 이해가 되고 부연설명 없이 코드로 설명이 되는 상태이다.\r\n\r\n``` JAVA\r\nString cleanCode = \"코드 작동도 잘되고, 부연설명이 필요없는 상태!\";\r\n```\r\n\r\n## TIP !!\r\n- 검색이 가능한 이름을 써라\r\n\r\n코딩을 하다보면 랜덤하게 값을 추가해야할 때가 있다. 하루가 총 몇 초인지를 요구하는 함수가 있다면, 해당 숫자를 \r\n변수(Variable)로 해두는 것이 좋다. 그냥 바로 계산해버리면 다른 팀원이 봤을 때 그 함수가 무엇을 하는지 이해를 \r\n못할 수 있기 때문이다.\r\n\r\n```JAVA\r\nint seconds_In_A_Day = 86400;\r\ngetSeconds(seconds_In_A_Day);\r\n```\r\n\r\n- 함수명은 반드시 동사명을 써라\r\n\r\n```JAVA\r\npublic void userData() {\r\n	// ...\r\n};\r\n```\r\n\r\n보다\r\n\r\n```JAVA\r\npublic void loadUserData() {\r\n	// ...\r\n};\r\n```\r\n가 훨씬 좋다. 이렇게 이름을 짓다보면 함수가 너무 많은 역할을 하는 것이 아닌지 알게되기도 한다. 왜냐하면\r\n함수는 딱 한가지 역할만 잘해야한다. 함수명을 그들이 하는 역할. 동사(Verb)로 짓기 시작하면, 구분의 필수를 느낄수 있다.\r\n함수는 무조건!! 단 한가지 액션만 수행해야 한다.\r\n\r\n- 몇 개의 인수를 가져야 할까?\r\n\r\n가장 좋은 숫자는 3개 혹은 그 이하이다. 만약 함수가 너무 많은 수의 인수를 필요로 한다면, 다른 사람이 봤을 때 어떤 인수가\r\n무얼 하는지 몰라 혼란스러울 수가 있다. \r\n\r\n```JAVA\r\ngetForPrintsArticle(id,regDate,boardId,memberId,title);\r\n```\r\n\r\n- boolean 값을 인수로 함수에 보내는 것을 최대한 방지하도록 하자!\r\n\r\nboolean 값은 참 혹은 거짓을 의미하는 데이터 타입이다. boolean 값을 함수에 보낸다는 것은 그 함수 안에 if, else 가 있다는 뜻이고\r\n추천하는 것은 각각의 if-else 값을 다른 함수로 분리하는 것이 좋다. \r\n\r\n- 짧은 변수명이나 (아무도 이해못하는) 축약어 쓰는 것을 피하자!\r\n\r\n예를 들어 \r\n```JAVA\r\nlogin(ui,up);\r\n// 가 아닌\r\nlogin(userId,userPassword);\r\n```\r\n\r\n\r\n## 끝맺음\r\n나는 코딩을 할때는 약간 미친(?) 모드가 되어서 코딩을 하고는 한다. 미친듯이 쓰면서 뭔가 작동이 되게끔 하려고 애를 쓴다.\r\n이를 방지하기 위해 초기 시작점에서 코드를 이쁘게 쓰려고 하면 안된다. 겁내 못생겨도 일단 코드를 쓰고 작동이 되는 것을 확인하고,\r\n그 다음에 클린 코드로 다듬어주도록 하자. 처음부터 이쁘장한 코드로 쓰는 것은 매우 어려운 일이다. 마지막에 코딩 대청소하기~~~',1,3,3,0),
(4,'2020-12-20 20:16:39','2020-12-20 20:16:39','4강 자바 들여쓰기(indentation) 규칙 권장안','# 들여쓰기(indentation) 규칙 권장안\r\n\r\n## 들여쓰기\r\n들여쓰기는 문맥이 깊어지거나 이어주는 아랫 줄이 윗 줄보다 얼만큼 안쪽으로 들여쓰여질 것을 나타낸다.\r\n \r\n\r\n- 오라클사의 자바 들여쓰기 관례\r\n들여쓰기는 4자리로 한다.\r\n탭 문자의 표시: 탭 문자는 8개(4개가 아닌) 공백 문자 단위로 화면에 표시되어야 한다.\r\n탭 문자의 생성: 소스 코드 작성시에 탭 문자를 사용할 지 공백 문자를 사용할지는 정해져 있지 않다.\r\n \r\n- 들여쓰기의 크기: 4자리\r\n자바, C#, C++, C 등의 언어에서는 일반적으로 4자리 들여쓰기가 기본이며, 오라클 사의 자바 들여쓰기 관례 문서에서도 4자리이다. 4자리 들여쓰기는 문장의 논리적 포함 관계를 눈에 쉽게 띄게 해주면서도 8자리 띄어쓰기 방식에 비해 들여쓰기가 너무 깊어지는 것을 방지해주기 때문이다.\r\nHTML, XML의 경우에는 일반적으로 2자리 띄어쓰기가 기본이다. 요소의 논리적 포함 단계가 종종 많아지기 때문에 4자리 들여쓰기로는 들여쓰기가 너무 깊어지기 때문이다.\r\n\r\n\r\n## 탭 문자의 처리\r\n\r\n- 탭 문자 사용 금지\r\n\r\n탭 문자를 사용하지 않고, 대신 공백 문자를 사용한다.\r\n탭 문자가 화면에 표시되는 크기가 편집기 및 도구, 그리고 그 설정마다 달라질 수 있어서, 화면상으로 보기에는 들여쓰기가 바르게 되어 있는 소스 코드가 다른 편집기, 도구, 다른 사용자에게는 엉망으로 보여질 수 있기 때문이다. 특히, 탭과 공백 문자가 임의의 섞여 있는 소스 코드는 작성자의 사용 환경과 탭 문자의 해석을 달리 하는 사용 환경에서 소스 코드의 가독성을 크게 떨어뜨리기 때문이다.\r\n이 때문에 많은 자바 프로젝트의 코드 관례에서 탭 문자를 사용하지 말고, 대신 공백 문자를 사용하도록 하고 있다.\r\n \r\n- 탭 문자의 화면 표시 크기\r\n\r\n탭 문자는 8개 공백 문자로 표시되는 것이 사실상의 표준이 되어 왔으며 간단한 텍스트 편집기 등에서는 대개의 경우 8개 공백 문자로 표시하므로 8개 문자 표시로 설정해주는 것이 좋다. 프로젝트에서 탭 문자를 사용하지 않더라도 프로젝트 외부에서 작성된 소스 코드는 탭 문자가 사용되었을 수 있기 때문이다.\r\n그러나, 프로젝트 외부에서 작성된 소스 코드는 탭 문자로 인하여 가독성이 크게 떨어지는 경우 탭 문자 크기를 적절히 변경 설정하여 사용한다.\r\n\r\n\r\n## IDE의 자동 들여쓰기 기능 및 설정 방법\r\n\r\n- 이클립스\r\n들여쓰기를 4자리로 설정: 메뉴에서 \"Preferences/Java/Code Style/Formatter/Edit/Indentation/Indentation size\"를 \"4\"로 설정한다.\r\n탭 문자 사용 금지(공백 문자 사용) 설정: 메뉴에서 \"Preferences/Java/Code Style/Formatter/Edit/Indentation/Tab policy\"를 \"Spaces only\"로 설정한다.\r\n탭 문자 표시 크기를 8로 설정: 메뉴에서 \"Preferences/Java/Code Style/Formatter/Edit/Indentation/Tab size\"를 \"8\"로 설정한다.\r\n다음행 자동 들여쓰기: 리턴 키를 입력하면, 다음 행의 문맥에 따라 적절히 들여쓰기한 위치로 커서를 이동시켜준다.\r\n소스 파일 전체 자동 들여쓰기: 자바 소스 코드 편집기의 팝업 메뉴에서 \"Source/Format\"을 선택하면 소스 파일 전체 혹은 선택된 블럭에 대하여 자동 들여쓰기를 해준다.\r\n\r\n- 이맥스\r\n들여쓰기를 4자리로 설정: 자바 모드의 기본 설정이다.\r\n탭 문자 사용 금지(공백 문자 사용) 설정: default.el 파일에 \"(setq-default indent-tabs-mode nil)\"을 추가한다.\r\n탭 문자 표시 크기를 8로 설정: 기본 설정이다.\r\n소스 파일 전체 자동 들여쓰기: \"C-x h C-M-\\\" 키를 입력하면, 소스 파일 전체를 자동 들여쓰기 해준다.',1,3,1,0),
(5,'2020-12-21 13:01:39','2020-12-21 13:01:43','5강 스레드(Thread)','# 1. 스레드란? (Thread)\r\n\r\n우리가 컴퓨터로 음악을 들으면서 워드작업을 하면 2가지 이상의 프로세스를 동시에 하는 것이다. = 멀티태스킹\r\n쓰레드는 이 프로세스 내에서 실행되는 세부 작업의 단위이다. 여러 개의 쓰레드가 모여 하나의 프로세스를 구성하게 되고 이 하나의 프로세스를 구성하는\r\n여러 개의 쓰레드를 멀티 쓰레드라고 한다.\r\n\r\n예를 들어, 자바 내에서 우리가 메인 클래스에서 프로그래밍을 하면 메인클래스의 쓰레드가 무조건 실행이 된다.\r\n그리고 별도로 스레드를 상속받은 다른 클래스가 있다면 두 스레드가 동시에 실행할 수 있는데 이게 멀티 쓰레드인 것이다.\r\n그래서 자바에서 쓰레드의 개념과 쓰레드 관련 주요 메소드를 아는게 중요하다.\r\n\r\n\r\n# 2. 스레드 (Thread) 관련 주요 메소드\r\n\r\n- run() : 스레드에서 실질적으로 실행되는 코드 블록\r\n\r\n- setDaemon() : 메인 스레드가 종료되면 자동으로 종료되게 설정\r\n\r\n- start() : 해당 스레드의 run()메소드를 시작하게 하는 함수 (실행시켜주는 함수)\r\n\r\n- sleep(time) : 주어진 시간(밀리초)동안 스레드 작동을 멈춤\r\n\r\n- interrupt() : 스레드를 강제로 종료 \r\n',1,3,2,0);

/*Table structure for table `articleReply` */

DROP TABLE IF EXISTS `articleReply`;

CREATE TABLE `articleReply` (
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `replyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `articleId` int(10) unsigned NOT NULL,
  `reply` char(200) NOT NULL,
  `memberReplyId` int(10) unsigned NOT NULL,
  `boardReplyId` int(10) unsigned NOT NULL,
  `like` int(10) unsigned NOT NULL,
  PRIMARY KEY (`replyId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `articleReply` */

insert  into `articleReply`(`regDate`,`updateDate`,`replyId`,`articleId`,`reply`,`memberReplyId`,`boardReplyId`,`like`) values 
('2020-12-21 00:00:00','2020-12-21 00:00:00',1,2,'안녕하세요 저는 테스트1입니다.',1,1,0),
('2020-12-21 00:00:00','2020-12-21 00:00:00',2,2,'안녕하세요 저는 테스트2입니다.',2,1,0),
('2020-12-21 00:00:00','2020-12-21 00:00:00',3,2,'안녕하세요 저는 테스트3입니다.',3,1,0),
('2020-12-21 00:00:00','2020-12-21 00:00:00',4,1,'안녕하세요 저는 테스트4입니다.',4,1,0),
('2020-12-21 00:00:00','2020-12-21 00:00:00',5,5,'안녕하세요 저는 테스트1입니다.',1,1,0),
('2020-12-21 00:00:00','2020-12-21 00:00:00',6,3,'안녕하세요 저는 테스트2입니다.',2,1,0);

/*Table structure for table `board` */

DROP TABLE IF EXISTS `board`;

CREATE TABLE `board` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `name` char(20) NOT NULL,
  `code` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `board` */

insert  into `board`(`id`,`regDate`,`updateDate`,`name`,`code`) values 
(1,'2020-12-21 00:00:00','2020-12-21 00:00:00','공지사항','notice'),
(2,'2020-12-21 00:00:00','2020-12-21 00:00:00','자유','free'),
(3,'2020-12-21 09:11:11','2020-12-21 09:11:11','SQL','it');

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `userId` char(30) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `name` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `member` */

insert  into `member`(`id`,`regDate`,`updateDate`,`userId`,`passwd`,`name`) values 
(1,'2020-12-21 09:11:16','2020-12-21 09:11:16','admin','admin','이주영');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
