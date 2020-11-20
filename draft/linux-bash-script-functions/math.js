#!/usr/bin/node
var prop = process.argv[2],
len = process.argv.length;
args = process.argv.slice(3, len);

if(prop){
   var MathProp = Math[prop];

   if(typeof MathProp === 'function'){
       var result = String(MathProp.apply(null, args));
       process.stdout.write(result + '\n');
   }

   if(typeof MathProp === 'number'){
       process.stdout.write(String(MathProp) + '\n');
   }
}