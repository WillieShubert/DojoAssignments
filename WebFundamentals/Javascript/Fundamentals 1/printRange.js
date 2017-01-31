function printRange(x, y, z){
  var rangeStart = x
  var rangeStop = y
  var step = z
  var text = "";

  for(var i= rangeStart; i<rangeStop;i+step;){
      text= i+ ",";
    }
  return text
  }

printRange(2,10,2)
