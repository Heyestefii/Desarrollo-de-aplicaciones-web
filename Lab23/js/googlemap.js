function loadMap() {
	var mex = {lat: 25.6787037, lng: -100.2843011};
    map = new google.maps.Map(document.getElementById('map'), {
      zoom: 15,
      center: mex
    });

    var marker = new google.maps.Marker({
      position: mex,
      map: map
    });

		var cdata = JSON.parse(document.getElementById('data').innerHTML);
}
