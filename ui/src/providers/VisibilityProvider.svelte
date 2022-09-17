<script lang="ts">
  import { ReceiveNUI } from '../utils/ReceiveNUI';
  import { SendNUI } from '../utils/SendNUI';
  import { onMount } from 'svelte';
  import { visibility } from '../store/stores';
  import BackdropFix from './BackdropFix.svelte';


  let isVisible: boolean;

  visibility.subscribe((visible) => {
    isVisible = visible;
  });

  ReceiveNUI<boolean>('setVisible', (visible) => {
    visibility.set(visible);
  });


  onMount(() => {
    const keyHandler = (e: KeyboardEvent) => {
      if (isVisible && ['Escape'].includes(e.code)) {
        SendNUI('hideUI');
        visibility.set(false);
      }
    };

    window.addEventListener('keydown', keyHandler);
  

    return () => window.removeEventListener('keydown', keyHandler);
  });
</script>

<main>
  {#if isVisible}
    <slot />
  {/if}
</main>
<BackdropFix />

