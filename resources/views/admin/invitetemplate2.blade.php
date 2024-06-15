@php
  $template=str_replace('{{UserFirstName}}',$first,$emailTemplate['template']);
  $template=str_replace('{{UserLastName}}',$lastname,$template);
  $template=str_replace('{{link}}','<a href="'.url('assessment?code='.$random.'&&examId='.$maingroup.'">Go to Assessment</a>'),$template);
@endphp
<b>Assessment Name: {{ $assessmentName }}</b>
<pre>
  {!! $template !!}
</pre>
