#!/usr/bin/node
// parse options
var prop = process.argv[2],
len = process.argv.length;
args = process.argv.slice(3, len);
// log
var log = function(num){
    process.stdout.write(String(num) + '\n');
};
if(prop){
   var MathProp = Math[prop];
   // a Math function
   if(typeof MathProp === 'function'){
       log(MathProp.apply(null, args));
   }
   // a Math propery
   if(typeof MathProp === 'number'){
       log(MathProp);
   }
   // some of my own
   if(typeof MathProp === 'undefined'){
      // multiply two numbers
      if(prop === 'multi'){
          log(args[0] * args[1]);
      }
      // distance between two points
      if(prop === 'dist'){
          var a = Math.pow(args[0] - args[2], 2)
          b = Math.pow(args[1] - args[3], 2);
          log(Math.sqrt( a + b));
      }
      // eval an expression
      if(prop === 'eval'){
          log(eval(args[0]));
      }
   }

}