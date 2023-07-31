const findNb = (m) => {
  for(n = 0; m > 0; n++){
    m -= Math.pow(n, 3);
  }
  return m?-1:n-1;
}
