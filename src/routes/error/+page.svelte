<script>
	import { goto } from '$app/navigation';
	import { WEBUI_NAME, config } from '$lib/stores';
	import { onMount, getContext } from 'svelte';

	const i18n = getContext('i18n');

	let loaded = false;

	onMount(async () => {
		if ($config) {
			await goto('/');
		}
		loaded = true;
	});
</script>

{#if loaded}
	<div class="absolute w-full h-full flex z-50 bg-black">
		<div class="m-auto flex flex-col justify-center items-center">
			<div class="mb-6">
				<img
					src="/assets/images/cosmos.png"
					class="w-24 h-24 rounded-full"
					alt="Hydra Logo"
				/>
			</div>
			<div class="text-center text-2xl font-medium text-white mb-4">
				Please start backend
			</div>
			<div class="mt-4">
				<button
					class="px-5 py-2 rounded-full bg-gray-100 hover:bg-gray-200 transition font-medium text-sm text-black"
					on:click={() => { location.href = '/'; }}
				>
					{$i18n.t('Check Again')}
				</button>
			</div>
		</div>
	</div>
{/if}
