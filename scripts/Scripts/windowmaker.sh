REC=$(./xrectsel) || exit 1
IFS=' ' read -r W H X Y <<< "$REC"
    let W=$(( $W / 7 ))
    let H=$(( $H / 14 ))
    urxvt -geometry $W"x"$H"+"$X"+"$Y 
 
