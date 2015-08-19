<?php
    exec("git add * ",$output);
    exec('git commit -m "dfa"',$output);
    exec('git push r master',$output);
//
    print_r($output);
