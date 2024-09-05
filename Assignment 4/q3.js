const crypto = require('crypto');
function DesiredHash(transection){
    let number =0 ;
    // Converting the Transection to the String
    let transString = ""
    for (let i=0;i<transection.length;i++){
        transString += transection[i][0]+"To"+transection[i][1]+"OF"+transection[i][2];
        if (i+1 != transection.length){
            transString+="And"
        }
        }
    hash = crypto.createHash('sha256').update(number+transString).digest('hex');
    let condition = hash.startsWith("00000")
    while(!condition){
        number+=1;
        hash = crypto.createHash('sha256').update(number+"").digest('hex');
        condition = hash.startsWith("00000")
    }
    console.log(hash)
}
let transections = [["Dev","Karan",100],["Karan","Darsh",10]]
DesiredHash(transections)