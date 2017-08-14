<template>
  <section class="mdev-activities">
    <div class="">

      <div class="mdev-activity-row flex flex-hor-between order-alpha climb-activity">
        <div class="mdev-activity-description">
          <h1>Climb</h1>
          <p>
            Start at 16ft and make your way up the 75ft ropes course. Zipline between platforms and even take the plunge off the 70ft drop (if you dare)!
          </p>
        </div>
        <div class="mdev-activity-image climb-image" :style="climb.background">
          <img :src="climb.image" />  
        </div>
      </div>

      <div class="mdev-activity-row flex flex-hor-between order-beta jump-activity">
        <div class="mdev-activity-description">
          <h1>Jump</h1>
          <p>
            21,000 square feet of trampoline excitement. We've got dodgeball courts, tumble tracks, a 7,000 sqft airbag, and a joust pit. Test your skills on the Ultimate Warrior course or try to tame the Adrenalator, but make sure to save some energy for Trampoline Meltdown.
          </p>
        </div>
        <div class="mdev-activity-image jump-image" :style="jump.background">
          <img :src="jump.image" />  
        </div>
      </div>

      <div class="mdev-activity-row flex flex-hor-between order-alpha kid-activity">
        <div class="mdev-activity-description">
          <h1>Kid Play</h1>
          <p>
            For the little ones, we are building an amazing space just for them. Climbing zones, tubes, slides and soft play - they will challange their bodies and take on new adventures.
          </p>
        </div>
        <div class="mdev-activity-image kids-image" :style="kids.background">
          <img :src="kids.image" />  
        </div>
      </div>

      <div class="mdev-activity-row flex flex-hor-between order-beta game-activity">
        <div class="mdev-activity-description">
          <h1>Game</h1>
          <p>
            4,000+ sq ft of immersive arcade entertainment, 40+ games to enjoy, with options for all ages. Challenge friends head-to-head or yourself for the high score. finish your experience by redeeming your electronic tickets for prizes!
          </p>
        </div>
        <div class="mdev-activity-image game-image" :style="game.background">
          <img :src="game.image" />  
        </div>
      </div>

      <div class="mdev-plus-activities">
        <img class="desktop" :src="loadImage('shape-activies.png')" />
        <img class="mobile" :src="loadImage('shape-activies-mob.png')" />
      </div>
    </div>
  </section>
</template>

