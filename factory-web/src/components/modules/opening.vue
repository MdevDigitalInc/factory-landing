<template>
  <section class="mdev-opening-soon">
    <div class="mdev-activities-soon" :style="heroStyles">
      <div class="mdev-main-wrapper  u-text-center --font-white">
        <h1 class="u-uppercase">Come work for us!</h1>
        <p class="mdev-large-text">
          We have many full and part-time positions that start in February.</br></br>
          Positions will be available in all areas of The Factory - trampoline, high ropes, cash, guest services and cleaning.</br>Apply now!
        </p>
        <h3 class="--font-teal u-capitalize-initial">
          <a href="https://secure.collage.co/jobs/thefactorylondon" target="_blank" title="See all job opportunities with The Factory!">
            See all job opportunities
          </a>
        </h3>
      </div>
    </div>
    <div class="mdev-opening">
      <div class="mdev-splash-teal" :style="splashStyle"></div>
      <div class="mdev-main-wrapper">
        <div class="mdev-title-container">
          <h2>Opening</h2>
          <h1 class="--font-white">Early 2018</h1>
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
  .mdev-large-text {
    font-size: 30px;
    line-height: 35px;
  }
  .mdev-activities-soon {
    width: 100%;
    padding: 20vh 0;

    @media screen and ($tablet-only-comp) {
      padding: 20vh 0;
    }

    h1, h3 {
      font-family: $body-font;
      margin: 0;
      padding: 0;
    }

    h3 {
      letter-spacing: 2px;
    }
    h1 {
      letter-spacing: 5px;

      @media screen and ($phone-only-comp) {
        letter-spacing: 1px;
      }
    }

    p {
      padding: 0 30%;
      margin: 25px 0 45px 0;

      @media screen and ($tablet-only-comp) {
        padding: 0 23%;
      }

      @media screen and ($phone-only-comp) {
        padding: 0 10%;
      }
    }
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
      font-size: 110px;
    }

    h2 {
      font-size: 50px;
      @media screen and ($phone-only-comp) {
        font-size: 25px;
        letter-spacing: 2px;
      }
    }
  }

  .mdev-title-container {
    width: auto;
    display: inline-block;
    position: relative;
    left: 50%;
    transform: translate3d( -50%, 0 ,0);

    h1, h2 {
      font-family: $body-font;
    }

    h1 {
      letter-spacing: 7px;

      @media screen and ( $tablet-only-comp ) {
        font-size: 80px;
      }

      @media screen and ( $phone-only-comp ) {
        font-size: 44px;
        letter-spacing: 4px;
      }

      @media screen and ( $xl-up-comp ) {
        font-size: 95px;
      }
    }
    h3 {
      letter-spacing: 3px;

      @media screen and ( $tablet-only-comp ) {
        font-size: 40px;
      }

      @media screen and ( $xl-up-comp ) {
        font-size: 40px;
      }
    }
  }

  .mdev-splash-teal {
    width: 100%;
    padding-top: 12%;
    position: absolute;
    top: -120px;
    background-position: top center;
    background-repeat: repeat-x;

    @media screen and ( $phone-only-comp ) {
      padding-top: 44%;
    }

    @media screen and ( $tablet-only-comp ) {
      padding-top: 17%;
    }
  }
</style>
