function initMap() {
    var shop = { lat: 4.885731, lng: 114.931678 };
    var map = new google.maps.Map(document.getElementById('maplocation'), {
        zoom: 18,
        center: shop
    });
    var marker = new google.maps.Marker({
        position: shop,
        map: map
    });
}

/* Code retrieved from https://developers.google.com/maps/documentation/javascript/adding-a-google-map */