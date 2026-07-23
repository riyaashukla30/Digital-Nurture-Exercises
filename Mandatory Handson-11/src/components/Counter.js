import { useState } from "react";

function Counter() {
  const [count, setCount] = useState(0);

  function increment() {
    setCount(count + 1);
  }

  function sayHello() {
    alert("Hello! Counter Increased");
  }

  function handleIncrement() {
    increment();
    sayHello();
  }

  function decrement() {
    setCount(count - 1);
  }

  return (
    <div>
      <h2>Counter : {count}</h2>

      <button onClick={handleIncrement}>Increment</button>

      <button onClick={decrement}>Decrement</button>
    </div>
  );
}

export default Counter;