#!/usr/bin/awk -f

BEGIN { 
    step=0
    type=0 # 1=oobee, 2=
    OFS=","
    }

step == 2 && record < records {
    if (type==1) 
        typestr="out-of-bag error"
    else 
        typestr="classification error"
    print typestr,$1,$NF; 
    record++ 
}
step == 1 { records=NF-1; step=2; record=0 }
/Confusion matrix/ { step=1; type++ }

