$ ->
  $('#food_search').typeahead
    name: "food"
    remote: "/foods/autocomplete?query=%QUERY"

@CultiviCtrl = ($scope) ->
  $scope.entries = [
    {name: "Larry"}
    {name: "Curly"}
    {name: "Moe"}
  ]
