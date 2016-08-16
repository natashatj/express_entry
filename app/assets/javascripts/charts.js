@candidate2 = document.getElementById("#candidate-2-first-name").value();
console.log(@candidate2);

$(function () {
  var data = [];
$('#container-for-chart').highcharts({
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
    // TODO: check how to deal with the DOB
    $('#candidate-1-dob').click(function () {
        var chart = $('#container-for-chart').highcharts();
        data.push(['Age', 50]);
        chart.series[0].setData(data, true);
    });

    // the button action
    $('#candidate-1-foreign-experience-one-or-two-check').one("click", function () {
        var chart = $('#container-for-chart').highcharts();
        data.push(['Foreign Experience', 50]);
        chart.series[0].setData(data,true);
    });
    $('#candidate-1-foreign-experience-three-or-more-check').one("click", function () {
        var chart = $('#container-for-chart').highcharts();
        data.push(['Foreign Experience', 50]);
        chart.series[0].setData(data,true);
    });
    $('#candidate-1-cdn-xp-years').one("click", function () {
        var chart = $('#container-for-chart').highcharts();
        data.push(['Canadian Experience', 35]);
        chart.series[0].setData(data,true);
    });
    // TODO: check how to deal with drop-down on number of years for canadian xp
    // $('#candidate-1-cdn-xp-years').change(function () {
    //     var chart = $('#container-for-chart').highcharts();
    //     data.push(['Canadian Experience', 35]);
    //     chart.series[0].setData(data,true);
    // });
    $('#candidate-1-cdn-xp-ps-greater-than-one').one("click", function () {
        var chart = $('#container-for-chart').highcharts();
        data.push(['Canadian Experience', 35]);
        chart.series[0].setData(data,true);
    });
});