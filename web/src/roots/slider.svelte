<script lang="ts">
    //Value je current in game tipe min je 00 a max je isto 00
    let inGameTime:number = $state(12);
</script>
<style>
    #sliderAndTimeContainer{
        grid-row: 2;
        align-self: center;
        justify-self: center;
        display: flex;
        gap: 2vh;
    }
    #inGameTimeDiv{
        font-size: 4vh;
        color: white;
    }
    input{
        width: 70vh;
        height: 2vh;
        appearance: none;
        border-radius: 20px;
        place-self: center;
    }
</style>
<div id = "sliderAndTimeContainer">
    <input type="range" min="0" max="24" bind:value="{inGameTime}">
    <div id="inGameTimeDiv">{inGameTime}</div>
</div>