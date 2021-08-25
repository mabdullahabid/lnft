<script>
  import { art } from "$lib/store";
</script>

<svelte:head>
  <meta name="twitter:card" content="summary_large_image" />
  <meta name="twitter:site" content="@serpiente" />
  <meta name="twitter:creator" content="@serpiente" />

  {#if $art}
    <meta property="og:title" content={`Serpiente - ${$art.title}`} />
    <meta property="og:image" content={`/api/ipfs/${$art.filename}`} />
    <meta property="og:url" content={`https://serpiente.io/a/${$art.slug}`} />
    <meta name="twitter:title" content={`Serpiente - ${$art.title}`} />
    <meta name="twitter:image" content={`/api/ipfs/${$art.filename}`} />
  {:else}
    <meta property="og:title" content="Serpiente" />
    <meta property="og:image" content="https://serpiente.io/serpiente.png" />
    <meta property="og:url" content="https://serpiente.io/" />
    <meta name="twitter:title" content="Serpiente" />
    <meta name="twitter:image" content="https://serpiente.io/serpiente.png" />
  {/if}
</svelte:head>
