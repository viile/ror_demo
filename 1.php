<?php
    exec("git add * ",$output);
    exec("git commit -m 2",$output);
    print_r($output);
