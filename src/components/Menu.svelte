<script>
  export let open = false;
  let toggle = () => (open = !open);

  let hovering;
  let enter = () => (hovering = true);
  let leave = () => (hovering = false);
</script>

<style>
  .menu a {

  } 
  .menu button {
      font-weight: bold;
      font-size: 18px;
    width: auto;
    text-align: left;
    padding: 0 20px;
  }

  .menu .signin {
    width: 120px;
  }

  .menu :global(.search) {
    border: 1px solid lightgray;
    border-radius: 30px;
    margin-right: 15px;
    width: 250px;
  }

  .menu :global(.search):focus-within {
    border: 1px solid #5C5D60;
    border-radius: 30px;
  }

  .menu :global(input) {
    width: auto;
    width: 80%;
    border: none;
    background: none;
    padding: 0.5rem 1.2rem;
  }

  .menu :global(.fa-search) {
    font-size: 1.2rem;
  }

  @media only screen and (max-width: 1023px) {
    .menu :global(.search) {
      display: none;
    }
  }

  @media only screen and (max-width: 1023px) {
    .menu {
      flex-direction: column;
      align-items: flex-start;
      margin-top: 50px;
      border-top: 1px solid gray;
      width: 100%;
    }

    .menu a {
      margin: 25px 0 0 0px;
      width: 100%;
    }
    .menu .search {
      margin: 40px 0 0 45px;
    }
  }
</style>

<div class="flex menu relative flex-grow justify-center">
  <a href="https://serpiente.io"><button on:click={toggle}>Home</button></a>
  <a href="https://serpiente.io/tequila/"><button on:click={toggle}>Tequila</button></a>
  <a href="/"><button on:click={toggle}>NFT</button></a>
  <a href="https://serpiente.io/contact-us/"><button on:click={toggle}>Contact Us</button></a>
</div>
