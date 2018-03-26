var cars = [];
function logIt(data) {
  if (typeof data === "string") {
    console.log(data);
  } else if (typeof data === "object") {
    for (var item in data) {
      console.log(data[item]);
    }
  }
}

function getCars(data, callback) {
  cars.push(data);
  callback(data);
}

getCars({make: 'Dodge', model: 'Ram'}, logIt);