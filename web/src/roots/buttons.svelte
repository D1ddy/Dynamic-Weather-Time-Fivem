<script lang="ts">
    import Button from "./button.svelte";
    let typeOfWeather:Array<string> = ['CLEAR','RAIN','CLOUDS','SNOW'];
</script>
<style>
    div{
        grid-row: 3;
        align-self: center;
        justify-content: center;
        justify-self: center;
        display: flex;
        gap: 1vh;
    }
</style>
<div>
    {#each typeOfWeather as weather}
        <Button {weather}/>
    {/each}
</div>