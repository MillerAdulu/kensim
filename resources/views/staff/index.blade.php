<!DOCTYPE html>
<html>
<body>

<h2>All Records</h2>
    @foreach($staff as $worker)
        {{ $worker->email }} 
        {{ $worker->staff_name }} <br>
    @endforeach
</body>
</html>
