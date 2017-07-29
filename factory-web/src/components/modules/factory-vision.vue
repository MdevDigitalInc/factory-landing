<template>
  <section class="mdev-factory-vision">
    <div class="mdev-vision-hero" :style="heroStyles"> 
      <div class="mdev-main-wrapper">
        <h2>Vision For The Factory - </br> Choose your adventure</h2>
        <p class="vision-paragraph">
          We have an impressive 160,000 square feet and we want to fill every last inch with endless fun for the whole family. High ropes, zip-lines, trampoline park, ultimate warrior course, arcade, kid's soft play, laser tag, virtual reality, escape rooms, and more - these attractions are all in the plans for The Factory and are catered to all ages and skill levels.
        </p>
        <div class="flex">
          <p>
            We won't just cater to the adventurous: we will have a restaurant, a lounge area with Wifi and comfortable parent zones so you can sit back and relax or get some work done while your kids test their skills on the ropes course.
          </p>

          <p>
            We believe that sharing fun experiences with your friends and family is a necessity of living a happy life. We want London and area to think of The Factory as the place to take time away from the everyday, even just for a little while, and to have fun in a safe and supportive environment.
          </p>
        </div>
      </div>
    </div>
    <div class="mdev-splash" :style="splashStyle"></div>
  </section>
</template>

<script>
	export default {
    data: function() {
      return{
        heroStyles: {
          backgroundImage: 'url(' + this.loadImage('bkg-vision.png') + ')',
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

<style lang="scss"> 
  
	/*-----/
	Global Main
	/-----*/
	@import '../../assets/styles/component-lean-main.scss';

	/*--------------------------------------*/
	/* Main Component Styles                */
	/*--------------------------------------*/
  .mdev-factory-vision {
    z-index: 40;
    position: relative;
    background: $factory-red;
    color: $factory-white;
    clip-path: polygon(0% 19%, 100% 2%, 100% 100%, 0% 100%);
    width: 100%;
    h2 {
      font-family: $body-font;
      letter-spacing: 3px;
      font-weight: 700;
    }
  }

  .mdev-vision-hero {
    padding-top: 210px;
    padding-bottom: 240px;
    clip-path: polygon(0% 12%, 100% -4%, 100% 73%, 0% 100%);

    .mdev-main-wrapper {
      padding: 0 15%;
    }

    .vision-paragraph {
      padding: 30px 0;
      border-bottom: 2px solid $factory-white;
    }

    .flex p{
      width: 50%;
      padding: 30px 40px;

      &:first-child {
        padding-left: 0;
      }

      &:last-child {
        padding-right: 0;
      }
    }
  }

  .mdev-splash {
    width: 100%;
    position: absolute;
    padding-top: 17.7%;
    bottom: -2px;
    z-index: 20;
    background-size: 100%;
    background-repeat: no-repeat;
    transform: scaleX(-1);
    filter: FlipH;
  }

	/*--------------------------------------*/


</style>
