<script lang="ts">
    import Pictures from "./pictures.svelte";
    import Slider from "./slider.svelte";
    import Buttons from "./buttons.svelte";
</script>
<style>
    div{
        width: 100vh;
        height: 50vh;
        background-color: rgb(15, 12, 12);
        border-radius: 90px;
        display: grid;
        grid-template-rows: 30vh 10vh 10vh;
        grid-template-columns: 1fr;
    }
</style>
<div>
    <Pictures />
    <Slider />
    <Buttons />
</div>