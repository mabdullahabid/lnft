 <script>
  import { page } from "$app/stores";
  import decode from "jwt-decode";
  import {
    App,
    Avatar,
    ProgressLinear,
    Sidebar,
    Navbar,
    Dialog,
    Footer,
    Cursor,
  } from "$comp";
  import Snack from "$components/Snack";
  import { show, user, password, token } from "$lib/store";
  import { onMount } from "svelte";
  import { fade } from "svelte/transition";
  import { publicPages } from "$lib/utils";

  let open = false;
  let ready;

  onMount(async () => {
    ready = true;

    if (!$password) $password = window.sessionStorage.getItem("password");
    if (!$token) $token = window.sessionStorage.getItem("token");
  });

  let y;
</script>

<style global src="../main.css" ></style>

<svelte:window bind:scrollY={y} />

<Snack />

{#if ready}
  {#if $user || !publicPages.includes($page.path.split('/')[1])}
    <Sidebar bind:open />
    <div class={y > 50 ? 'sticky' : ''} in:fade>
      <Navbar bind:sidebar={open} />
    </div>
    <Dialog />
  {/if}
  <div id="edgtf-theme-cursor" class="">
    <svg x="0px" y="0px" width="48px" height="48px" viewBox="0 0 48 48" xml:space="preserve">
      <circle id="edgtf-cursor-dot" cx="28" cy="28" r="14"/>
      <path id="edgtf-cursor-flame" fill="#FFFFFF" />
      <path id="edgtf-cursor-cart" fill="#FFFFFF" />
      <path id="edgtf-cursor-close" fill="#FFFFFF" />
      <path id="edgtf-cursor-move" fill="#FFFFFF" />
      <path id="edgtf-cursor-eye" fill="#FFFFFF" />
    </svg>
  </div>
  <main>
    <div class="mx-auto min-h-screen">
      <App>
        <slot/>
      </App>
    </div>
  </main>

  <Cursor />
  
  {#if !['/', '/login', '/register'].includes($page.path)}
    <Footer />
  {/if}
{/if}
