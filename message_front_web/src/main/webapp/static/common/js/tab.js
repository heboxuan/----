$.fn.extend({tab:function(s){return this.each(function(){var t=$(this),e=$.extend({type:"click"},s),a=$(".tab-tags "+(e.tagName?e.tagName:"a"),t),i=$(".tab-ctns .tab-box",t);a.bind(e.type,function(t){var e=$(this),s=a.index(e);t.preventDefault(),e.hasClass("active")||(a.removeClass("active"),i.hide(),e.addClass("active"),i.eq(s).show())})})},player:function(s){return this.each(function(){var t=$(this),e=$.extend({type:"click"},s),a=$(".player-ctrol a",t),i=$("http://liuyan.people.com.cn/static/common/js/.player-ctn .item",t);a.bind(e.type,function(t){var e=$(this),s=a.index(e);t.preventDefault(),e.hasClass("active")||(a.removeClass("active"),e.addClass("active"),i.hide(),i.eq(s).show())}),i.eq(0).show()})},slider:function(h){var o={step:124,view:4};return this.each(function(){var t=$(this),e=$.extend(o,{total:$("li",$(this)).length-o.view+1},h),s=$(".next-btn",t),a=$(".prev-btn",t),i=$("ul",t),n=!0,c=0,l=1;i.css({width:e.step*$("li",$(this)).length+100}),s.on("click",function(){n&&l<e.total&&(n=!1,i.animate({left:c-e.step},200,function(){n=!0,c-=e.step,l+=1})),l==e.total?$(this).addClass("disabled"):a.hasClass("disabled")&&a.removeClass("disabled")}),a.on("click",function(){n&&c<0&&(n=!1,i.animate({left:c+e.step},200,function(){n=!0,c+=e.step,l-=1})),1==l?$(this).addClass("disabled"):s.hasClass("disabled")&&s.removeClass("disabled")})})},Fixed:function(t){var e=!(!$.browser.msie||6!=$.browser.version.match(/\d/)[0]),s=$("html");return e&&"fixed"!==s.css("backgroundAttachment")&&s.css("backgroundAttachment","fixed").css("backgroundImage","url(about:blank)"),this.each(function(){var t=$(this);e&&(t.css("position","absolute"),$(window).on("scroll",function(){t.css({top:$(window).scrollTop()+$(window).height()-t.height()-20})}))})},serializeObject:function(){var t={};return jQuery.each(this.serializeArray(),function(){void 0!==t[this.name]?(t[this.name].push&&(t[this.name]=[t[this.name]]),t[this.name].push(this.value||"")):t[this.name]=this.value||""}),t}});