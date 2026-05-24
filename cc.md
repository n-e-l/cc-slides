---
marp: true
theme: gaia
---

# Making art using code!

- by Nel (Lauda)

![bg contain right](./data/spores.png)

<!-- This is my hobby -->

---

<!-- _backgroundColor: black -->
![bg contain](./data/clouds.png)

---

<!-- _backgroundColor: black -->
![bg contain](./data/wood.png)

---

<!-- _backgroundColor: black -->
![bg contain](./data/impact.png)

---

<!-- _backgroundColor: black -->
![bg contain](./data/solstice.png)

---

<!-- _backgroundColor: black -->
![bg contain](./data/tree.jpg)

---

<!-- _backgroundColor: black -->
![bg contain](./data/2000_bounces.png)

---

<!-- _backgroundColor: black -->
![bg contain](./data/perspective_select.gif)

---

# How?

```js
let size = 50;
for (let i = 0; i < 10; i++) {
  let x = i * 30;
  let y = i * 30;
  circle(x, y, size);
}
```

- Easy to get started at [p5js.org](https://p5js.org)
- But you can use any language/tool/framework!

![bg contain right](./data/circles.png)

---

# How?

- Now circular!

```js
let steps = 10;
for (let i = 0; i < steps; i++) {
  let angle = (i / steps) * 3.14159 * 2;
  let x = center + cos(angle) * 100;
  let y = center + sin(angle) * 100;
  circle(x, y, 30);
}
```

![bg contain right](./data/circles2.png)

---

# How?

- More circles!

```js
let steps = 100;
for (let i = 0; i < steps; i++) {
  let angle = (i / steps) * 3.14159 * 2;
  let x = center + cos(angle) * 100;
  let y = center + sin(angle) * 100;
  circle(x, y, 30);
}
```

![bg contain right](./data/circle3.png)

---

# How?

- Varying sizes!

```js
let steps = 100;
for (let i = 0; i < steps; i++) {
  let angle = (i / steps) * 3.14159 * 2;
  let x = center + cos(angle) * 100;
  let y = center + sin(angle) * 100;
  let size = 30 * sin(i / steps * 3.14 * 4);
  circle(x, y, size);
}
```

![bg contain right](./data/circles4.png)

---

# How?

- More!!

```js
for(let q = 0; q < 40; q++) {
  let steps = 100;
  for (let i = 0; i < steps; i++) {
    let angle = (i / steps) * 3.14159 * 2;
    let distance = 100 * (q / 10);
    let x = center + cos(angle) * distance;
    let y = center + sin(angle) * distance;
    let size = 30 * sin(i / steps * 3.14 * 4);
    circle(x, y, size);
  }
}
```

![bg contain right](./data/circles5.png)

---

## Artworks of friends

---

<!-- _backgroundColor: black -->

![bg contain](./data/krab-shape.gif)

---

<!-- _backgroundColor: black -->

![bg contain](data/wrighter-pathtracing.gif)

---

<!-- _backgroundColor: black -->

![bg contain](data/uni.png)

---

<!-- _backgroundColor: black -->

![bg contain](data/noa.png)

---

<!-- _backgroundColor: black -->

![bg contain](data/fish.png)

---

## fin :)

- My site: https://nel.re
- Email me: lauda@nel.re
- Connect on Signal: +32472271852
- abolish Instagram xoxo
