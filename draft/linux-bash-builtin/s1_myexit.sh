# exit function that calls exit builtin
my_exit(){
   code=${1:-1}
   echo "exiting with code $code"
   exit ${code}
}
my_exit 0