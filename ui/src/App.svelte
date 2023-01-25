<script lang="ts">
	import VisibilityProvider from '@providers/VisibilityProvider.svelte'
	import { browserMode, visibility } from '@store/stores'
	import DebugBrowser from '@providers/DebugBrowser.svelte'
	import AlwaysListener from '@providers/AlwaysListener.svelte'


</script>

<VisibilityProvider>
	<!-- PUT STUFF HERE  -->
</VisibilityProvider>

<AlwaysListener />
{#if $browserMode}
	<DebugBrowser />
{/if}
