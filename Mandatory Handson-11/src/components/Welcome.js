function Welcome() {

  function greet(message) {
    alert(message);
  }

  return (
    <div>
      <button onClick={() => greet("Welcome")}>
        Say Welcome
      </button>
    </div>
  );
}

export default Welcome;