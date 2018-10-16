#! /usr/bin/awk -f
BEGIN{
  FS=" "
  len=0
  i=1
  j=1
}
($1==1){
  firstIntegers[j]=int($2)
  len=length(firstIntegers[j])
  Text=substr($2,len+1,4)
  Text_array[Text]=$2
  j+=1
}
($1==2){
  Text2=substr($2,1,4)
  Text_array[Text2]=Text_array[Text2]""substr($2,5,3)
}
END{
  for( a in Text_array)
    print Text_array[a]
  }