<script>
  export default {
    data: function() {
      return{
        climb: {
          background: {
            backgroundImage: 'url(' + this.loadImage('shape-green.png') + ')',
          },
          image: this.loadImage('ropes.png') 
        },
        jump: {
          background: {
            backgroundImage: 'url(' + this.loadImage('shape-red.png') + ')',
          },
          image: this.loadImage('rings.png') 
        },
        kids: {
          background: {
            backgroundImage: 'url(' + this.loadImage('shape-yellow.png') + ')',
          },
          image: this.loadImage('climbing.png') 
        },
        game: {
          background: {
            backgroundImage: 'url(' + this.loadImage('shape-blue.png') + ')',
          },
          image: this.loadImage('controller.png') 
        },
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
  @media screen and ($phone-only-comp) {
     .flex {
        flex-wrap: wrap;
     } 

     .mdev-activity-description {
        width: 100% !important; 
     }

     .mdev-activity-image {
      width: 100% !important;
      margin-bottom: 40px;

      img {
        width: 70% !important;
      }
     }
     .order-beta,
     .order-alpha {
      .mdev-activity-description {
        order: 1 !important;
        padding: 40px 60px !important;
        text-align: center;
      }
      .mdev-activity-image {
        order: 2 !important;
      }
     }
  }
  @media screen and ($tablet-only-comp) {
     .flex {
        flex-wrap: wrap;
     } 

     .mdev-activity-description {
        width: 100% !important; 
     }

     .mdev-activity-image {
      width: 100% !important;
      margin-bottom: 40px;

      img {
        width: 70% !important;
      }
     }
     .order-beta,
     .order-alpha {
      .mdev-activity-description {
        order: 1 !important;
        padding: 40px 60px !important;
        text-align: center;
      }
      .mdev-activity-image {
        order: 2 !important;
      }
     }
  }

  .mdev-activities {
    padding: 80px 0;
    position: relative;
    z-index: 200;
  }

  .order-beta {
    .mdev-activity-description {
      order: 2;
    }
    .mdev-activity-image {
      order: 1;
      left: 0;
    }
  }
  .order-alpha {
    .mdev-activity-description {
      order: 1;
    }
    .mdev-activity-image {
      order: 2;
      right: 0;
    }
  }

  .mdev-activity-image {
    background-repeat: no-repeat;
    background-size: 100%;

    @media screen and ($laptop-up-comp) {
      margin-bottom: -50px;
    }
    img {
      width: 100%;

      @media screen and ($laptop-up-comp) {
        width: 70%;
      }
    }
  }

  .mdev-activity-description {
    h1 {
      font-family: $body-font;
      letter-spacing: 3px;
    }
  }

  .climb-activity {
    .mdev-activity-description {
      width: 54%;
      padding-top: 130px;
      padding-left: 32%;

      @media screen and ($laptop-only-comp) {
        padding-left: 15%;
      }
    }

    .mdev-activity-image {
      width: 46%;
      position: relative;
      float: right;
      right: 0;
      background-position-x: right;

      @media screen and ($laptop-up-comp) {
        margin-bottom: -80px;
      }
      @media screen and ($laptop-only-comp) {
        width: 68%;
      }


      img {
        position: relative;
        right: 0;
        float: right;
        top: -140px;

        @media screen and ($laptop-up-comp) {
          width: 64%;
        }

        @media screen and ($tablet-only-comp) {
          top: 0;
        }

        @media screen and ($phone-only-comp) {
          top: 0;
        }
      }
    }
  }

  .kid-activity {
    .mdev-activity-description {
      width: 54%;
      padding-top: 130px;
      padding-left: 30%;
    }

    .mdev-activity-image {
      width: 46%;
      float: right;
      position: relative;
      right: 0;
      background-position-x: right;

      img {
        position: relative;
        right: 0;
        float: right;
        width: 100%;

        @media screen and ($laptop-up-comp) {
          width: 85%;
          margin: 50px 0;
        }
      }
    }
  }

  .jump-activity {
    @media screen and ($laptop-up-comp) {
      margin-top: -200px;
    }
    .mdev-activity-description {
      width: 54%;
      padding-top: 130px;
      padding-right: 30%;

      @media screen and ($laptop-only-comp) {
        padding-right: 10%;
      }
    }

    .mdev-activity-image {
      width: 46%;
      clip-path: polygon(0% 8%, 100% 0%, 100% 100%, 0 100%);

      @media screen and ($laptop-only-comp) {
        width: 80%;
      }
      
      @media screen and ($laptop-up-comp) {
        img {
          width: 76%;
          margin-top: -120px;
          position: relative;
          margin-bottom: 60px;
        }
      }
    }
  }

  .game-activity {
    .mdev-activity-description {
      width: 54%;
      padding-top: 130px;
      padding-right: 32%;

      @media screen and ($laptop-only-comp) {
        padding-right: 12%;
      }
    }

    .mdev-activity-image {
      width: 46%;
      position: relative;
      float: left;
      left: -60px;

      img {
        position: relative;
        left: 0;
        float: left;
        width: 100%;

        @media screen and ($laptop-up-comp) {
          width: 66%;
          margin: 0 0 100px -20px;
        }
      }
    }
  }

  .mdev-plus-activities {
    width: 60%;
    margin: 40px auto;

    img {
      width: 100%;
    }
    @media screen and ($phone-only-comp) {
      width: 90%;
    }
  }

  .desktop {
    display: none;

    @media screen and ($laptop-up-comp) {
      display: block;
    }
  }

  .mobile {
    display: block;

    @media screen and ($laptop-up-comp) {
      display: none;
    }
  }
</style>
