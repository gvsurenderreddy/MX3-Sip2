function log(e){mor_functions.log(e)}function show_hide_menus(){var e=$j.cookie("hide_menus");"hide"==e?$j.cookie("hide_menus","show",{path:"/"}):$j.cookie("hide_menus","hide",{path:"/"}),read_show_hide_menus()}function show_hide_menus2(e){"0"==e?$j.cookie("hide_menus","show",{path:"/"}):$j.cookie("hide_menus","hide",{path:"/"}),read_show_hide_menus()}function read_show_hide_menus(){var e=$j.cookie("hide_menus");$j("#slide_1").attr("style","width: 8px"),"hide"==e?($j("#slide_1").attr("id","slide"),$j(".application_side_expand").show(),$j(".application_side_contract").hide(),$j("#page_header").hide(),$j("#left_menu_spacer").hide(),$j(".header_spacer").hide(),$j("#slide").hover(function(){$j(this).animate({width:"220px",display:"table-cell"},0)},function(){$j(this).animate({width:"8px"},0)})):($j("#slide").attr("id","slide_1"),$j(".application_side_expand").hide(),$j(".application_side_contract").show(),$j("#slide_1").attr("style","width: 170px"),$j(".left_menu").show(),$j("#page_header").show(),$j("#left_menu_spacer").show(),$j(".header_spacer").show(),$j("#slide_1").hover(function(){$j(this).attr("width","170px"),$j(this).attr("style","display: table-cell")},function(){$j(this).removeAttr("style"),$j(this).setAttr("style","width: 170px")}))}var mor_functions={showAJAXLoader:function(){$j("#spinner").show()},hideAJAXLoader:function(){$j("#spinner").hide()},log:function(e){"undefined"!=typeof console&&null!=console&&console.log(e)},populateSelect:function(e,i,o){var t=[];$j.ajax({url:e,complete:mor_functions.hideAJAXLoader,beforeSend:function(){i.unbind("click"),mor_functions.showAJAXLoader()},success:function(e){$j.each(e,function(e,i){var n="<option value='"+i[0]+"'";o==i[0]&&(n+="selected='selected'"),n+=">"+i[1]+"</option>",t.push(n)}),i.html(t.join(""))},error:function(){},dataType:"json"})}};