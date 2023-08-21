const arr = [1, 3, 5, 7, 9, 2, 1, 3, 5, 7, 9];

arr.sort((a, b) => a - b);
console.log(arr);

function searchElement(array, el) {
  let left = -1;
  let right = array.length;
  for (let i = 0; i < array.length; i++) {
    const mid = Math.floor((left + right) / 2);
    if (array[mid] === el) {
      return mid;
    }
    if (array[mid] > el) {
      right = mid;
    } else left = mid;
  }
  return -1;
}
console.log(searchElement(arr, 2));
console.log(searchElement(arr, 3));
// function name1(arr, el) {
//   let left = -1;
//   let right = arr.length;
//   for (let i = 0; i < arr.length; i++) {
//     if (arr[i] === el) {
//       return i;
//     }
//   }
//   return -1;
// }

// console.log(name1(arr, 7));
