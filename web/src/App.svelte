<script lang="ts">
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
</script>
<style>
    main{
        min-height: 90svh;
        display: flex;
        align-items: center;
        align-self: center;
        justify-content: center;
        justify-self: center;
        width: 100%;
        
    }
</style>
<main>
    {#if isVisible}
	<WeatherMain />
    {/if}
</main>

