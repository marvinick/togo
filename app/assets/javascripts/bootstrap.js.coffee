$ ->
  $('#food_search').typeahead
    name: "food"
    remote: "/foods/autocomplete?query=%QUERY"