<template>
  <section class="mdev-main-renders flex flex-wrap flex-start">
    <div class="mdev-render-slide mdev-render-half order1" :style="slide1.background"></div>
    <div class="mdev-render-slide mdev-render-half order2">
      <div class="mdev-center" >
        <h2> {{slide2.title}}</h2>
        <p> {{slide2.alt}} </p>
      </div>
    </div>
    <div class="mdev-render-slide mdev-render-half order3" :style="slide3.background"></div>
    <div class="mdev-render-slide mdev-render-half mdev-render-white order3" :style="slide4.background"></div>
    <div class="mdev-render-slide mdev-render-third order3" :style="slide5.background"></div>
    <div class="mdev-render-slide mdev-render-third order3" :style="slide6.background"></div>
    <div class="mdev-render-slide mdev-render-third order3" :style="slide7.background"></div>
    <div class="mdev-render-slide mdev-render-third order3" :style="slide8.background"></div>
    <div class="mdev-render-slide mdev-render-third order3" :style="slide9.background"></div>
    <div class="mdev-render-slide mdev-render-third order3" :style="slide10.background"></div>
  </section>
</template>

<script>
export default {
  data: function() {
    return {
      slide1: {
        background: {
          backgroundImage: 'url(' + this.loadImage('renders-entrance.png') + ')',
        },
        alt: 'The Factory Main Entrance'
      },
      slide2: {
        background: {},
        alt: 'We\’ve got big plans for The Factory. Take a look at the renderings of our entrance, ropes course, trampoline park, and the kid’s adventure zone. Are you ready to join in on the fun? Don\'t forget to sign up for our newsletter for all the latest updates.',
        title: 'Renderings'
      },
      slide3: {
        background: {
          backgroundImage: 'url(' + this.loadImage('renders-atrium.jpg') + ')',
        },
        alt: 'Obstacle Course'       
      },
      slide4: {
        background: {
          backgroundImage: 'url(' + this.loadImage('renders-atrium-second.jpg') + ')',
        },
        alt: 'Trampoline Zone'       
      },
       slide5: {
        background: {
          backgroundImage: 'url(' + this.loadImage('renders-kids.jpg') + ')',
        },
        alt: 'Trampoline Games'       
      },     
      slide6: {
        background: {
          backgroundImage: 'url(' + this.loadImage('renders-kids-second.jpg') + ')',
        },
        alt: 'Kids Play area'       
      },
      slide7: {
        background: {
          backgroundImage: 'url(' + this.loadImage('renders-kids-third.jpg') + ')',
        },
        alt: 'The Factory Main Entrance'       
      },
      slide8: {
        background: {
          backgroundImage: 'url(' + this.loadImage('renders-atrium-overview.jpg') + ')',
        },
        alt: 'The Factory Main Entrance'       
      },
      slide9: {
        background: {
          backgroundImage: 'url(' + this.loadImage('renders-atrium-overview-second.jpg') + ')',
        },
        alt: 'The Factory Main Entrance'       
      },
      slide10: {
        background: {
          backgroundImage: 'url(' + this.loadImage('renders-atrium-overview-third.jpg') + ')',
        },
        alt: 'The Factory Main Entrance'       
      }
    };
  },
   methods:{
    // Get Compiled image Paths
    
    loadImage(path){
      return require('../../assets/images/renders/' + path);
    }
  },
  mounted: function() {
    console.log(this.slide1);
  }
};
</script>

<style lang="scss" >
  
	/*-----/
	Global Main
	/-----*/
	@import '../../assets/styles/component-lean-main.scss';
  .mdev-main-renders {
    background: $factory-teal;
    position: relative;
    z-index: 10;
    margin: 15vw 0;
  }
  .order1 {
    order: 1;
    @media screen and ($phone-only-comp) {
      order: 2;
    }
  }
  .order2 {
    order: 2;
    @media screen and ($phone-only-comp) {
      order: 1;
    }
  }
  .order3 {
   order:3;
  }
  .order4 {
    order: 4;
  }
  .mdev-render-slide {
    height: 24vw;
    background-size: 100% 100%;
    background-position: center top;
    background-repeat: no-repeat;
    position: relative;

    @media screen and ($phone-only-comp) {
      height: 71vw;
      background-position: center center;
      background-size: cover;
    }

    @media screen and ($tablet-only-comp) {
      height:35vw;
      background-size: cover;
    }

    img {
      width: 100%;
    }
  }
  .mdev-render-half {
    width: 50%;

    @media screen and ($phone-only-comp) {
      width: 100%;
    }
  }
  .mdev-render-third {
    width: 33.3%;
    @media screen and ($phone-only-comp) {
      width: 100%;
    }
  }
  .mdev-center {
    h2 {
      font-family: $body-font;
      letter-spacing: 1px;
    }
    padding-left: 40px;
    padding-right: 80px;
    color: $white;
    position: relative;
    top: 50%;
    transform: translate3d(0,-50%,0);

    @media screen and ($tablet-only-comp) {
      padding-right: 40px;
    }

    @media screen and ($phone-only-comp) {
      padding: 0 20px;
    }
  }
  .mdev-top-splash {
    position: absolute;
    top:-18%;
    z-index: -1;
    right:0 ;
    width: 60%;
    padding-top: 22.37%;
    background-size: 100%;
    background-repeat: no-repeat;

    @media screen and ($phone-only-comp) {
      width: 100%;
      top: -4%;
    }

    @media screen and ($tablet-only-comp) {
      top: -12%;
    }
  }
  .mdev-bottom-splash {
    width: 60%;
    padding-top: 17.59%;
    position: absolute;
    right: 0;
    bottom: -21%;
    z-index: -1;
    background-repeat: no-repeat;
    background-size: 100%;

    @media screen and ($phone-only-comp) {
      width: 100%;
      bottom: -3%;
    }

    @media screen and ($tablet-only-comp) {
      bottom: -14%;
    }
  }
  .mdev-render-white {
    background-color: $white;
  }
	/*--------------------------------------*/
	/* Main Component Styles                */
	/*--------------------------------------*/

</style>
