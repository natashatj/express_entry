    <script type="text/javascript">
      $(function () {
        var data = [];
      $('#container').highcharts({
          chart: {
              type: 'pie',
              options3d: {
                  enabled: true,
                  alpha: 45
              }
          },
          title: {
              text: 'Assessment Points'
          },
          subtitle: {
              text: 'Overview for each requirement'
          },
          plotOptions: {
              pie: {
                  innerSize: 100,
                  depth: 45
              }
          },
          series: [{
              name: 'Points',
              data: data   
          }]
      });

      // $('#education-button').click(function () {
      //     var chart = $('#container').highcharts();
      //     data.push(['Education', 100]);
      //     chart.series[0].setData(data, true);
      // });
      // the button action
      $('#foreign-experience-one-or-two-check').one("click", function () {
          var chart = $('#container').highcharts();
          data.push(['Foreign Experience', 50]);
          chart.series[0].setData(data,true);
      })
  });
    </script>