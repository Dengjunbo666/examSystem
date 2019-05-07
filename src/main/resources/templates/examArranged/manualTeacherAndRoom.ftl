<html>
<#include "../common/header.ftl">


<body>
<#if userType=="监考教师">
    <div id="wrapper" class="toggled">
        <#include  "../common/navTeacher.ftl">
    </div>
</#if>

<#if userType=="管理员">
    <div id="wrapper" class="toggled">
        <#include  "../common/navAdmin.ftl">
    </div>
</#if>

<#if userType=="学生">
    <div id="wrapper" class="toggled">
        <#include  "../common/navStudent.ftl">
    </div>
</#if>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    监考教师以及考室<small>&nbsp;&nbsp;&nbsp;${userType}@${userName}</small>
                </h1>
            </div>
        </div>
    </div>
</div>


<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <form name="modifyUser" id="modifyUser" role="form">

                <div class="form-group">
                    <label for="exampleInputEmail1">昵称</label><input type="text" class="form-control" style="width: 40%;" name="nickName" value="${userName}" />
                </div>

                <div class="container">
                    <div class="row clearfix">
                        <div class="col-md-12 column">
                            <button type="button" class="btn btn-lg btn-primary" id="modify">提交修改</button>
                        </div>
                    </div>
                </div>

            </form>
        </div>
    </div>
</div>
</body>



</html>
<script>
$('#modify').click(function(event){
        event.preventDefault();
        var formData= new FormData(document.getElementById("modifyUser"));

        $.ajax({
            type:"post",
            url:"/exam/user/modifyUser",
            data:formData,
            contentType: false,
            processData: false,
            dataType:"json",
            success: function (data) {
                    window.location.reload();
            }
        });
    });
</script>
