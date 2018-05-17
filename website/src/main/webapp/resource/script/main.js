
/**
 * Created by mingyue on 2017/11/3.
 */

$(function () {
    home();
    niceClick();
    $("#nice_f_0URnE4d10snVRqnXtaW").click(function () {
        console.log("调用niceClick222")
        var hasNiced = $(this).data("hasniced");
        var type = $(this).data("type");
        var userId = $(this).data("userid");
        var itemId = $(this).data("itemid");
        console.log("hasNiced:" + hasNiced + ",type:" + type + ",userId:" + userId
            + ",itemId:" + itemId);
        // if (hasNiced) {
        //     cancelNice(type, userId, itemId);
        // } else {
        //     addNice(type, userId, itemId);
        // }
    })
})


function getPage(pageNum) {
    $.ajax({
        url: '/funItem/page/'+pageNum,
        type: 'GET',
        data: {},
        success: function (data) {
            console.log(data);
            // $("#funItemContent").html("");
            $("#funItemContent").empty();
            // console.log("is empty????")
            //此处循环将data中的内容添加到主页中，建议将一个
            $("#funItemTmpl").tmpl(data).appendTo('#funItemContent');
            //回到顶部
            window.scrollTo(0,0);
        },
        error: function (data) {
            console.log("hahah")
            // layer.msg("登录超时，请检查网络连接", {icon: 5});
        }
    });
}

function home() {
    $.ajax({
        url: '/funItem/home',
        type: 'GET',
        data: {},
        success: function (data) {
            console.log(data);
            $("#funItemContent").html("");
            //此处循环将data中的内容添加到主页中，建议将一个
            $("#funItemTmpl").tmpl(data).appendTo('#funItemContent');
            //调用分页
            layui.use(['laypage', 'layer'], function() {
                var laypage = layui.laypage
                    , layer = layui.layer;
                laypage.render({
                    elem: 'page',//分页组件的id
                    count: data.totalNum,//数据总数
                    limit: 20,//每页显示条数，和count计算出页数
                    curr: data.currentPage,//当前是第几页
                    jump: function(obj,first){//切换页数时调用什么
                        if(!first){
                            getPage(obj.curr);
                        }
                    }
                });
            });
        },
        error: function (data) {
            layer.msg("登录超时，请检查网络连接", {icon: 5});
        }
    });
}

//
// function showAll() {
//     var content = document.getElementById("content");
//     var text = content.innerHTML;
//     var newContent = document.createElement("span");
//     var btn = document.createElement("span");
//     newContent.innerHTML = text.substring(0,100);
//     btn.innerHTML = text.length > 100 ? ". . .显示全部" : "";
//     btn.href = "javascript:void(0);";
//     btn.onclick = function() {
//         if(btn.innerHTML == ". . .显示全部") {
//             btn.innerHTML = " 收起";
//             newContent.innerHTML = text;
//         }else {
//             btn.innerHTML = ". . .显示全部";
//             newContent.innerHTML = text.substring(0,100);
//         }
//     }
//     content.innerHTML = "";
//     content.appendChild(newContent);
//     content.appendChild(btn);
// }
//
// function comment() {
//     var i=0;
//     $(".single-share .comment").click(function() {
//         var comment = $(this).data("comment");
//         // console.log(comment);
//         // var commentId = $("#comment_" + comment).data("commentid");
//         // console.log(commentId);
//         i++;
//         if(i%2 != 0) {
//             $("#comment_" + comment).show();
//             $('#comment_icon1_' + comment).css('display','none');
//             $('#comment_icon2_' + comment).css('display','inline-block');
//         } else {
//             $("#comment_" + comment).hide();
//             $('#comment_icon1_' + comment).css('display','inline-block');
//             $('#comment_icon2_' + comment).css('display','none');
//
//         }
//
//     });
// }
// function selectList() {
//     $('.select-default').click(function () {
//         $('.select-list').css('display','block');
//     });
//     $('.select-nice').click(function() {
//         $('.select-list').css('display','block');
//     });
//     $('.sort_nice').click(function () {
//         $('.select-list').css('display','none');
//         $('.select-nice').css('display','block');
//         $('.select-default').css('display','none');
//     });
//     $('.sort_default').click(function() {
//         $('.select-list').css('display','none');
//         $('.select-nice').css('display','none');
//         $('.select-default').css('display','block');
//     })
// }
