<template>
  <section class="mdev-map-location"> 
      <div class="mdev-google-map" id="map"></div>
      <div class="mdev-building-info">
        <h3>Keeping The Essence of the</h3>
        <h2>Kellogg's Building</h2>

        <p>
          We know that the building is a unique and significant part of London's history and we want to preserve the look and feel of the space as much as possible. You'll see signs of the old Factory with exposed pipes and concrete, with minimal decorations to detract from the building's character. The Factory will be a space filled with memories, and we hope to build new positive ones for London.
        </p>
      </div>

  </section>
</template>

<script>
  export default {
    data: function () {
      return {
      
      };
    },
    
    mounted: function() {
      var uluru = {lat: 42.9920278, lng: -81.21443060000001};
      var ulurucenter = {lat: 42.9920278, lng: -81.21711194515228};
      var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 17,
        center: ulurucenter,
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
        position: uluru,
        map: map
      });
    }
  }
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
    height: 100vh;
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
  }

</style>
