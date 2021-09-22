<script>
  import { onMount } from "svelte";
  import { hasura } from "$lib/api";
  import { Summary } from "$comp";
  import { fade } from "svelte/transition";
  import { user } from "$lib/store";
  import { operationStore, query } from "@urql/svelte";
  import { topCollectors, topArtists } from "$queries/users";
  import { getFeatured } from "$queries/artworks";
  import Activity from "$components/Activity";
  import RecentActivityCard from "$components/RecentActivityCard";
  import LatestPiecesCard from "$components/LatestPiecesCard";
  import { err, goto } from "$lib/utils";
  import { getRecentActivity, getLatestPieces } from "$queries/transactions";
  import branding from "$lib/branding";
  import Button from "$styleguide/components/Button.svelte";

  let featured = [];
  let recent = [];
  let latest = [];

  onMount(async () => {
    try {
      featured = (
        await hasura
          .post({
            query: getFeatured,
          })
          .json()
      ).data.featured;

      recent = (
        await hasura
          .post({
            query: getRecentActivity(3),
          })
          .json()
      ).data.recentactivity;

      latest = (
        await hasura
          .post({
            query: getLatestPieces(3),
          })
          .json()
      ).data.transactions;
    } catch (e) {
      err(e);
    }
  });

  setInterval(() => {
    current++;
    if (current >= featured.length) current = 0;
  }, 6000);

  let current = 0;
</script>

<style>
  @import "../styleguide/theme.scss";

  .secondary-font {
    font-family: "Audiowide", sans-serif;
  }

</style>

<div class="min-h-screen flex header-container mx-auto justify-center items-center bg-black">

  <div class="flex justify-center mx-24 -mt-32">
    <div class="leading-normal">
      <div class="text-gray-500 text-xl font-semibold">
        WE ARE DISRUPTING THE NFT INDUSTRY.
      </div>
      <div class="text-white text-5xl secondary-font font-bold leading-normal mt-4">
        The First marketplace<br/>
        for NFT-Experiences
      </div>
      <div class="text-white text-xl secondary-font font-bold mt-4">
        From creators for everyone
      </div>
      <div class="text-gray-500 text-base font-semibold mt-6">
        An NFT marketplace with real-life experiences <br/>based on the L-BTC blockchain.
      </div>
      <div class="mt-8">
        <a href="/market">
          <Button primary class="w-32">Start Exploring</Button>
        </a>
      </div>
    </div>
    <div class="flex flex-1 ml-20 sm:hidden xl:flex items-center">
      <div>
        <a href="/market">
          <img src="/cards.png" class="w-full max-h-96">
        </a>
      </div>
    </div>
  </div>

</div>
