<template>
  <section class="mdev-opening-soon">
    <div class="mdev-activities-soon" :style="heroStyles">
      <div class="mdev-main-wrapper">
        CONTENT GOES HERE
      </div>
    </div>
    <div class="mdev-opening">
      <div class="mdev-main-wrapper">
        <div class="mdev-title-container">
          <h3>Opening</h3>
          <h1 class="--font-white">Winter 2017</h1>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
 	export default {
    data: function() {
      return{
        heroStyles: {
          backgroundImage: 'url(' + this.loadImage('bkg-activities.png') + ')',
          backgroundSize: 'cover',
          backgroundPosition: 'top center'
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
  .mdev-activities-soon {
    width: 100%;
    height: 100vh;
  }

  .mdev-opening {
    width: 100%;
    padding: 80px 0;
    background: $factory-teal;

    .mdev-title-container {
      text-align: left;
    }

    h1 {
      font-family: $body-font;
      letter-spacing: 3px;
    }
  }
</style>
