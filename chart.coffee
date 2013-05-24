$(document).ready ->
  $.ajax(
    url: 'http://localhost:80'
    method: 'get'
    jsonpCallback: 'callback'
    dataType: 'jsonp'
    success: (data) ->
      Morris.Bar(
        element: 'chart'
        data: data
        xkey: 'title'
        ykeys: ['value']
        labels: ['Cities']
        barColors: ['black']
        gridTextColor: ['black']
        gridTextSize: 15
      )
  )