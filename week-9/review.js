// Dr Evil's Cipher

// Pseudocode:
//
// input: an encrypted message, a String
// output: a String
// step 1: create a variable to store the result.
// step 2: create a variable that points to an all-lower-case Array of the input.
// step 3: iterate over that array, adding the corresponding decrypted character
//         to the result array.
// step 4: return the result array, with all elements merged together as a single string.

// Initial solution:

// function drEvilsCipher(codedMessage) {
//   var decodedMessage = [];
//   var crypto = codedMessage.toLowerCase().split("");
//
//   for(var char in crypto) {
//     if (num >= 101 && num <= 126) {
//       decodedMessage.push(String.fromCharCode(num - 4));
//     } else if (num >= 97 && num <= 100) {
//       decodedMessage.push(String.fromCharCode(num + 22));
//     } else if (['@', '#', '$', '%', '^', '&', '*'].indexOf(crypto[char]) > -1) { //handles spaces
//       decodedMessage.push(' ');
//     } else {
//       decodedMessage.push(crypto[char]);
//     }
//   }
//
//   return decodedMessage.join("");
// }

// Refactored solution

function drEvilsCipher(codedMessage) {
  var decodedMessage = [];
  var crypto = codedMessage.toLowerCase().split("");

  for(var char in crypto) {
    var num = crypto[char].charCodeAt();
    if (num >= 101 && num <= 126) {
      decodedMessage.push(String.fromCharCode(num - 4));
    } else if (num >= 97 && num <= 100) {
      decodedMessage.push(String.fromCharCode(num + 22));
    } else if (['@', '#', '$', '%', '^', '&', '*'].indexOf(crypto[char]) > -1) {
      decodedMessage.push(' ');
    } else {
      decodedMessage.push(crypto[char]);
    }
  }

  return decodedMessage.join("");
}

console.log(drEvilsCipher("m^aerx%e&gsoi!"));
console.log(drEvilsCipher("m^aerx%e&gsoi!") === "i want a coke!");
console.log(drEvilsCipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep" +
            "#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&j" +
            "empyvi.&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&" +
            "asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l"));
console.log(drEvilsCipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev."));
console.log(drEvilsCipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs." +
            "@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asy" +
            "ph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgs" +
            "rwspefpi."));
console.log(drEvilsCipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?"));

// Reflection

// What concepts did you solidify in working on this challenge?
// JavaScript syntax is less familiar to me.  Hurray for mulitple languages.  I
// suppose it is a good idea to learn them. String.fromCharCode(Integer) and
// string.charCodeAt() are new functions for me.
//
// What was the most difficult part of this challenge?
// Translating Ruby to JavaScript was the most difficult part because I am more
// familiar with Ruby than JavaScript.  JavaScript has less built-in methods.
//
// Did you solve the problem in a new way this time?
// Nopesies.
//
// Was your pseudocode different from the Ruby version? What was the same and what was different?
// My pseudocode was the same.  I suppose one might not that JavaScript doesn't have
// a .between? built-in method.  Writing one's own is not too difficult.
