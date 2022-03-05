c=0
while [ $c -le 5 ]
do
  fn="file${c}.txt" 
  echo $fn
  echo "This is file ${fn}" > $fn
  c=$(( $c + 1 ))
done