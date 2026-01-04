<script lang="ts">
import { goto } from '$app/navigation';
import { page } from '$app/stores';

// Optional explicit handler or target override.
export let onBack: (() => void) | null = null;
export let target: string | null = null;

// Prefer the redirect query param, else the stored redirectPath, else home.
$: redirectPath =
	$page.url.searchParams.get('redirect') ??
		(typeof localStorage !== 'undefined' ? localStorage.getItem('redirectPath') : null) ??
		'/';

$: resolvedTarget = target ?? redirectPath ?? '/';

const handleBack = () => {
	if (onBack) {
		onBack();
		return;
	}

	goto(resolvedTarget || '/');
};
</script>

<button
	class="mt-4 inline-flex items-center justify-center rounded-full px-4 py-2 text-sm font-medium bg-black/60 text-white hover:bg-black/75 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-white transition"
	type="button"
	on:click={handleBack}
>
	← Back to the cosmos comic
</button>
