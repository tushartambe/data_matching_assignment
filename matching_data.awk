#! /usr/bin/awk

BEGIN{
  FS=" "
}
($1==1){
  numof1[NR]=int($2)
  len=length(numof1[NR])
  arrayof1[NR]=substr($2,len+1,4)
}
($1==2){
  array2[NR]=$2
  arrayof2[NR]=substr($2,1,4)
}
END{
  for(i=1;i<=length(arrayof1);i++){
    for(j=1;j<=length(arrayof2);j++){
      if(arrayof1[i]==arrayof2[j]){
        print numof1[i]""array2[j]
      }
    }
  }
}
