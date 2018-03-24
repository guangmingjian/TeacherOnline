<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String contextPath = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>BootstrapValidator demo</title>
    <meta charset="utf-8">
	<link rel="stylesheet" href="static/bootstrap/css/bootstrap.css" />
	<link rel="stylesheet" href="static/bootstrap/css/bootstrapValidator.css" />
	
    <script type="text/javascript" src="static/bootstrap/js/jquery.min.js" ></script>
    <script type="text/javascript" src="static/bootstrap/js/bootstrap.min.js" ></script>
     <script type="text/javascript" src="static/bootstrap/js/jquery.js" ></script>
    <script type="text/javascript" src="static/bootstrap/js/bootstrapValidator.js" ></script>
   
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
  </head>
  
  <body style="background: url(static/images/login_bgx.gif);">
  <div class="top form-group" style="margin-top:8px"> <!--头部布局-->
		 <ul class="list-inline top_list text-right"  style="padding-right: 10px;" >
              <li > <a href="/index"> <span class="glyphicon glyphicon-home" style="color: #333;">首页 </span></a></li>
              <li ><a href="/login"> <span class="glyphicon glyphicon-user" style="color: #333;">登录 </span></a></li>
              <li ><a href="/reg"> <span class="glyphicon glyphicon-th-large" style="color: #333;">注册 </span></a></li>
            </ul>
		</div><!--头部布局结束-->
   <div class="container">
        <div class="row">
            <!-- form: -->
            <section>
                <div class="page-header text-center">
                    <h1>欢迎注册</h1>
                </div>

                <div class="col-lg-8 col-lg-offset-2">
                    <form id="defaultForm" method="post" action="#" class="form-horizontal">
                        <fieldset>
                            <legend>注册信息</legend>

                           

							<div class="form-group">
                                <label class="col-lg-3 control-label" id="userName ">用户名：</label>
                                <div class="col-lg-5">
                                    <input type="text" class="form-control" name="userid"  placeholder="1106697389@qq.com"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-3 control-label">密码：</label>
                                <div class="col-lg-5">
                                    <input type="password" class="form-control" name="password" placeholder="123456"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-3 control-label">重复密码：</label>
                                <div class="col-lg-5">
                                    <input type="password" class="form-control" name="confirmPassword" placeholder="123456" />
                                </div>
                            </div>
                            
                               

           
                            <div class="form-group">
                                <div class="col-lg-5 col-lg-offset-4">
                                    <div class="checkbox">
                                        <input type="checkbox" name="acceptTerms" />我已阅读并同意此<span class="text-danger">《协议》</span>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
						
					

                        <fieldset>
                            <legend>基本信息填写</legend>
                            
                            <div class="form-group">
                                <label class="col-lg-3 control-label">身份：</label>
                                <div class="col-lg-5">
                                    <select class="form-control" name="status">
                           
                                        <option value="fr">教师</option>
                                        <option value="de">学生</option>
                                        
                                    </select>
                                </div>
                            </div>
                             <div class="form-group">
                                <label class="col-lg-3 control-label">姓名：</label>
                                <div class="col-lg-5">
                                    <input type="text" class="form-control" name="username"  placeholder="李斯"/>
                                </div>
                            </div>

                      

         

                            <div class="form-group">
                                <label class="col-lg-3 control-label">电话：</label>
                                <div class="col-lg-5">
                                    <input type="text" class="form-control" name="tel"  placeholder="13644865766"/>
                                </div>
                            </div>
                            
							<div class="form-group">
                                <label class="col-lg-3 control-label">年龄：</label>
                                <div class="col-lg-5">
                                    <input type="text" class="form-control" name="age" placeholder="18" />
                                </div>
                          </div>
                          

                        <div class="form-group">
                            <div class="col-lg-2 col-lg-offset-4">
                                <button  type="submit" class="btn btn-primary btn-sm btn-block" >注册</button>
                            </div>
                        </div>
                        </fieldset>
                    </form>
                </div>
            </section>
            <!-- :form -->
        </div>
    </div>

<script type="text/javascript">
	$(document).ready(function() {
		$('#defaultForm').bootstrapValidator({
			message: 'This value is not valid',
			feedbackIcons: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			fields: {
				userid: {
					validators: {
						notEmpty: {
							message: '不能为空'
						},
						emailAddress: {
							message: '请输入正确的邮箱地址'
						},

//						remote: {
//							url: "UserAjaxSer", //UserAjaxSer
//							type: "Post",
//							message: "用户名已存在",
//
//							data: {
//								userid: function() {
//									return $("#userName").val();
//								},
//
//							}
//						}

					}
				},

				acceptTerms: {
					validators: {
						notEmpty: {
							message: '接受项目条款后方可注册'
						}
					}
				},
				username: {
					validators: {
						notEmpty: {
							message: '不能为空'
						}
					}
				},
				country: {
					validators: {
						notEmpty: {
							message: '身份选择不能为空'
						}
					}
				},
				email: {
					validators: {
						notEmpty: {
							message: '不能为空'
						},
						emailAddress: {
							message: '请输入正确的邮箱地址'
						}
					}
				},
				tel: {
					validators: {
						stringLength: {
							min: 11,
							max: 11,
							message: '请输入合法的电话号码'
						},
					}
				},

				password: {
					validators: {
						notEmpty: {
							message: '不能为空'
						},
						identical: {
							field: 'confirmPassword',
							message: '两次密码输入不一致'
						}
					}
				},
				confirmPassword: {
					validators: {
						notEmpty: {
							message: '不能为空'
						},
						identical: {
							field: 'password',
							message: '两次密码输入不一致'
						}
					}
				},
				userclass: {
					validators: {
						notEmpty: {
							message: '不能为空'
						},

					}
				},
				grade: {
					validators: {
						notEmpty: {
							message: '不能为空'
						},

					}
				},
				age: {
					validators: {
						lessThan: {
							value: 100,
							inclusive: true,
							message: '年龄必须大于10小于100'
						},
						greaterThan: {
							value: 10,
							inclusive: false,
							message: '年龄必须大于10小于100'
						}
					}
				}
			}
		});
	});
</script>
</body>

</html>