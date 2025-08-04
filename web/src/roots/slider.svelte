<script lang="ts">
	import { fetchNui } from "$lib/utils/fetchNui";
	import { useNuiEvent } from "$lib/utils/useNuiEvent";

    let inGameTime:number = $state(12);
    useNuiEvent('getTime',(data:number) => {
        inGameTime = data;
    })
    function changeTime(event:any){	
      fetchNui('setTime',event.target.value);
    }
</script>
<style>
    #sliderAndTimeContainer{
        grid-row: 2;
        align-self: center;
        justify-self: center;
        display: flex;
        gap: 2vh;
        width: 80%;

    }
    #inGameTimeDiv{
        font-size: 4vh;
        color: rgb(230, 230, 230);
        font-family: "Google Sans Code", monospace;
        font-optical-sizing: auto;
        font-weight: 300;
        font-style: italic;
    }
    input{
        width: 70vh;
        height: 2vh;
        appearance: none;
        border-radius: 20px;
        place-self: center;
        width: 100%;
        cursor: pointer;
        
    }

    /*********** Baseline, reset styles ***********/
input[type="range"] {
  -webkit-appearance: none;
  appearance: none;
  background: transparent;
  cursor: pointer;
  width: 100%;
}

/* Removes default focus */
input[type="range"]:focus {
  outline: none;
}

/******** Chrome, Safari, Opera and Edge Chromium styles ********/
/* slider track */
input[type="range"]::-webkit-slider-runnable-track {
 background-color: rgb(62, 67, 110);
  border-radius: 2rem;
  height: 1.5rem;
}

/* slider thumb */
input[type="range"]::-webkit-slider-thumb {
  -webkit-appearance: none; /* Override default look */
  appearance: none;
  margin-top: -4px; /* Centers thumb on the track */
  background-color: #ffffff;
  border-radius: 0.5rem;
  height: 2rem;
  width: 2rem;
  
}

input[type="range"]:focus::-webkit-slider-thumb {
  outline: 3px solid #ffffff;
  outline-offset: 0.125rem;
}

/*********** Firefox styles ***********/
/* slider track */
input[type="range"]::-moz-range-track {
  background-color: rgb(62, 67, 110);
  border-radius: 2rem;
  height: 1.5rem;
}

/* slider thumb */
input[type="range"]::-moz-range-thumb {
  background-color: #ffffff;
  border: none; /*Removes extra border that FF applies*/
  border-radius: 0.5rem;
  height: 2rem;
  width: 2rem;
}

input[type="range"]:focus::-moz-range-thumb{
  outline: 3px solid #ffffff;
  outline-offset: 0.125rem;
}
</style>
<div id = "sliderAndTimeContainer">
    <input type="range" min="0" max="23" bind:value="{inGameTime}" onchange={changeTime}>
    {#if inGameTime < 10}
    <div id="inGameTimeDiv"> 0{inGameTime}</div>
    {:else}
    <div id="inGameTimeDiv">{inGameTime}</div>
    {/if}
</div>