<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>View {{ $_GET['name'] }} Result</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body style="background-color: rgb(233, 233, 233)">
    <div class="mt-5 pt-5">
        <h1 class="text-center mb-3">{{ $_GET['name'] }} Results</h1>
    </div>
    <div class="container bg-light p-3 rounded mb-5">
     
        @foreach ($dates as $date)
        @if ($date['attemptdate']!='')
            
        
        
        @php
        
            $totalCount=0;
            $totalScore=0;
        @endphp
            <h3 class="p-3">Date: {{ $date['attemptdate'] }}</h3>
            <div class="row">
                <div class="col-lg-8 mx-auto">
                    <table class="table table-bordered mb-4">
                        <thead>
                            <tr>
                                <th>Categories</th>
                                <th>Scores</th>
                            </tr>
                        </thead>
                        <tbody>
                          @foreach ($results as $result)
                         
                           @if ($result->attemptdate == $date['attemptdate'])
                           @php
                               $totalCount+=$result->count;
                               $totalScore+=$result->total_answer_sum;
                           @endphp
                               
                           <tr>
                               <th>{{ $result->category_name }}</th>
                               <td>{{ ($answer=$result->total_answer_sum/$result->count)>0 ? number_format($answer,1) : "0" }}</td>
                           </tr>
                           @endif
                         
                            @endforeach
                            <tr>
                                <th class="text-center" colspan="2">
                                    Total Assesment Result : <span>{{ ($answer=$totalScore/$totalCount)>0 ? number_format($answer,1) : "0" }}</span>
                                </th>
                                
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
           
            @endif
        @endforeach
    </div>

</body>

</html>
