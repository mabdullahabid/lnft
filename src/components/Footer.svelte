<script>
  import Fa from "svelte-fa";
  import {
    faInstagram,
    faFacebookF,
    faTwitter,
  } from "@fortawesome/free-brands-svg-icons";
</script>

<style>
  .sow-social-media-button {
    display: inline-block;
    font-size: 1.26em;
    line-height: 1em;
    margin: 0.1em 0.05em 0.1em 0.05em;
    padding: 1em 0;
    width: 3em;
    text-align: center;
    vertical-align: middle;
    -webkit-border-radius: 1.5em;
    -moz-border-radius: 1.5em;
    border-radius: 1.5em;
    background: transparent;
    text-shadow: 0 1px 0 rgb(0 0 0 / 5%);
    border: 2px solid #333333;
    color: #333333 !important;
  }

  svg {
    @apply mx-auto;
  }
</style>

<div class="px-2 my-24">
  <div class="container footer mx-auto flex flex-wrap justify-center py-12">
    <div class="mx-1">
    <a
      class="sow-social-media-button"
      href="https://www.facebook.com/serpientequila">
      <div class="flex">
        <div class="mx-auto">
          <Fa icon={faFacebookF} />
        </div>
      </div>
    </a>
  </div>
  <div class="mx-1">
    <a
      class="sow-social-media-button"
      href="https://www.twitter.com/serpientequila">
      <div class="flex">
        <div class="mx-auto">
          <Fa icon={faTwitter} />
        </div>
      </div>
    </a>
  </div>
  <div class="mx-1">
    <a
      class="sow-social-media-button"
      href="https://instagram.com/serpientequila">
      <div class="flex">
        <div class="mx-auto">
          <Fa icon={faInstagram} />
        </div>
      </div>
    </a>
  </div>
</div>
  <div class="flex">
    <div class="mx-auto">Nomad Spirits Company</div>
  </div>
</div>
