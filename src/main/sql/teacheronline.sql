-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-16 15:02:35
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teacheronline`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
  (1, '1106697389@qq.com', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE `article` (
  `art_id` int(11) NOT NULL,
  `art_cateid` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `art_title` varchar(128) DEFAULT NULL,
  `art_content` text,
  `art_html` text,
  `art_summary` text,
  `art_date` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`art_id`, `art_cateid`, `u_id`, `art_title`, `art_content`, `art_html`, `art_summary`, `art_date`) VALUES
  (4, 1, 1, 'java支付', '#### Using FlowChart\n\nsetting:\n\n    {\n        flowChart : true\n    }\n\n#### Example\n\n```flow\nst=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op\n```', '<h4 id="h4-using-flowchart"><a name="Using FlowChart" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Using FlowChart</h4><p>setting:</p>\n<pre><code>{\n    flowChart : true\n}\n</code></pre><h4 id="h4-example"><a name="Example" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Example</h4><div class="flowchart">st=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op</div>', 'java支付', '2018-03-28'),
  (6, 1, 1, 'java开发', '#### Using FlowChart\n\nsetting:\n\n    {\n        flowChart : true\n    }\n\n#### Example\n\n```flow\nst=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op\n```', '<h4 id="h4-using-flowchart"><a name="Using FlowChart" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Using FlowChart</h4><p>setting:</p>\n<pre><code>{\n    flowChart : true\n}\n</code></pre><h4 id="h4-example"><a name="Example" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Example</h4><div class="flowchart">st=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op</div>', 'java开发', '2018-03-29'),
  (13, 1, 1, 'java并发', '#### Using FlowChart\n\nsetting:\n\n    {\n        flowChart : true\n    }\n\n#### Example\n\n```flow\nst=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op\n```', '<h4 id="h4-using-flowchart"><a name="Using FlowChart" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Using FlowChart</h4><p>setting:</p>\n<pre><code>{\n    flowChart : true\n}\n</code></pre><h4 id="h4-example"><a name="Example" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Example</h4><div class="flowchart">st=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op</div>', 'java并发', '2018-03-29'),
  (14, 1, 1, 'java', '#### Using FlowChart\n\nsetting:\n\n    {\n        flowChart : true\n    }\n\n#### Example\n\n```flow\nst=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op\n```', '<h4 id="h4-using-flowchart"><a name="Using FlowChart" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Using FlowChart</h4><p>setting:</p>\n<pre><code>{\n    flowChart : true\n}\n</code></pre><h4 id="h4-example"><a name="Example" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Example</h4><div class="flowchart">st=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op</div>', 'java并发', ' 2018年03月29日 '),
  (15, 1, 1, 'Mybatis一对一关联查询', '#### Using FlowChart\n\nsetting:\n\n    {\n        flowChart : true\n    }\n\n#### Example\n\n```flow\nst=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op\n```', '<h4 id="h4-using-flowchart"><a name="Using FlowChart" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Using FlowChart</h4><p>setting:</p>\n<pre><code>{\n    flowChart : true\n}\n</code></pre><h4 id="h4-example"><a name="Example" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Example</h4><div class="flowchart">st=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op</div>', 'Mybatis一对一关联查询有两张表，老师表teacher和班级表class，一个class班级对嵌', ' 2018年03月29日 '),
  (16, 4, 1, 'Mybatis关联查询之一对多和多对一XML配置详解', '### 平时在开发过程中Dao、Bean和Xml文件都是自动生成的，很少写Xml的配置关系，今天记录一下Mybatis的关联查询中的多对一和一对多的情况。\n\n首先是有两张表(学生表Student和老师Teacher表)，为了更易懂，这里只设置了最简单的几个必要字段。表结构如下图\n**Student表**：\n![](/resources/upload/201803301604121QQ截图20180329164353.png)\n```java\nimport java.util.List;  \n  \n/** \n * TODO \n * @version 创建时间：2017年12月21日 上午9:02:45 \n */  \npublic class Teacher {  \n  \n    private Integer id;  \n    private String name;  \n    private String className;  \n    private List<Student> students;  \n  \n    public List<Student> getStudents() {  \n        return students;  \n    }  \n  \n    public void setStudents(List<Student> students) {  \n        this.students = students;  \n    }  \n  \n    public Integer getId() {  \n        return id;  \n    }  \n  \n    public void setId(Integer id) {  \n        this.id = id;  \n    }  \n  \n    public String getName() {  \n        return name;  \n    }  \n  \n    public void setName(String name) {  \n        this.name = name;  \n    }  \n  \n    public String getClassName() {  \n        return className;  \n    }  \n  \n    public void setClassName(String className) {  \n        this.className = className;  \n    }  \n  \n}  \n```\n\n最后：当然如果不想配置这么麻烦的信息，可以直接写一个关联查询的SQL语句，返回结果直接由Map接受即可。不过这样就不太符合面向对象的理念了。', '<h3 id="h3--dao-bean-xml-xml-mybatis-"><a name="平时在开发过程中Dao、Bean和Xml文件都是自动生成的，很少写Xml的配置关系，今天记录一下Mybatis的关联查询中的多对一和一对多的情况。" class="reference-link"></a><span class="header-link octicon octicon-link"></span>平时在开发过程中Dao、Bean和Xml文件都是自动生成的，很少写Xml的配置关系，今天记录一下Mybatis的关联查询中的多对一和一对多的情况。</h3><p>首先是有两张表(学生表Student和老师Teacher表)，为了更易懂，这里只设置了最简单的几个必要字段。表结构如下图<br><strong>Student表</strong>：<br><img src="/resources/upload/201803301604121QQ截图20180329164353.png" alt=""></p>\n<pre><code class="lang-java">import java.util.List;  \n\n/** \n * TODO \n * @version 创建时间：2017年12月21日 上午9:02:45 \n */  \npublic class Teacher {  \n\n    private Integer id;  \n    private String name;  \n    private String className;  \n    private List&lt;Student&gt; students;  \n\n    public List&lt;Student&gt; getStudents() {  \n        return students;  \n    }  \n\n    public void setStudents(List&lt;Student&gt; students) {  \n        this.students = students;  \n    }  \n\n    public Integer getId() {  \n        return id;  \n    }  \n\n    public void setId(Integer id) {  \n        this.id = id;  \n    }  \n\n    public String getName() {  \n        return name;  \n    }  \n\n    public void setName(String name) {  \n        this.name = name;  \n    }  \n\n    public String getClassName() {  \n        return className;  \n    }  \n\n    public void setClassName(String className) {  \n        this.className = className;  \n    }  \n\n}\n</code></pre>\n<p>最后：当然如果不想配置这么麻烦的信息，可以直接写一个关联查询的SQL语句，返回结果直接由Map接受即可。不过这样就不太符合面向对象的理念了。</p>\n', '平时在开发过程中dao、bean和XML文件都是自动生成的，很少写XML的配置关系，今天记录一下mybatis的关联查询中的多对一和一对多的情况。', ' 2018年03月30日 '),
  (17, 4, 1, '12345', '#### Using FlowChart\n\nsetting:\n\n    {\n        flowChart : true\n    }\n\n#### Example\n\n```flow\nst=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op\n```', '<h4 id="h4-using-flowchart"><a name="Using FlowChart" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Using FlowChart</h4><p>setting:</p>\n<pre><code>{\n    flowChart : true\n}\n</code></pre><h4 id="h4-example"><a name="Example" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Example</h4><div class="flowchart">st=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op</div>', 'hello', ' 2018年04月26日 '),
  (18, 4, 1, 'IntelliJ IDEA 中使用GitHub', '![](/resources/upload/201805032204441QQ截图20180503220435.png)\n\n### 二、在Idea 里面做相关配置： 打开设置面板(Ctrl+Alt+S),点击左边功能面板列表中的Version Control(版本控制)如下图：\n\n![](/resources/upload/201805032205321QQ截图20180503220523.png)\n\n### 三、在这里有许多进行版本控制的配置,我们要用的是Git3. 然后我们点击第六项 GitHub(本文默认你已经拥有了一个github账号,如果没有请先注册) 然后Host一栏填写github 的地址: github.com 在 Login 一栏填写你的github 账号，Password 一栏填写密码 填写完成后点击 Test按钮，此时 IDEA 会根据你填写的内容远程访问github社区,如果账号和密码输入正确会提示你链接成功\n\n![](/resources/upload/201805032206161QQ截图20180503220606.png)\n\n', '<p><img src="/resources/upload/201805032204441QQ截图20180503220435.png" alt=""></p>\n<h3 id="h3--idea-ctrl-alt-s-version-control-"><a name="二、在Idea 里面做相关配置： 打开设置面板(Ctrl+Alt+S),点击左边功能面板列表中的Version Control(版本控制)如下图：" class="reference-link"></a><span class="header-link octicon octicon-link"></span>二、在Idea 里面做相关配置： 打开设置面板(Ctrl+Alt+S),点击左边功能面板列表中的Version Control(版本控制)如下图：</h3><p><img src="/resources/upload/201805032205321QQ截图20180503220523.png" alt=""></p>\n<h3 id="h3--git3-github-github-host-github-github-com-login-github-password-test-idea-github-"><a name="三、在这里有许多进行版本控制的配置,我们要用的是Git3. 然后我们点击第六项 GitHub(本文默认你已经拥有了一个github账号,如果没有请先注册) 然后Host一栏填写github 的地址: github.com 在 Login 一栏填写你的github 账号，Password 一栏填写密码 填写完成后点击 Test按钮，此时 IDEA 会根据你填写的内容远程访问github社区,如果账号和密码输入正确会提示你链接成功" class="reference-link"></a><span class="header-link octicon octicon-link"></span>三、在这里有许多进行版本控制的配置,我们要用的是Git3. 然后我们点击第六项 GitHub(本文默认你已经拥有了一个github账号,如果没有请先注册) 然后Host一栏填写github 的地址: github.com 在 Login 一栏填写你的github 账号，Password 一栏填写密码 填写完成后点击 Test按钮，此时 IDEA 会根据你填写的内容远程访问github社区,如果账号和密码输入正确会提示你链接成功</h3><p><img src="/resources/upload/201805032206161QQ截图20180503220606.png" alt=""></p>\n', '最近用到GitHub所以选择在IDEA上配置，记录下设置过程。参考了网上的大神的教程，在此记录下来。 \nIDEA中 将本地项目提交到本地仓库和远程仓库(github),下面是想详细的操作步骤：', ' 2018年05月03日 '),
  (19, 3, 1, 'SM框架的基本概念（什么是ssm框架？）', '1.Spring简介 \n\n        Spring是一个开源框架，Spring是于2003年兴起的一个轻量级的Java开发框架，由Rod Johnson在其著作Expert One-On-One J2EE Development and Design中阐述的部分理念和原型衍生而来。它是为了解决企业应用开发的复杂性而创建的。Spring使用基本的JavaBean来完成以前只可能由EJB完成的事情。然而，Spring的用途不仅限于服务器端的开发。从简单性、可测试性和松耦合的角度而言，任何Java应用都可以从Spring中受益。 简单来说，Spring是一个轻量级的控制反转（IoC）和面向切面（AOP）的容器框架。 \n\n      A.控制反转（IOC）是什么呢？ \n        IOC:控制反转也叫依赖注入。利用了工厂模式将对象交给容器管理，你只需要在spring配置文件总配置相应的bean，以及设置相关的属性，让spring容器来生成类的实例对象以及管理对象。在spring容器启动的时候，spring会把你在配置文件中配置的bean都初始化好，然后在你需要调用的时候，就把它已经初始化好的那些bean分配给你需要调用这些bean的类（假设这个类名是A），分配的方法就是调用A的setter方法来注入，而不需要你在A里面new这些bean了。 \n        [注意]：面试的时候，如果有条件，画图，这样更加显得你懂了 \n      B.面向切面(AOP)又是什么呢？ \n        首先，需要说明的一点，AOP只是Spring的特性，它就像OOP一样是一种编程思想，并不是某一种技术,AOP可以说是对OOP的补充和完善。OOP引入封装、继承和多态性等概念来建立一种对象层次结构，用以模拟公共行为的一个集合。当我们需要为分散的对象引入公共行为的时候，OOP则显得无能为力。也就是说，OOP允许你定义从上到下的关系，但并不适合定义从左到右的关系。例如日志功能。日志代码往往水平地散布在所有对象层次中，而与它所散布到的对象的核心功能毫无关系。在OOP设计中，它导致了大量代码的重复，而不利于各个模块的重用。将程序中的交叉业务逻辑（比如安全，日志，事务等），封装成一个切面，然后注入到目标对象（具体业务逻辑）中去。 \n        实现AOP的技术，主要分为两大类：一是采用动态代理技术，利用截取消息的方式，对该消息进行装饰，以取代原有对象行为的执行；二是采用静态织入的方式，引入特定的语法创建“方面”，从而使得编译器可以在编译期间织入有关“方面”的代码。 \n[简单点解释]，比方说你想在你的biz层所有类中都加上一个打印‘你好，AOP’的功能这你经可以用aop思想来做，你先写个类写个方法，方法经实现打印‘你好,AOP’让后你Ioc这个类 ref＝“biz.*”让每个类都注入。 \n\n2.Spring MVC简介 \n\n        Spring MVC属于Spring Framework的后续产品，已经融合在Spring Web Flow里面，它原生支持的Spring特性，让开发变得非常简单规范。Spring MVC 分离了控制器、模型对象、分派器以及处理程序对象的角色，这种分离让它们更容易进行定制。 \n3.MyBatis简介 \n\n        MyBatis本是apache的一个开源项目iBatis, 2010年这个项目由apache software foundation 迁移到了google code，并且改名为MyBatis 。MyBatis是一个基于Java的持久层框架。iBATIS提供的持久层框架包括SQL Maps和Data Access Objects（DAO）MyBatis消除了几乎所有的JDBC代码和参数的手工设置以及结果集的检索。MyBatis使用简单的XML或注解用于配置和原始映射，将接口和Java的POJOs（Plain Old Java Objects，普通的 Java对象）映射成数据库中的记录。可以这么理解，MyBatis是一个用来帮你管理数据增删改查的框架。\n\n  ', '<p>1.Spring简介 </p>\n<pre><code>    Spring是一个开源框架，Spring是于2003年兴起的一个轻量级的Java开发框架，由Rod Johnson在其著作Expert One-On-One J2EE Development and Design中阐述的部分理念和原型衍生而来。它是为了解决企业应用开发的复杂性而创建的。Spring使用基本的JavaBean来完成以前只可能由EJB完成的事情。然而，Spring的用途不仅限于服务器端的开发。从简单性、可测试性和松耦合的角度而言，任何Java应用都可以从Spring中受益。 简单来说，Spring是一个轻量级的控制反转（IoC）和面向切面（AOP）的容器框架。 \n\n  A.控制反转（IOC）是什么呢？ \n    IOC:控制反转也叫依赖注入。利用了工厂模式将对象交给容器管理，你只需要在spring配置文件总配置相应的bean，以及设置相关的属性，让spring容器来生成类的实例对象以及管理对象。在spring容器启动的时候，spring会把你在配置文件中配置的bean都初始化好，然后在你需要调用的时候，就把它已经初始化好的那些bean分配给你需要调用这些bean的类（假设这个类名是A），分配的方法就是调用A的setter方法来注入，而不需要你在A里面new这些bean了。 \n    [注意]：面试的时候，如果有条件，画图，这样更加显得你懂了 \n  B.面向切面(AOP)又是什么呢？ \n    首先，需要说明的一点，AOP只是Spring的特性，它就像OOP一样是一种编程思想，并不是某一种技术,AOP可以说是对OOP的补充和完善。OOP引入封装、继承和多态性等概念来建立一种对象层次结构，用以模拟公共行为的一个集合。当我们需要为分散的对象引入公共行为的时候，OOP则显得无能为力。也就是说，OOP允许你定义从上到下的关系，但并不适合定义从左到右的关系。例如日志功能。日志代码往往水平地散布在所有对象层次中，而与它所散布到的对象的核心功能毫无关系。在OOP设计中，它导致了大量代码的重复，而不利于各个模块的重用。将程序中的交叉业务逻辑（比如安全，日志，事务等），封装成一个切面，然后注入到目标对象（具体业务逻辑）中去。 \n    实现AOP的技术，主要分为两大类：一是采用动态代理技术，利用截取消息的方式，对该消息进行装饰，以取代原有对象行为的执行；二是采用静态织入的方式，引入特定的语法创建“方面”，从而使得编译器可以在编译期间织入有关“方面”的代码。 \n</code></pre><p>[简单点解释]，比方说你想在你的biz层所有类中都加上一个打印‘你好，AOP’的功能这你经可以用aop思想来做，你先写个类写个方法，方法经实现打印‘你好,AOP’让后你Ioc这个类 ref＝“biz.*”让每个类都注入。 </p>\n<p>2.Spring MVC简介 </p>\n<pre><code>    Spring MVC属于Spring Framework的后续产品，已经融合在Spring Web Flow里面，它原生支持的Spring特性，让开发变得非常简单规范。Spring MVC 分离了控制器、模型对象、分派器以及处理程序对象的角色，这种分离让它们更容易进行定制。 \n</code></pre><p>3.MyBatis简介 </p>\n<pre><code>    MyBatis本是apache的一个开源项目iBatis, 2010年这个项目由apache software foundation 迁移到了google code，并且改名为MyBatis 。MyBatis是一个基于Java的持久层框架。iBATIS提供的持久层框架包括SQL Maps和Data Access Objects（DAO）MyBatis消除了几乎所有的JDBC代码和参数的手工设置以及结果集的检索。MyBatis使用简单的XML或注解用于配置和原始映射，将接口和Java的POJOs（Plain Old Java Objects，普通的 Java对象）映射成数据库中的记录。可以这么理解，MyBatis是一个用来帮你管理数据增删改查的框架。\n</code></pre>', 'SSM框架，是Spring + Spring MVC + MyBatis的缩写，这个是继SSH之后，目前比较主流的Java EE企业级框架，适用于搭建各种大型的企业级应用系统。 ', ' 2018年05月10日 '),
  (20, 10, 2, '好的心态健康', '以下为滴滴公告全文：\n\n　　滴滴公布自查进展，顺风车平台业务全国停业整改一周\n\n　　我们在针对郑州顺风车案件的自查中发现，该接单账号归属于嫌疑人父亲，且正常通过了滴滴顺风车注册时的三证验真、犯罪背景筛查和接首单前须进行人脸识别等安全措施。嫌疑人系违规借用其父顺风车账号接单。\n\n　　同时，我们原有的夜间安全保障机制不合理，导致在该订单中针对夜间的人脸识别机制没有被触发。此外，嫌疑人在案发前，曾有一起言语性骚扰投诉记录，客服五次通话联系不上嫌疑人，由于判责规则不合理，后续未对投诉做妥善处理。\n\n　　鉴于以上问题，我们决定即日起做如下自查整改措施：\n\n　　1、自5月12日零点起，顺风车业务在全国范围内下线，停业自查整改一周；\n\n　　2、其他平台业务对全量司机全面审查，用一切手段清理平台上可能的人车不符情况；\n\n　　3、运营及客服体系全面整改。\n\n　　再次向受害者家人以及公众道歉！感谢大家对滴滴的监督和帮助，我们将及时公布详细的整改进展。\n\n　　滴滴出行\n  \n![](/resources/upload/2018051123055621526051064(1).jpg)', '<p>以下为滴滴公告全文：</p>\n<p>　　滴滴公布自查进展，顺风车平台业务全国停业整改一周</p>\n<p>　　我们在针对郑州顺风车案件的自查中发现，该接单账号归属于嫌疑人父亲，且正常通过了滴滴顺风车注册时的三证验真、犯罪背景筛查和接首单前须进行人脸识别等安全措施。嫌疑人系违规借用其父顺风车账号接单。</p>\n<p>　　同时，我们原有的夜间安全保障机制不合理，导致在该订单中针对夜间的人脸识别机制没有被触发。此外，嫌疑人在案发前，曾有一起言语性骚扰投诉记录，客服五次通话联系不上嫌疑人，由于判责规则不合理，后续未对投诉做妥善处理。</p>\n<p>　　鉴于以上问题，我们决定即日起做如下自查整改措施：</p>\n<p>　　1、自5月12日零点起，顺风车业务在全国范围内下线，停业自查整改一周；</p>\n<p>　　2、其他平台业务对全量司机全面审查，用一切手段清理平台上可能的人车不符情况；</p>\n<p>　　3、运营及客服体系全面整改。</p>\n<p>　　再次向受害者家人以及公众道歉！感谢大家对滴滴的监督和帮助，我们将及时公布详细的整改进展。</p>\n<p>　　滴滴出行</p>\n<p><img src="/resources/upload/2018051123055621526051064(1" alt="">.jpg)</p>\n', '以下为滴滴公告全文：\n\n　　滴滴公布自查进展，顺风车平台业务全国停业整改一周\n\n　　我们在针对郑州顺风车案件的自查中发现，该接单账号归属于嫌疑人父亲，且正常通过了滴滴顺风车注册时的三证验真、犯罪背景筛查和接首单前须进行人脸识别等安全措施。嫌疑人系违规借用其父顺风车账号接单。\n\n　　同时，我们原有的夜', ' 2018年05月11日 '),
  (21, 9, 1, '直击|滴滴顺风车业务全国停业整改一周', '　以下为滴滴公告全文：\n\n　　滴滴公布自查进展，顺风车平台业务全国停业整改一周\n\n　　我们在针对郑州顺风车案件的自查中发现，该接单账号归属于嫌疑人父亲，且正常通过了滴滴顺风车注册时的三证验真、犯罪背景筛查和接首单前须进行人脸识别等安全措施。嫌疑人系违规借用其父顺风车账号接单。\n\n　　同时，我们原有的夜间安全保障机制不合理，导致在该订单中针对夜间的人脸识别机制没有被触发。此外，嫌疑人在案发前，曾有一起言语性骚扰投诉记录，客服五次通话联系不上嫌疑人，由于判责规则不合理，后续未对投诉做妥善处理。\n\n　　鉴于以上问题，我们决定即日起做如下自查整改措施：\n\n　　1、自5月12日零点起，顺风车业务在全国范围内下线，停业自查整改一周；\n\n　　2、其他平台业务对全量司机全面审查，用一切手段清理平台上可能的人车不符情况；\n\n　　3、运营及客服体系全面整改。\n\n　　再次向受害者家人以及公众道歉！感谢大家对滴滴的监督和帮助，我们将及时公布详细的整改进展。\n\n　　滴滴出行\n\n　　2018年5月11日\n  \n![](/resources/upload/201805112319081QQ截图20180511231500.png)', '<p>　以下为滴滴公告全文：</p>\n<p>　　滴滴公布自查进展，顺风车平台业务全国停业整改一周</p>\n<p>　　我们在针对郑州顺风车案件的自查中发现，该接单账号归属于嫌疑人父亲，且正常通过了滴滴顺风车注册时的三证验真、犯罪背景筛查和接首单前须进行人脸识别等安全措施。嫌疑人系违规借用其父顺风车账号接单。</p>\n<p>　　同时，我们原有的夜间安全保障机制不合理，导致在该订单中针对夜间的人脸识别机制没有被触发。此外，嫌疑人在案发前，曾有一起言语性骚扰投诉记录，客服五次通话联系不上嫌疑人，由于判责规则不合理，后续未对投诉做妥善处理。</p>\n<p>　　鉴于以上问题，我们决定即日起做如下自查整改措施：</p>\n<p>　　1、自5月12日零点起，顺风车业务在全国范围内下线，停业自查整改一周；</p>\n<p>　　2、其他平台业务对全量司机全面审查，用一切手段清理平台上可能的人车不符情况；</p>\n<p>　　3、运营及客服体系全面整改。</p>\n<p>　　再次向受害者家人以及公众道歉！感谢大家对滴滴的监督和帮助，我们将及时公布详细的整改进展。</p>\n<p>　　滴滴出行</p>\n<p>　　2018年5月11日</p>\n<p><img src="/resources/upload/201805112319081QQ截图20180511231500.png" alt=""></p>\n', '新浪科技讯 5月11日下午消息，在顺风车乘客遇害事件之后，滴滴今日宣布，顺风车平台业务全国停业整改一周。', ' 2018年05月11日 ');

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE `category` (
  `cata_id` int(11) NOT NULL COMMENT '唯一标识',
  `u_id` int(11) NOT NULL COMMENT '用户id',
  `cata_name` varchar(30) NOT NULL COMMENT '类别名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='类别表';

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`cata_id`, `u_id`, `cata_name`) VALUES
  (1, 1, 'java'),
  (2, 1, 'bootstrap'),
  (3, 1, 'javaweb'),
  (4, 1, 'springmvc'),
  (5, 0, '心理学'),
  (6, 0, '保险'),
  (7, 0, '医学'),
  (8, 0, '理财'),
  (9, 1, 'mfc'),
  (10, 2, '心理学');

-- --------------------------------------------------------

--
-- 表的结构 `questions`
--

CREATE TABLE `questions` (
  `qu_id` int(11) NOT NULL COMMENT '自动生成主键',
  `u_id` int(11) NOT NULL COMMENT '用户的id，找到发出问题的用户',
  `ca_id` int(11) NOT NULL COMMENT '分类类型，如：心理学，计算机等',
  `qu_title` varchar(50) NOT NULL,
  `qu_values` int(11) NOT NULL,
  `qu_content` text NOT NULL,
  `qu_html` text NOT NULL,
  `qu_date` varchar(50) NOT NULL COMMENT '提出问题时间',
  `qu_finishUId` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='问题表';

--
-- 转存表中的数据 `questions`
--

INSERT INTO `questions` (`qu_id`, `u_id`, `ca_id`, `qu_title`, `qu_values`, `qu_content`, `qu_html`, `qu_date`, `qu_finishUId`) VALUES
  (3, 1, 5, '123', 123, '#### Using FlowChart\n\nsetting:\n\n    {\n        flowChart : true\n    }\n\n#### Example\n\n```flow\nst=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op\n```', '<h4 id="h4-using-flowchart"><a name="Using FlowChart" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Using FlowChart</h4><p>setting:</p>\n<pre><code>{\n    flowChart : true\n}\n</code></pre><h4 id="h4-example"><a name="Example" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Example</h4><div class="flowchart">st=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op</div>', ' 2018年05月05日 ', 0),
  (4, 1, 5, '123', 123, '#### Using FlowChart\n\nsetting:\n\n    {\n        flowChart : true\n    }\n\n#### Example\n\n```flow\nst=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op\n```', '<h4 id="h4-using-flowchart"><a name="Using FlowChart" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Using FlowChart</h4><p>setting:</p>\n<pre><code>{\n    flowChart : true\n}\n</code></pre><h4 id="h4-example"><a name="Example" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Example</h4><div class="flowchart">st=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op</div>', ' 2018年05月05日 ', 0),
  (5, 1, 5, '123', 3242, '#### Using FlowChart\n\nsetting:\n\n    {\n        flowChart : true\n    }\n\n#### Example\n\n```flow\nst=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op\n```', '<h4 id="h4-using-flowchart"><a name="Using FlowChart" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Using FlowChart</h4><p>setting:</p>\n<pre><code>{\n    flowChart : true\n}\n</code></pre><h4 id="h4-example"><a name="Example" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Example</h4><div class="flowchart">st=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op</div>', ' 2018年05月05日 ', 0),
  (6, 1, 5, '123', 132, '#### Using FlowChart\n\nsetting:\n\n    {\n        flowChart : true\n    }\n\n#### Example\n\n```flow\nst=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op\n```', '<h4 id="h4-using-flowchart"><a name="Using FlowChart" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Using FlowChart</h4><p>setting:</p>\n<pre><code>{\n    flowChart : true\n}\n</code></pre><h4 id="h4-example"><a name="Example" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Example</h4><div class="flowchart">st=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op</div>', ' 2018年05月05日 ', 0),
  (7, 1, 5, '如何提高青少年的语言表达能力', 123, '#### Using FlowChart\n\nsetting:\n\n    {\n        flowChart : true\n    }\n\n#### Example\n\n```flow\nst=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op\n```', '<h4 id="h4-using-flowchart"><a name="Using FlowChart" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Using FlowChart</h4><p>setting:</p>\n<pre><code>{\n    flowChart : true\n}\n</code></pre><h4 id="h4-example"><a name="Example" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Example</h4><div class="flowchart">st=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op</div>', ' 2018年05月06日 ', 5),
  (8, 1, 7, '如何治愈癌症', 123, '#### Using FlowChart\n\nsetting:\n\n    {\n        flowChart : true\n    }\n\n#### Example\n\n```flow\nst=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op\n```', '<h4 id="h4-using-flowchart"><a name="Using FlowChart" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Using FlowChart</h4><p>setting:</p>\n<pre><code>{\n    flowChart : true\n}\n</code></pre><h4 id="h4-example"><a name="Example" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Example</h4><div class="flowchart">st=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op</div>', ' 2018年05月09日 ', 0),
  (9, 1, 8, '如何将资金翻倍', 123, '#### Using FlowChart\n\nsetting:\n\n    {\n        flowChart : true\n    }\n\n#### Example\n\n```flow\nst=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op\n```', '<h4 id="h4-using-flowchart"><a name="Using FlowChart" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Using FlowChart</h4><p>setting:</p>\n<pre><code>{\n    flowChart : true\n}\n</code></pre><h4 id="h4-example"><a name="Example" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Example</h4><div class="flowchart">st=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op</div>', ' 2018年05月09日 ', 7),
  (10, 1, 6, '直击|滴滴顺风车业务全国停业整改一周', 123, '#### 　新浪科技讯 5月11日下午消息，在顺风车乘客遇害事件之后，滴滴今日宣布，顺风车平台业务全国停业整改一周。\n\n　　以下为滴滴公告全文：\n\n　　滴滴公布自查进展，顺风车平台业务全国停业整改一周\n\n　　我们在针对郑州顺风车案件的自查中发现，该接单账号归属于嫌疑人父亲，且正常通过了滴滴顺风车注册时的三证验真、犯罪背景筛查和接首单前须进行人脸识别等安全措施。嫌疑人系违规借用其父顺风车账号接单。\n\n　　同时，我们原有的夜间安全保障机制不合理，导致在该订单中针对夜间的人脸识别机制没有被触发。此外，嫌疑人在案发前，曾有一起言语性骚扰投诉记录，客服五次通话联系不上嫌疑人，由于判责规则不合理，后续未对投诉做妥善处理。\n\n　　鉴于以上问题，我们决定即日起做如下自查整改措施：\n\n　　1、自5月12日零点起，顺风车业务在全国范围内下线，停业自查整改一周；\n\n　　2、其他平台业务对全量司机全面审查，用一切手段清理平台上可能的人车不符情况；\n\n　　3、运营及客服体系全面整改。\n\n　　再次向受害者家人以及公众道歉！感谢大家对滴滴的监督和帮助，我们将及时公布详细的整改进展。\n\n　　滴滴出行\n\n　　2018年5月11日\n  \n![](/resources/upload/201805112322231QQ截图20180511231500.jpg)', '<h4 id="h4--5-11-"><a name="新浪科技讯 5月11日下午消息，在顺风车乘客遇害事件之后，滴滴今日宣布，顺风车平台业务全国停业整改一周。" class="reference-link"></a><span class="header-link octicon octicon-link"></span>　新浪科技讯 5月11日下午消息，在顺风车乘客遇害事件之后，滴滴今日宣布，顺风车平台业务全国停业整改一周。</h4><p>　　以下为滴滴公告全文：</p>\n<p>　　滴滴公布自查进展，顺风车平台业务全国停业整改一周</p>\n<p>　　我们在针对郑州顺风车案件的自查中发现，该接单账号归属于嫌疑人父亲，且正常通过了滴滴顺风车注册时的三证验真、犯罪背景筛查和接首单前须进行人脸识别等安全措施。嫌疑人系违规借用其父顺风车账号接单。</p>\n<p>　　同时，我们原有的夜间安全保障机制不合理，导致在该订单中针对夜间的人脸识别机制没有被触发。此外，嫌疑人在案发前，曾有一起言语性骚扰投诉记录，客服五次通话联系不上嫌疑人，由于判责规则不合理，后续未对投诉做妥善处理。</p>\n<p>　　鉴于以上问题，我们决定即日起做如下自查整改措施：</p>\n<p>　　1、自5月12日零点起，顺风车业务在全国范围内下线，停业自查整改一周；</p>\n<p>　　2、其他平台业务对全量司机全面审查，用一切手段清理平台上可能的人车不符情况；</p>\n<p>　　3、运营及客服体系全面整改。</p>\n<p>　　再次向受害者家人以及公众道歉！感谢大家对滴滴的监督和帮助，我们将及时公布详细的整改进展。</p>\n<p>　　滴滴出行</p>\n<p>　　2018年5月11日</p>\n<p><img src="/resources/upload/201805112322231QQ截图20180511231500.jpg" alt=""></p>\n', ' 2018年05月11日 ', 0);

-- --------------------------------------------------------

--
-- 表的结构 `response`
--

CREATE TABLE `response` (
  `re_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `qu_id` int(11) NOT NULL,
  `re_html` text NOT NULL,
  `re_md` text NOT NULL,
  `re_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `response`
--

INSERT INTO `response` (`re_id`, `u_id`, `qu_id`, `re_html`, `re_md`, `re_date`) VALUES
  (1, 1, 7, '<pre><code>                                #### Using FlowChart\n</code></pre><p>setting:</p>\n<pre><code>{\n    flowChart : true\n}\n</code></pre><h4 id="h4-example"><a name="Example" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Example</h4><div class="flowchart">st=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op</div>', '\n                                    #### Using FlowChart\n\nsetting:\n\n    {\n        flowChart : true\n    }\n\n#### Example\n\n```flow\nst=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op\n```', ' 2018年05月06日 '),
  (2, 1, 7, '<pre><code>                                #### Using FlowChart\n</code></pre><p>setting:</p>\n<pre><code>{\n    flowChart : true\n}\n</code></pre><h4 id="h4-example"><a name="Example" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Example</h4><div class="flowchart">st=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op</div>', '\n                                    #### Using FlowChart\n\nsetting:\n\n    {\n        flowChart : true\n    }\n\n#### Example\n\n```flow\nst=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op\n```', ' 2018年05月06日 '),
  (3, 1, 7, '<pre><code>                                #### Using FlowChart\n</code></pre><p>setting:</p>\n<pre><code>{\n    flowChart : true\n}\n</code></pre><h4 id="h4-example"><a name="Example" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Example</h4><div class="flowchart">st=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op</div>', '\n                                    #### Using FlowChart\n\nsetting:\n\n    {\n        flowChart : true\n    }\n\n#### Example\n\n```flow\nst=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op\n```', ' 2018年05月06日 '),
  (4, 1, 7, '<pre><code>                                #### Using FlowChart\n</code></pre><p>setting:</p>\n<pre><code>{\n    flowChart : true\n}\n</code></pre><h4 id="h4-example"><a name="Example" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Example</h4><div class="flowchart">st=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op</div>', '\n                                    #### Using FlowChart\n\nsetting:\n\n    {\n        flowChart : true\n    }\n\n#### Example\n\n```flow\nst=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op\n```', ' 2018年05月06日 '),
  (5, 2, 7, '<pre><code>                                #### Using FlowChart\n</code></pre><p>setting:</p>\n<pre><code>{\n    flowChart : true\n}\n</code></pre><h4 id="h4-example"><a name="Example" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Example</h4><div class="flowchart">st=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op</div>', '\n                                    #### Using FlowChart\n\nsetting:\n\n    {\n        flowChart : true\n    }\n\n#### Example\n\n```flow\nst=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op\n```', ' 2018年05月07日 '),
  (6, 1, 9, '<pre><code>                                #### Using FlowChart\n</code></pre><p>setting:</p>\n<pre><code>{\n    flowChart : true\n}\n</code></pre><h4 id="h4-example"><a name="Example" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Example</h4><div class="flowchart">st=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op</div>', '\n                                    #### Using FlowChart\n\nsetting:\n\n    {\n        flowChart : true\n    }\n\n#### Example\n\n```flow\nst=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op\n```', ' 2018年05月09日 '),
  (7, 2, 9, '<pre><code>                                #### Using FlowChart\n</code></pre><p>setting:</p>\n<pre><code>{\n    flowChart : true\n}\n</code></pre><h4 id="h4-example"><a name="Example" class="reference-link"></a><span class="header-link octicon octicon-link"></span>Example</h4><div class="flowchart">st=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op</div>', '\n                                    #### Using FlowChart\n\nsetting:\n\n    {\n        flowChart : true\n    }\n\n#### Example\n\n```flow\nst=>start: User login\nop=>operation: Operation\ncond=>condition: Successful Yes or No?\ne=>end: Into admin\n\nst->op->cond\ncond(yes)->e\ncond(no)->op\n```', ' 2018年05月11日 ');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL COMMENT '用户id',
  `u_email` varchar(30) NOT NULL COMMENT '邮箱',
  `u_password` varchar(30) NOT NULL COMMENT '密码',
  `u_name` varchar(30) NOT NULL COMMENT '姓名',
  `u_tel` varchar(11) NOT NULL COMMENT '电话',
  `u_age` int(11) NOT NULL COMMENT '年龄',
  `field` varchar(50) DEFAULT '无',
  `values` int(20) NOT NULL DEFAULT '0' COMMENT '金钱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`u_id`, `u_email`, `u_password`, `u_name`, `u_tel`, `u_age`, `field`, `values`) VALUES
  (1, '1106697389@qq.com', '123456', '广明鉴', '15690993629', 19, '人工智能', 11113),
  (2, '110669@qq.com', '123456', '张三', '15690993629', 18, '人工智能', 1230),
  (4, '1106697@qq.com', '123456', '赵刚', '15613655998', 19, '微积分', 0),
  (6, '11066973@qq.com', '123456', '陈一发', '12445577777', 30, '主播', 0),
  (7, '1106697855@qq.com', '123456', '哈哈', '15657799984', 19, '无', 0),
  (8, '110669735@qq.com', '123456', '篱笆', '14567879777', 45, '无', 0),
  (9, '110669735@qq.com', '123456', '篱笆', '14567879777', 45, '无', 0),
  (10, '110669873@qq.com', '123456', '速度', '48787788888', 16, '无', 0),
  (11, '110669873@qq.com', '123456', '速度', '48787788888', 16, '无', 0),
  (12, '110669739@qq.com', '123456', '类似的', '12456666666', 18, '无', 0),
  (13, '110669783@qq.com', '123456', '俩速度', '15690993629', 19, '无', 0),
  (14, '1106697883@qq.com', '123456', 'lidf', '15690993629', 19, '无', 0),
  (15, '11066978963@qq.com', '123456', 'lihhn', '15690993629', 19, '无', 0),
  (16, '1106697378@qq.com', '123456', '白起', '15690993629', 19, '无', 0),
  (20, '110668788@qq.com', '123456', '李志', '13644865766', 18, '无', 0),
  (21, '122123213@qq.com', '123456', '秦始皇', '13644865766', 30, '无', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`art_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cata_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qu_id`);

--
-- Indexes for table `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`re_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `article`
--
ALTER TABLE `article`
  MODIFY `art_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- 使用表AUTO_INCREMENT `category`
--
ALTER TABLE `category`
  MODIFY `cata_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识', AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `questions`
--
ALTER TABLE `questions`
  MODIFY `qu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动生成主键', AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `response`
--
ALTER TABLE `response`
  MODIFY `re_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id', AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
