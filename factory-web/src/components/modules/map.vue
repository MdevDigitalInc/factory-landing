<template>
  <section class="mdev-map-location" @click="openMap"> 
      <div class="mdev-google-map" id="map"></div>
      <div class="mdev-main-wrapper">
        <div class="mdev-building-info" @click.stop>
          <h3>Keeping The Essence of the</h3>
          <h2>Kellogg's Building</h2>

          <p>
            We know that the building is a unique and significant part of London's history and we want to preserve the look and feel of the space as much as possible. You'll see signs of the old Factory with exposed pipes and concrete, with minimal decorations to detract from the building's character. The Factory will be a space filled with memories, and we hope to build new positive ones for London.
          </p>
        </div>
       </div>
  </section>
</template>

<script>
  export default {
    
    mounted: function() {
      var windowSize = $(window).width();
      var kelloggs = {lat: 42.9920278, lng: -81.21443060000001};

      if ( windowSize <= 640 ) {
        var kelloggscenter = {lat: 42.98977719559234, lng: -81.21444046497345};
        var zoom = 16;
      }
      else if ( windowSize >= 1921 ) {
        var kelloggscenter = {lat: 42.9920278, lng: -81.21711194515228};
        var zoom = 18;
      }
      else {
        var kelloggscenter = {lat: 42.9920278, lng: -81.21711194515228};
        var zoom = 17;
      }

      var map = new google.maps.Map(document.getElementById('map'), {
        zoom: zoom,
        center: kelloggscenter,
        zoomControl: false,
        mapTypeControl: false,
        scaleControl: false,
        streetViewControl: false,
        rotateControl: false,
        fullscreenControl: false,
        scrollwheel: false,
        navigationControl: false,
        mapTypeControl: false,
        scaleControl: false,
        draggable: false,
        disableDoubleClickZoom: true,
        panControl: false,
        streetViewControl: false,
        keyboardShortcuts: false,


        styles: [
          {
            "elementType": "geometry",
            "stylers": [
              {
                "color": "#f5f5f5"
              }
            ]
          },
          {
            "elementType": "labels.icon",
            "stylers": [
              {
                "visibility": "off"
              }
            ]
          },
          {
            "elementType": "labels.text.fill",
            "stylers": [
              {
                "color": "#616161"
              }
            ]
          },
          {
            "elementType": "labels.text.stroke",
            "stylers": [
              {
                "color": "#f5f5f5"
              }
            ]
          },
          {
            "featureType": "administrative.land_parcel",
            "elementType": "labels.text.fill",
            "stylers": [
              {
                "color": "#bdbdbd"
              }
            ]
          },
          {
            "featureType": "landscape.man_made",
            "elementType": "geometry.fill",
            "stylers": [
              {
                "color": "#a0a0a0"
              }
            ]
          },
          {
          "featureType": "poi",
          "elementType": "geometry",
          "stylers": [
            {
              "color": "#eeeeee"
            }
          ]
          },
          {
          "featureType": "poi",
          "elementType": "labels.text.fill",
          "stylers": [
            {
              "color": "#757575"
            }
          ]
          },
          {
          "featureType": "poi.park",
          "elementType": "geometry",
          "stylers": [
            {
              "color": "#e5e5e5"
            }
          ]
          },
          {
          "featureType": "poi.park",
          "elementType": "labels.text.fill",
          "stylers": [
            {
            "color": "#9e9e9e"
            }
          ]
          },
          {
          "featureType": "road",
          "elementType": "geometry",
          "stylers": [
            {
            "color": "#ffffff"
            }
          ]
          },
          {
          "featureType": "road",
          "elementType": "geometry.fill",
          "stylers": [
            {
            "color": "#cdcdcd"
            }
          ]
          },
          {
          "featureType": "road.arterial",
          "elementType": "labels.text.fill",
          "stylers": [
            {
            "color": "#757575"
            }
          ]
          },
          {
          "featureType": "road.highway",
          "elementType": "geometry",
          "stylers": [
            {
            "color": "#dadada"
            }
          ]
          },
          {
          "featureType": "road.highway",
          "elementType": "labels.text.fill",
          "stylers": [
            {
            "color": "#616161"
            }
          ]
          },
          {
          "featureType": "road.local",
          "elementType": "labels.text.fill",
          "stylers": [
            {
            "color": "#9e9e9e"
            }
          ]
          },
          {
          "featureType": "transit.line",
          "elementType": "geometry",
          "stylers": [
            {
            "color": "#e5e5e5"
            }
          ]
          },
          {
          "featureType": "transit.station",
          "elementType": "geometry",
          "stylers": [
            {
            "color": "#eeeeee"
            }
          ]
          },
          {
          "featureType": "water",
          "elementType": "geometry",
          "stylers": [
            {
            "color": "#c9c9c9"
            }
          ]
          },
          {
          "featureType": "water",
          "elementType": "labels.text.fill",
          "stylers": [
            {
            "color": "#9e9e9e"
            }
          ]
          }
          ]
      });
      var marker = new google.maps.Marker({
        position: kelloggs,
        map: map
      });
    },
    methods: {
      openMap: function() {
        var url = "http://bit.ly/2vFqJr5";
        window.open(url);
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

  .mdev-map-location {
    position: relative;
    overflow: hidden;
    padding: 20vh 0;

    @media screen and ( $phone-only-comp ) {
      padding: 60vh 0 10vh 0;
    }
  }

  .mdev-google-map {
    width: 100%;
    position: absolute;
    top: 0;
    z-index: 1;
    bottom: 0;
    background: pink;
  }

  .mdev-building-info {
    position: relative;
    z-index: 10;
    width: 50%;
    padding: 40px;
    color: $factory-white;
    border: 8px solid $factory-red;
    background-color: rgba( 0, 0, 0, .6);

    @media screen and ( $phone-only-comp ) {
      width: 100%;
      padding: 20px;
    }

    h2, h3 {
      font-family: $body-font;
    }

    h2 {
      letter-spacing: 5px;
    }

    h3 {
      letter-spacing: 4px;
    }
  }
  


</style>
