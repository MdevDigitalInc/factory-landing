<template>
  <section class="mdev-main-content">
    <hero-main></hero-main>
    <hero-form></hero-form>
    <factory-vision></factory-vision>
    <activities></activities>
    <opening-section></opening-section>
    <factory-map></factory-map>
  </section>
</template>




<script>
  
  //Local Component registration
  import HeroMain       from '../modules/hero-main.vue';
  import HeroForm       from '../modules/hero-form.vue';
  import FactoryVision  from '../modules/factory-vision.vue';
  import Activities     from '../modules/activities.vue';
  import OpeningSection  from '../modules/opening.vue';
  import FactoryMap  from '../modules/map.vue';
  
  export default{

    components: {
      'hero-main'       : HeroMain,
      'hero-form'       : HeroForm,
      'factory-vision'  : FactoryVision,
      'opening-section' : OpeningSection,
      'activities'      : Activities,
      'factory-map'      : FactoryMap
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
