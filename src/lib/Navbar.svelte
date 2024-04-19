<script>
	import { page } from '$app/stores';
</script>

<nav class="container mx-auto px-4 py-5 border-b border-black">
	<ul class="flex gap-3">
		<li><a class:active={$page.url.pathname === '/'} href="/">home</a></li>
		<li><a class:active={$page.url.pathname === '/work'} href="/work">work</a></li>
	</ul>
</nav>

<style>
	nav > ul > li > a {
		&::before {
			content: '{ ';
			color: #fff;
		}
		&::after {
			content: ' }';
			color: #fff;
		}
	}

	.active {
		&::before {
			color: #000;
		}
		&::after {
			color: #000;
		}
	}
</style>
