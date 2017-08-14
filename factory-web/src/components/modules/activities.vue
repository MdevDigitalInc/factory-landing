<template>
  <section class="mdev-opening-soon">
    <div class="mdev-main-wrapper"> 
    
    </div>
  </section>
</template>

<script>
  export default {
    data: function() {
      return{
        heroStyles: {
          backgroundImage: 'url(' + this.loadImage('bkg-hero-main.png') + ')',
          backgroundSize: 'cover',
          backgroundPosition: 'top center'
        },
        splashStyle: {
          backgroundImage: 'url(' + this.loadImage('splash-main.png') + ')'
        }
      };
    },
   methods:{
    // Get Compiled image Paths
    
    loadImage(path){
      return require('../../assets/images/' + path);
    }
  }
};
</script>

<style lang="scss" scoped> 

  
	/*-----/
	Global Main
	/-----*/
	@import '../../assets/styles/component-lean-main.scss';

	/*--------------------------------------*/
	/* Main Component Styles                */
	/*--------------------------------------*/
</style>
