<template>
  <section class="mdev-opening-soon">
    <div class="mdev-activities-soon" :style="heroStyles">
      <div class="mdev-main-wrapper">
        CONTENT GOES HERE
      </div>
    </div>
    <div class="mdev-opening">
      <div class="mdev-splash-teal" :style="splashStyle"></div>
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
      // AIzaSyDPrlFCsuhoVhybfZv5FGVfwXjnmz_B0lQ - google API key
      return{
        heroStyles: {
          backgroundImage: 'url(' + this.loadImage('bkg-activities.png') + ')',
          backgroundSize: 'cover',
          backgroundPosition: 'top center'
        },
        splashStyle: {
          backgroundImage: 'url(' + this.loadImage('splash-blue.png') + ')'
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
    position: relative;
    background: $factory-teal;

    .mdev-title-container {
      text-align: left;
    }

    h1 {
      font-family: $body-font;
      letter-spacing: 3px;
    }
  }

  .mdev-title-container {
    width: auto;
    display: inline-block;
    position: relative;
    left: 50%;
    transform: translate3d( -50%, 0 ,0);
    
    h1, h3 {
      font-family: $body-font;
    }

    h1 {
      letter-spacing: 13px;
    }
    h3 {
      letter-spacing: 3px;
    }
  }

  .mdev-splash-teal {
    width: 100%;
    padding-top: 12%;
    position: absolute;
    top: -120px;
    background-position: top center;
    background-repeat: repeat-x;
  }
</style>
