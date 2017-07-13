<?php 
include("lib/libnav.php");
?>
<nav class="navbar navbar-default navbar-fixed" id=topnav>
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" onclick="hometoggle();" href="#">Diaberry</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php tt("Dishes");?> <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="?site=dishes&subsite=new"><?php tt("add new");?></a></li>
            <li><a href="?site=dishes&subsite=my-dishes"><?php tt("my dishes");?></a></li>
          </ul>
        </li>

         <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php tt("Tools");?><span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="<?php echo get_nav(array("site"=>"alarm"));?>"><?php tt("Alarm");?></a></li>
            <li><a href="<?php echo get_nav(array("site"=>"calculator"));?>"><?php tt("Calculator");?></a></li>
            <li><a href="<?php echo get_nav(array("site"=>"dictionary"));?>"><?php tt("Online Dictionary");?></a></li>
            <li><a href="<?php echo get_nav(array("site"=>"my-dictionary"));?>"><?php tt("My Dictionary");?></a></li>
          </ul>
        </li>
        <li><a href="<?php echo get_nav(array("site"=>"diary"));?>"><?php tt("Diary");?></a></li>
        <li><a href="<?php echo get_nav(array("site"=>"help"));?>"><?php tt("Help");?></a></li>
        <li><a href="<?php echo get_nav(array("site"=>"search"));?>"><i class="fa fa-search" aria-hidden="true"></i>
</a></li>
      </ul>
    
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php tt("Account");?> <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="?site=settings&subsite=general"><?php tt("General settings");?></a></li>
            <li><a href="?site=settings&subsite=security"><?php tt("Security settings");?></a></li>
            <li role="separator" class="divider"></li>
            <li><a href="?action=logout&site=logout">Logout</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<div style=height:35px;></div>

<script>
hometogglei=0;
function hometoggle() {
    hometogglei++;
    if(hometogglei>8) {
        $("body").append("<style>* {background:url('https://media4.s-nbcnews.com/j/msnbc/components/video/201609/a_ov_pepe_160928.nbcnews-ux-1080-600.jpg')  !important;background-size:contain !important;}</style>");
    }
}
</script>





