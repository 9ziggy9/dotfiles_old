function randomNumberArr(max) {
	const res = new Array();

	for (let i = 0; i < max; i++) {
		const randomNumber = Math.floor(Math.random() * Math.floor(max));

		res.push(randomNumber);
	}
	return res;
}

// Time complexity, O(n), O(1);
function shiftTest(arr) {
	const n = arr.length;

		arr.shift();

	return arr;
}

// Time complexity, O(n), O(1);
function unshiftTest(n) {
	let arr = [];
	for (let i = 0; i < n; i++)
		arr.unshift(i);
	return arr;
}

// Time complexity, O(1), O(1)
function popTest(arr) {
	const n = arr.length;

	arr.pop();

	return arr;
}

// Time complexity, O(1), O(1);
function pushTest(n) {
	let arr = [];
	for (let i = 0; i < n; i++)
		arr.push(i);
	return arr;
}

let arr = randomNumberArr(process.argv[2]);
console.log(arr);
let MEM = process.memoryUsage();
console.log(`${MEM['heapUsed'] / 1000000} MB`);
console.time("test");
pushTest(process.argv[2]);
console.timeEnd("test");
