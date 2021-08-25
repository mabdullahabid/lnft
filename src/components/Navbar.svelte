<script>
  import Fa from "svelte-fa";
  import Avatar from "$components/Avatar";
  import { faSearch } from "@fortawesome/free-solid-svg-icons";
  import Hamburger from "./Hamburger.svelte";
  import Menu from "./Menu.svelte";
  import { user, token } from "$lib/store";
  import { logout } from "$lib/auth";

  let toggle = () => (sidebar = !sidebar);

  let hovering;
  let enter = () => (hovering = true);
  let leave = () => (hovering = false);

  export let sidebar = false;
</script>

<style>
  header {
    padding-top: 20px;
  }

  .hambuger {
    display: none;
  }

  .mobileSearch {
    display: none;
  }

  @media only screen and (max-width: 1023px) {

    header {
      padding-top: 12px;
      padding-bottom: 12px;
    }
    .hambuger {
      display: block;
    }

    .mobileSearch {
      display: block;
      font-size: 20px;
    }

    nav {
      z-index: 100;
    }
  }
</style>

<header
  class="flex container mx-auto px-4 py-4 items-center text-gray-600">
  <nav class="flex hambuger">
    <Hamburger bind:open={sidebar} />
  </nav>
  <a href="/">
    <img src="/serpiente.png" alt="logo" style="width: 33px" /></a>
  <nav class="hidden lg:block flex-grow">
    <Menu />
  </nav>
  {#if $user}
    {#if $user.is_admin}
      <a href="/admin"><button on:click={toggle}>Admin</button></a>
    {/if}
    <a href={`/u/${$user.username}`}>
      <button on:click={toggle} class="flex">
        <Avatar user={$user} />
      </button></a>
  {:else}<a href="/login"><button on:click={toggle}>Sign In</button></a>{/if}
</header>
