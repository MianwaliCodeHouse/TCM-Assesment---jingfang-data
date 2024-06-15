<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>View {{ $_GET['name'] }} Result</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
</head>

<body style="background-color: rgb(233, 233, 233)">


    <div class="container vh-100">
        <div class="mt-5 pt-5">
            <div class="accordion" id="accordionExample">
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            Note:
                        </button>
                    </h2>
                    <div id="collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            {{ $note }}
                        </div>
                    </div>
                </div>
            </div>
            <div class="mt-5 h-75" id="container" style="B"></div>

        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

        <script src="https://code.highcharts.com/highcharts.js"></script>

        <script type="text/javascript">
            var categories = @json($categories);
            var data = @json($data);
            console.log(data)



            Highcharts.chart('container', {

                title: {
                    text: '{{ $graph_title }}',
                    style: {
                        fontSize: '34px', // Increase the font size

                    }
                },
                subtitle: {
                    text: '{{ $graph_subtitle }}'
                },
                xAxis: {
                    categories: categories
                },
                yAxis: {
                    title: {
                        text: 'Scores'
                    },
                    max: 100,
                    tickInterval: 10
                },
                legend: {
                    layout: 'vertical',
                    align: 'right',
                    verticalAlign: 'middle'
                },
                plotOptions: {
                    series: {
                        allowPointSelect: true
                    }
                },
                series: data,
                responsive: {
                    rules: [{
                        condition: {
                            maxWidth: 500
                        },
                        chartOptions: {
                            legend: {
                                layout: 'horizontal',
                                align: 'center',
                                verticalAlign: 'bottom'
                            }
                        }
                    }]
                }
            });
        </script>
</body>

</html>
