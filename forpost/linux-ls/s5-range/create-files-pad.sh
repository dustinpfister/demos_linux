c=0
while [ $c -le 10 ]
do
  d=$(printf "%03d" $c)
  fn="file${d}.txt" 
  echo $fn
  echo "This is file ${fn}" > $fn
  c=$(( $c + 1 ))
done