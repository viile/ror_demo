<?php
function e($cmd){
    exec($cmd,$output);
    print_r($output);
}
for($i=300;$i>0;$i--){
    $t = rand(1,10);
    for($m=0;$m<=$t;$m++){
	    $fl = fopen("/var/www/html/ror/tmp/1","w");
	    $txt = date("Y-m-d H:i:s",time())." : ".rand(10000,99999)."\n";
	    fwrite($fl,$txt);
	    fclose($fl);
            sleep(1);
	    e("git add * ");
	    e('git commit -m '.rand(123123,123412378));
	    e('git push r master');
	    sleep(2);
    }
    $o = date("m/d/Y",time()-24*60*60);
    e("date -s ".$o);
}