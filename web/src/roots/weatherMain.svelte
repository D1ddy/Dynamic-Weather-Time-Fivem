<script lang="ts">
    import Slider from "./slider.svelte";
    import Buttons from "./buttons.svelte";
</script>
<style>
    div{
        width: 100vh;
        height: 50vh;
        background-color: none;
        border-radius: 10px;
        display: grid;
        grid-template-rows: 30vh 10vh 10vh;
        grid-template-columns: 1fr;
    }
</style>
<div>
    <Slider />
    <Buttons />
</div>