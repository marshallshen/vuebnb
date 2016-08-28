var app = new Vue({
	el: $('[data-show-listing]')[0],
	data: {
		placeTypes: [],
		places: [],
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