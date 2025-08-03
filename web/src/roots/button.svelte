<script lang="ts">
	import { fetchNui } from "$lib/utils/fetchNui";
    import { visible } from "src/store";
    let {weather} = $props();
    
</script>
<style>
    button{
        appearance: none;
        width: 10vh;
        height: 8vh;
        background-color: rgb(72, 68, 92);
        box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;
        border: 1px solid transparent;
        color: white;
        border-radius: 5px;
    }
    button:hover{
        background-color: rgb(121, 122, 133) ;
        height: 7.8vh;
    }
</style>
<button onclick="{() => {
    fetchNui('setWeather',JSON.stringify(weather));
    fetchNui('close');
    visible.set(false);
}}"> {weather} </button>