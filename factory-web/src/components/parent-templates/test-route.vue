<template>
  <section class="main-section">
    <hero-main></hero-main>
    <div>
      <h1>Test ID {{ id }}</h1>
    </div>
    <vue-loader-example></vue-loader-example>
    <results></results>
    <counter></counter>
  </section>
</template>




<script>
  
  //Local Component registration
  import MainNavigation from '../shared/navigation.vue';
  import HeroMain       from '../modules/hero-main.vue';
  import LoaderExample  from '../modules/vue-loader-example.vue';
  import Counter        from '../modules/Counter.vue';
  import Results        from '../modules/Result.vue';
  
  export default{
    data: function (){
      // Grabbing Route Parameters
      // In this case the ID
      return {
        id: this.$route.params.id
      };
    },
    // Watcher to detect route changes
    watch: {
      '$route'(to, from){
        this.id = to.params.id;
      }
    },
    components: {
      'main-navigation' : MainNavigation,
      'hero-main'       : HeroMain,
      'vue-loader-example' : LoaderExample,
      'counter'       : Counter,
      'results'       : Results
      
    }
  };
</script>



<style lang="scss">

	/*-----/
	Global Main
	/-----*/
	@import '../../assets/styles/component-lean-main.scss';

	/*--------------------------------------*/
	/* Main Component Styles                */
	/*--------------------------------------*/


	/*--------------------------------------*/

</style>
