
<script>
    export let artwork;
</script>

<svelte:head>
  <meta name="twitter:card" content="summary_large_image" />
  <meta property="og:title" content={artwork.title || "untitled"} />
  <meta property="og:description" content="Description" />
  <meta property="og:image" content={`/api/ipfs/${artwork.filename}`}/>
  <meta property="og:url" content="https://blockstream.com" />
  <meta name="twitter:title" content="some title" />
  <meta name="twitter:description" content="Description"/>
  <meta name="twitter:image" content={`/api/ipfs/${artwork.filename}`} />
</svelte:head>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@600;700&display=swap" rel="stylesheet">