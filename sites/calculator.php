<br><h1><?php tt("Calculator");?></h1><br>
<h3><?php tt("Convert From KH (g / 100g kCal)");?></h3>
<div class=row>
    <div class=col-md-2>
        <input style=margin-top:-20px; class=form-control placeholder=KH id=kh-val>
    </div>
    <div class=col-md-2>
        <button onclick="$('#ke-val').val( $('#kh-val').val()*0.1 );$('#be-val').val( $('#kh-val').val()/12 ); $('#calc-kh').html($('#kh-val').val()+' / 1');  $('#calc-be').html($('#kh-val').val()+' / 12'); $('#calc-ke').html($('#kh-val').val()+' / 10');" class="btn btn-default btn-raised"><?php tt("Convert from KH");?></button>
    </div>
    <div class="col-md-8" style="text-align:right">
       <div class=well style=display:inline> <?php tt("Calculation");?>: <span id=calc-kh> * 12</span></div>
    </div>
</div><br><h3><?php tt("Convert from BE");?></h3>
<div class=row>
    <div class=col-md-2>
        <input style=margin-top:-20px; class=form-control placeholder=BE id=be-val>
    </div>
    <div class=col-md-2>
        <button onclick="$('#ke-val').val( $('#be-val').val()*1.2 );$('#kh-val').val( $('#be-val').val()*12 ); $('#calc-kh').html($('#be-val').val()+' * 12'); $('#calc-be').html($('#be-val').val()+' * 1');$('#calc-ke').html($('#be-val').val()+' * 1.2'); " class="btn btn-default btn-raised"><?php tt("Convert from BE");?></button>
    </div>
    <div class="col-md-8" style="text-align:right">
       <div class=well style=display:inline> <?php tt("Calculation");?>: <span id=calc-be>* 0.083</span></div>
    </div>
</div><br>
<h3><?php tt("Convert from KE");?></h3>
<div class=row>
    <div class=col-md-2>
        <input style=margin-top:-20px; class=form-control placeholder=KE id=ke-val>
    </div>
    <div class=col-md-2>
        <button onclick="$('#be-val').val( $('#ke-val').val()/1.2 );$('#kh-val').val( $('#ke-val').val()*10 );  $('#calc-kh').html($('#ke-val').val()+' * 10'); $('#calc-be').html($('#ke-val').val()+' / 1.2'); $('#calc-ke').html($('#ke-val').val()+' * 1'); " class="btn btn-default btn-raised"><?php tt("Convert from KE");?></button>
    </div>
    <div class="col-md-8" style="text-align:right">
       <div class=well style=display:inline> <?php tt("Calculation");?>: <span id=calc-ke>* 0.1</span></div>
    </div>
</div>

<script>
function showCalculation(ke) {
}
</script>
