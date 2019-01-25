$(window).load(function(){
    var $navli=$("#head>li>a")
    $navli.click(function () {
        var $navli=$(this);
        if($navli.hasClass("colorBlue"))
            $navli.addClass("colorBlue")
        else if(!$navli.hasClass("colorBlue"))
        {
            var $hascolorBlue=$("#head>li>a.colorBlue")
            if($hascolorBlue!=null)
            {$hascolorBlue.removeClass("colorBlue")}
            $navli.addClass("colorBlue")
        }
    })
})()