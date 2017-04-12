function insertSort(arr){
	for(var i=1; i<arr.length-1; i++){
		if(arr[i]<arr[i+1]){
			var temp = arr[i];
			for(var j = i-1; j>=0; j--){
				if(arr[j]> temp){
					arr[j+1] = arr[j];
				};
				if(j == 0){
					arr[0] = temp;
				}else{
					arr[j+1] = temp;
					break;
				}
			}
		}
	}
};

test = [2,4,1,7,4,63,4];
console.log(insertSort(test))
