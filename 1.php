<?php
    exec("git add * ",$output);
    exec('git commit -m "dfa"',$output);
//
    print_r($output);
