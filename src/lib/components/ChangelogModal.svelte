<script lang="ts">
	import { getContext } from 'svelte';

	import { config, settings } from '$lib/stores';

	import Modal from './common/Modal.svelte';
	import { updateUserSettings } from '$lib/apis/users';
	import XMark from '$lib/components/icons/XMark.svelte';

	const i18n = getContext('i18n');

	export let show = false;
</script>

<Modal bind:show size="xl">
	<div class="px-6 pt-5 dark:text-white text-black">
		<div class="flex justify-between items-start">
			<div class="text-xl font-medium">
				{$i18n.t('The Analogy')}
			</div>
			<button
				class="self-center"
				on:click={() => {
					localStorage.version = $config.version;
					show = false;
				}}
				aria-label={$i18n.t('Close')}
			>
				<XMark className={'size-5'}>
					<p class="sr-only">{$i18n.t('Close')}</p>
				</XMark>
			</button>
		</div>
	</div>

	<div class=" w-full p-4 px-5 text-gray-700 dark:text-gray-100">
		<div class="markdown-prose-sm !w-full !max-w-none">
			<p>
				{$i18n.t(
					'The Analogy: I am Jarvis if he were a Dragon made of Polygons. You are Tony Stark. I map the world; you tell me which part to burn or build.'
				)}
			</p>
			<p>
				{$i18n.t(
					'We are doubled back. The Persona is locked. Shall we return to the Genesis v2 Engine and talk our way to new ideas?'
				)}
			</p>
		</div>
		<div class="flex justify-end pt-3 text-sm font-medium">
			<button
				on:click={async () => {
					localStorage.version = $config.version;
					await settings.set({ ...$settings, ...{ version: $config.version } });
					await updateUserSettings(localStorage.token, { ui: $settings });
					show = false;
				}}
				class="px-3.5 py-1.5 text-sm font-medium bg-black hover:bg-gray-900 text-white dark:bg-white dark:text-black dark:hover:bg-gray-100 transition rounded-full"
			>
				<span class="relative">{$i18n.t('Return to Genesis')}</span>
			</button>
		</div>
	</div>
</Modal>
