const canPlaceFlowers = (flowerbed, n){
  let count = 0;
  const length = flowerbed.length;

  for (let i = 0; i < length && count; i++){
    if (flowerbed[i] === 0){
      const prev = (i === 0)?0:flowerbed[i-1]
      const next = (i === length - 1)?0:flowerbed[i+1]
      count = count + 1;
      flowerbed[i] = 1;
    }
  }
  count <= n;
}
