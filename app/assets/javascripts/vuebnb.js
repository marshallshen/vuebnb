var app = new Vue({
	el: $('[data-show-listing]')[0],
	data: {
		placeTypes: [],
		places: []
	},

	computed: {
		filteredPlaces: function(){
			if (this.placeTypes.length == 0 ){
				return this.places
			} else {
				var filteredPlaces = []
				for(i = 0; i < this.places.length; i ++) {
					var place = this.places[i]
					if (this.placeTypes.includes(place.place_type)){
						filteredPlaces.push(place)
					}
				}
				return filteredPlaces
			}
		}
	},

	methods: {
		fetchPlaces: function(params) {
			$.ajax({
				method: "GET",
				url: $('[data-show-listing]').data("url"),
				data: { params }
			}).done(function(response){
				app.$set("places", response)
			})
		}
	}
})

app.fetchPlaces()