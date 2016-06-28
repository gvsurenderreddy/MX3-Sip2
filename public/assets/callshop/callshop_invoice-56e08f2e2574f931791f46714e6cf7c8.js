function add_print(){$("a.print").live("click",function(e){e.preventDefault(),window.open($(this).attr("href"),"Invoice","menubar=no,width=660,height=520,toolbar=no")})}function add_update(e){$("input.update").live("click",function(t){t.preventDefault();var n=$(this).closest("tr.slide").prev(),a=n.find("a.edit");$.ajax({url:e,cache:!1,type:"post",data:$(n).next().find("form").serialize(),beforeSend:function(){a.addClass("loading")},success:function(){a.removeClass("loading"),$(n).next().remove(),window.location.reload(!0)}})})}function add_cancel(){$("input.cancel").live("click",function(){$(this).closest("tr.slide").remove()})}function add_edit(e){$("a.edit").live("click",function(t){t.preventDefault();var n=$(this),a=$(this).closest("tr.booth");0==a.next(".slide").length?$.ajax({url:e,cache:!1,data:"invoice_id="+$(a).attr("id"),beforeSend:function(){n.removeClass("edit").addClass("preloader")},success:function(e){n.removeClass("preloader").addClass("edit"),$(e).insertAfter(a)}}):a.next(".slide").remove()})}function add_full_received(){$("#full_payment_received").live("click",function(){$("#pending_payment").attr("value",$("#invoice_total").val())})}function add_partial_received(){$("#partial_payment_received").live("click",function(){$("#pending_payment").attr("value",$("#invoice_current").val())})}function highlight_rows(){$("table tbody tr").each(function(e,t){$(t).mouseover(function(){$(this).addClass("over")}),$(t).mouseout(function(){$(this).removeClass("over")})})}function sortable_headers(e,t,n,a){$(e).find(".sort-col").live("click",function(e){e.preventDefault();var i=$(this),o={};i.parent().parent().children().each(function(e,t){$(t)[0]!=$(i.parent())[0]&&$(t).removeClass("sorted-on-asc sorted-on-desc")}),i.parent().hasClass("sorted-on-asc")?(i.parent().removeClass("sorted-on-asc").addClass("sorted-on-desc"),o=$.extend({reversed:!0},o)):i.parent().removeClass("sorted-on-desc").addClass("sorted-on-asc"),$.ajax({url:t,cache:!1,type:"GET",contentType:"application/json; charset=utf-8",data:{order_by:i.attr("data-sort-type"),order_dir:o.reversed?"DESC":"ASC"},beforeSend:function(){$(".booth, .slide").remove()},success:function(e){update_invoices(e,n,a)}})})}function pagination_links(e,t,n,a){$(e).find(".pagination_link").live("click",function(e){e.preventDefault();var i=$(this),o=i.attr("href").split("=",2)[1];$.ajax({url:t,cache:!1,type:"GET",contentType:"application/json; charset=utf-8",data:{page:o},beforeSend:function(){$(".booth, .slide").remove()},success:function(e){update_invoices(e,n,a),update_pagination(e,t)}})})}function update_invoices(e,t,n){for(var a,i,o="",s=JSON.parse(e).invoices,c=0;c<s.length;c++){a=s[c],o="";for(var r=0;r<cols.length;r++)i=null==a[cols[r]]?"":a[cols[r]],o=o+"<td class='"+cols[r]+"'>"+i+"</td>\n";o+="<td><a class='print' href='"+t+"?invoice_id="+a.id+"'>&nbsp;</a></td>",o+="<td><div class='btn'><a class='edit' href='"+n+"?invoice_id="+a.id+"'>&nbsp;</a></div></td>",$("#invoices_list").append("<tr id='"+a.id+"' class='booth'>"+o+"</tr>")}highlight_rows()}function update_pagination(e,t){$(".page_select").html("");for(var n,a=e.pages,i=0;i<a.length;i++)n=a[i],null!=n[1]?$(".page_select").append("<a class='pagination_link' href='"+t+"?page="+n[1]+"'>"+n[0]+"</a>"):$(".page_select").append("<span class='current'>"+n[0]+"</span>")}var cols=["issue_date","amount","status","comment","user_type"];