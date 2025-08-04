<script lang="ts">
	import { debugData } from "$lib/utils/debugData";
	import { fetchNui } from "$lib/utils/fetchNui";
	import { useNuiEvent } from "$lib/utils/useNuiEvent";
    import WeatherMain from "./roots/weatherMain.svelte";
    import {visible} from 'src/store';
    let isVisible:boolean = $state(false);
    visible.subscribe((value) => {
        isVisible = value;
    })
    useNuiEvent('openUI',(data:boolean) =>{
        visible.set(data);
    })
   function handleKeydown(event:any) {
		fetchNui('close');
        visible.set(false);
	}
</script>
<style>
    main{
        /* min-height: 90svh;
        display: flex;
        align-items: center;
        align-self: center;
        justify-content: center;
        justify-self: end;
        width: 100%; */
        position: absolute;
        top: 50vh;
        left: 40vh;
    }
</style>
<!-- svelte-ignore event_directive_deprecated -->
<!-- svelte-ignore a11y_no_noninteractive_element_interactions -->
<svelte:window onkeydown={handleKeydown} />
<main>
    {#if isVisible}
	<WeatherMain />
    {/if}
</main>

