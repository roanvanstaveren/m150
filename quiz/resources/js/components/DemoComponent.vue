
<template>
<div>
    <h1>Hello World</h1>

    <p>Der Wert ist {{value}}.</p>
    <p>Der doppelte Wert ist {{value * 2}}.</p>

    <v-slider v-model="value" min="20" max="80" step="5" @change="checkValue"></v-slider>
</div>
</template>

<script>
export default {
    name: "DemoComponent",
    data: () => ({
        value: 50
    }),

    methods: {
        checkValue(wert) {

            if (wert > 70)
            {
                alert("Achtung, der Wert ist grösser als 70");
            }
            console.log(value);
        }
    }
}
</script>

<style>

</style>