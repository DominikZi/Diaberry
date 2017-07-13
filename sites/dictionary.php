<script>function searchfooddb() {
    jQuery.ajax({
        type: 'POST',
        url: '<?php echo path."/ajax/food_database.php"; ?>',
        data: { q:$("#searchfood").val()}, 
        dataType: 'json', // ** ensure you add this line **
        success: function(data) {
            $("#searchfood-wrapper").html();
            out="";
            jQuery.each(data, function(index, item) {
                out+="<div class='panel'><div class=panel-heading>"+item.title+"</div><div class=panel-body><table class='table table-striped'>";i=0;
                out+="<tr><td><?php tt("Food Score");?></td><td>"+item.details[i]["nutrValue"]+" "+item.details[i]["units"]+"</td></tr>";i++;
                out+="<tr><td><?php tt("Calories");?></td><td>"+item.details[i]["nutrValue"]+" "+item.details[i]["units"]+"</td></tr>";i++;
                out+="<tr><td><?php tt("Fat");?></td><td>"+item.details[i]["nutrValue"]+" "+item.details[i]["units"]+"</td></tr>";i++;
                out+="<tr><td><?php tt("Carbs");?></td><td>"+item.details[i]["nutrValue"]+" "+item.details[i]["units"]+"</td></tr>";i++;
                out+="<tr><td><?php tt("Protein");?></td><td>"+item.details[i]["nutrValue"]+" "+item.details[i]["units"]+"</td></tr>";i++;

                out+="</table></div></div>";
            });
            $("#searchfood-wrapper").prepend(out);
        }
    });

}</script>
<br><h1><?php tt("Dictionary");?></h1>
<input id=searchfood autofocus class=form-control placeholder="<?php tt("Please enter a searchterm..."); ?>" onkeyup="searchfooddb();">
<div id=searchfood-wrapper></div>

