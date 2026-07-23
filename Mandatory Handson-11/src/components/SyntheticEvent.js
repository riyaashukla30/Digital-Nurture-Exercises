function SyntheticEvent() {

  function handleClick(event) {
    alert("I was clicked");
  }

  return (
    <div>
      <button onClick={handleClick}>
        OnPress
      </button>
    </div>
  );
}

export default SyntheticEvent;