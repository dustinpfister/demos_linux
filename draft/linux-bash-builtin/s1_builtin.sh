# exit function that calls exit builtin
exit(){
   code=${1:-1}
   echo "exiting with code $code"
   builtin exit ${code}
}
exit