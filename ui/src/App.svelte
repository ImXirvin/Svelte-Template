<script lang="ts">
  import VisibilityProvider from "./providers/VisibilityProvider.svelte";

  debugData([
    {
      action: 'setVisible',
      data: true,
    },
  ]);

</script>

<VisibilityProvider>

<!-- PUT STUFF HERE  -->

</VisibilityProvider>
