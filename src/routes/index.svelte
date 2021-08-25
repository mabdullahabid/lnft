<script>
  import { onMount } from "svelte";
  import { hasura } from "$lib/api";
  import { Summary } from "$comp";
  import { fade } from "svelte/transition";
  import { user } from "$lib/store";
  import { err, goto } from "$lib/utils";
  import Gallery from "$components/Gallery";
  import { artworks } from "$lib/store";
</script>

<div
  class="container mx-auto flex flex-wrap flex-col-reverse md:flex-row sm:justify-between mt-10 md:mt-20">
  <Gallery artworks={$artworks} />
</div>
