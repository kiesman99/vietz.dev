<script>
	import Navbar from '$lib/Navbar.svelte';
import '../app.css';

let year = new Date().getFullYear();
</script>

<Navbar />

<div class="container mx-auto px-4 mt-5">
	<slot />
</div>

<footer class="container mx-auto px-4 border-t border-black pt-3 mt-10">
  <ul class="flex flex-col gap-1">
    <li><a class="underline" target="_blank" href="https://github.com/kiesman99">GitHub</a></li>
    <li><a class="underline" target="_blank" href="https://github.com/kiesman99">X (Twitter)</a></li>
    <li><a class="underline" target="_blank" href="https://www.linkedin.com/in/justin-vietz">Linkedin</a></li>
  </ul>
  <p class="mt-10">© {year} Justin Vietz. All rights reserved.</p>
</footer>