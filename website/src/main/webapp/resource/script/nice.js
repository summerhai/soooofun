/**
 * Created by Administrator on 2017/11/10 0010.
 */

function niceClick() {
    console.log("调用niceClick")
    $(".nice").click(function () {
        console.log("调用niceClick11")
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
}


/**
 * @author hanlaiming
 * @param type 0表示是段子，1表示是评论
 * @param itemId 段子或评论的id
 * @param userId 操作者的id
 * 当用户对“未进行点赞的评论或段子”进行点赞时的方法
 */
function addNice(type, userId, itemId) {
    //1.对页面的点赞数字进行加一
    var niceNum = $("#nice_span_" + itemId).text();
    // console.log("num:"+niceNum);
    niceNum++;
    $("#nice_" + itemId).css("color", "#C20C0C");
    $("#nice_span_" + itemId).text(niceNum);
    $("#nice_" + itemId).data("hasniced", true);
    //2.同时将点赞操作传给后台
    $.ajax({
        url: CONTEXTPATH + '/nice/add',
        type: 'POST',
        data: {
            "userId": userId,
            "itemId": itemId,
            "niceType": type
        },
        success: function (data) {
            console.log("点赞成功");
            console.log(data);
            //此处已经更新后台点赞数成功，不做任何处理
        },
        error: function (data) {
            layer.msg("网络异常！", {icon: 5});
        }
    });
}
/**
 * @author hanlaiming
 * @param type 0表示是段子，1表示是评论
 * @param nicedId 段子或评论的id
 * @param userId 操作者的id
 * 当用户对“已进行点赞的评论或段子”取消点赞时的方法
 */
function cancelNice(type, userId, nicedId) {
    //1.对页面的点赞数字进行减一
    var niceNum = $("#nice_span_" + nicedId).text();
    // console.log("num:"+niceNum);
    if (niceNum == 0) {
        niceNum = 1;
    }
    niceNum--;
    $("#nice_" + nicedId).css("color", "#9b8878");
    $("#nice_span_" + nicedId).text(niceNum);
    $("#nice_" + nicedId).data("hasniced", false);
    //2.同时将取消点赞操作传给后台
    $.ajax({
        url: CONTEXTPATH + '/nice/cancel',
        type: 'POST',
        data: {
            "userId": userId,
            "nicedId": nicedId,
            "niceType": type
        },
        success: function (data) {
            console.log("取消点赞成功")
            console.log(data);
            //此处已经更新后台取消点赞数成功，不做任何处理

        },
        error: function (data) {
            layer.msg("网络异常！", {icon: 5});
        }
    });
}
