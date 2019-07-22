<html>
<body>
<h2>User Data Presentation</h2>
<table border="1px">
    <tr>
        <th>Username</th>
        <th>Email</th>
        <th>Location</th>
        <th>Phone</th>
        <th>Photo</th>
    </tr>
    @foreach($users as $user)
    <tr>
        <td>{{$user->username}}</td>
        <td>{{$user->email}}</td>
        <td>{{$user->location}}</td>
        <td>{{$user->phone}}</td>
        <td><img src="{{asset('image/'.$user->image)}}" alt="photo" width="200px"></td>
    </tr>
    @endforeach
</table>
</body>
</html>
