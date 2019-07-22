<html>
    <title>
    User Registration Form
    </title>
    <body>
    <h3>User Registration Form</h3>

    @include('errors.error')

    <form action="{{route('user.registration.form')}}" method="POST" enctype="multipart/form-data">
        {{csrf_field()}}
        <input type="text" name="username" placeholder="Your Name"><br>
        <input type="email" name="email" placeholder="Your Email"><br>
        <input type="text" name="location" placeholder="Your Location"><br>
        <input type="text" name="phone" placeholder="Your Phone"><br>
        <input type="radio" name="gender" value="Male">Male
        <input type="radio" name="gender" value="Female">Female
        <br>
        <input type="password" name="password" placeholder="Password"><br>
        <input type="password" name="password_confirmation" placeholder="Confirm Password"><br>
        <input type="file" name="image" accept="image/jpeg"><br>
        <input type="submit" name="register" value="Register"><br>


    </form>
    </body>
</html>
