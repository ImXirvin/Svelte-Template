<script lang="ts">
	import VisibilityProvider from '@providers/VisibilityProvider.svelte'
	import { BROWSER_MODE, RESOURCE_NAME } from '@store/stores'
	import DebugBrowser from '@providers/DebugBrowser.svelte'
	import AlwaysListener from '@providers/AlwaysListener.svelte'

	$RESOURCE_NAME = 'Svelte-Template' // Change this to your resource name (case sensitive)
</script>

<VisibilityProvider>
	<!-- PUT STUFF HERE  -->
</VisibilityProvider>


<style>


</style>


<AlwaysListener />
{#if $BROWSER_MODE}
	<DebugBrowser />
{/if}
