<script>function searchDiabery() {
    jQuery.ajax({
        type: 'POST',
        url: '<?php echo path."/ajax/search_diaberry.php"; ?>',
        data: { q:$("#searchdiaberry").val(), hash: "<?php echo substr($_COOKIE["hash"],0,64);?>"}, 
        dataType: 'json', // ** ensure you add this line **
        success: function(data) {
            $("#searchdiaberry-wrapper").html("");
            out="";
            jQuery.each(data, function(index, item) {
                out+="<div class='panel'><div class=panel-body><a href='"+item.url+"'><h2>"+item.title+"</h2></a><p>"+item.descr+"</p></div></div>";
            });
            $("#searchdiaberry-wrapper").prepend(out);
        }
    });

}</script>
<br><h1><?php tt("Search");?></h1>
<input id=searchdiaberry autofocus class=form-control placeholder="<?php tt("Please enter a searchterm..."); ?>" onkeyup="searchDiabery();">
<div id=searchdiaberry-wrapper></div>

