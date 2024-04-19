<script lang="ts">
	import Dictionary from '$lib/Dictionary.svelte';
  import { annotate } from 'rough-notation';
	import { onMount } from 'svelte';

  let fullStack: HTMLElement;

  onMount(() => {
    annotate(fullStack, { type: 'underline', color: '#000' }).show();
  });
</script>


<Dictionary
	word="Moin!"
	pronunciation="mɔyn"
	type="INTERJECTION"
	description="Greeting in northern Germany"
/>

<div class="mt-10">
  <p>Hey I am Justin Vietz, a <span bind:this={fullStack}>full-stack</span> developer by ❤️</p>
</div>
