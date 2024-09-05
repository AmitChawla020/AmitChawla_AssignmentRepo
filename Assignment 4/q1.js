// importing crypto library
const crypto = require('crypto');
function DesiredHash(){
    // Creating number for to fing hash ehith 00000
    let number =0 ;
    // creating hash of number
    hash = crypto.createHash('sha256').update(number+"").digest('hex');
    // checking if hash is strating with 00000
    let condition = hash.startsWith("00000")
    while(!condition){
        // incrementing number to find new hashing
        number+=1;
        hash = crypto.createHash('sha256').update(number+"").digest('hex');
        condition = hash.startsWith("00000")
    }
    console.log(hash)
}
DesiredHash()