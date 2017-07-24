<template>
    <div>
        <button class="btn btn-primary" @click="increment(100)">Increment</button>
        <button class="btn btn-primary" @click="decrement(100)">Decrement</button>
        <button class="btn btn-primary" @click="asyncIncrement(200)">Async Increment</button>
    </div>
</template>

<script>
    // Import Map Actions
    // Maps all the called  actions into separate
    // methods that can be called by the component.

    // Use "..." spread operator to pull out objects
    // passed from MapActions to allow for more 
    // methods to be chained.
    import { mapActions } from 'vuex';
    export default {
        methods: {
          ...mapActions([
            'increment',
            'decrement',
            'asyncIncrement'
          ]) 
        }
    };
</script>
