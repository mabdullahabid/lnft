<script>
  import Avatar from "$components/Avatar";
  import Search from "$components/Search";
  import { show, user, token } from "$lib/store";
  import { logout } from "$lib/auth";

  export let open = false;
  let toggle = () => (open = !open);

  let hovering;
  let enter = () => (hovering = true);
  let leave = () => (hovering = false);
</script>

<style>
  .menu button {
    width: auto;
    text-align: left;
    font-family: 'Oswald-bold';
    color:#000;
    text-transform: uppercase;
  }

  .menu a{
    padding: 0 20px;
  }

  .menu button:hover{
    border-bottom:1px solid #000;
  }

  .menu a.no-underline button{
    border-bottom:none;
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
      margin: 20px 0 0 20px;
      font-family: 'Oswald-bold';
    }
    .menu .search {
      margin: 40px 0 0 45px;
    }
  }
</style>

<div class="flex justify-between items-center menu relative">
  <Search suggest={false} />
  <a href="/market"><button on:click={toggle}>Market</button></a>
  <a href="/activity"><button on:click={toggle}>Activity</button></a>
  <!--
  <a href="/galleries"><button on:click={toggle}>Galleries</button></a>
  -->
  <a href="https://blog.raretoshi.com/"><button on:click={toggle}>Blog</button></a>
  <a href="/faq"><button on:click={toggle}>FAQ</button></a>
  <!--
  <a href="https://blog.raretoshi.com/"><button on:click={toggle}>Blog</button></a>
  -->
  {#if $user}
    {#if $user.is_admin}
      <a href="/admin"><button on:click={toggle}>Admin</button></a>
    {/if}
    <a href={`/u/${$user.username}`} class="no-underline">
      <button on:click={toggle} class="flex">
        <Avatar user={$user} />
        <!--
        <div class="my-auto ml-2">{$user.full_name}</div>
        -->
      </button></a>
  {:else}<a href="/login"><button on:click={toggle}>Sign In</button></a>{/if}
</div>
