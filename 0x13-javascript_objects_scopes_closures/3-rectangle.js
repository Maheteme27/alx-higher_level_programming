#!/usr/bin/node
class Rectangle {
  constructor(w, h) {
    if (w <= 0  h <= 0  typeof w !== 'number'  typeof h !== 'number') {
      // Create an empty object
      return {};
    }

    this.width = w;
    this.height = h;
  }

  print() {
    if (this.width <= 0  this.height <= 0) {
      console.log('Empty rectangle');
      return;
    }

    for (let i = 0; i < this.height; i++) {
      console.log('X'.repeat(this.width));
    }
  }
}
