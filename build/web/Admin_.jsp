ad<style>
    body {
	margin: 0;
	padding: 0;
}

.container {
	padding: 20px;
	background-color: rgba(209, 209, 209, 0.58);
	margin: auto;
	margin-top: 20px;
	line-height: 30px;
	width: 500px;
}

.title {
	text-align: center;
	text-decoration: underline;
}

.container span {
	margin-top: 10px;
	padding-left: 40px;
	display: inline-block;
	width: 30%;
}

.container input {
	min-height: 25px;
	display: inline-block;
	width: 50%;
}

#gender input {
	min-height: inherit;
}

.container textarea {
	display: inline-block;
	margin-top: 10px;
	width: 50%;
}

#gender input {
	width: auto;
}

#submit,
#reset {
	display: inline-block;
	width: auto;
	margin-top: 10px;
	margin-left: 40%;
}

#reset {
	margin-left: 10%;
}
</style>
<div class="container">
		<h2 class="title">Admin Page</h2>
         <form action="addtodatabase.jsp">
        <div id="gender"> <span>Gender</span>
            <input type="radio" value="Movie" name="show">Movie
          <input type="radio" value="Tv Show"name="show">Tv Show
          </div>
        
        <div > <span>Name of the Show </span>
            <input type="text" name="showname"> </div>
        <div > <span>Year</span>
          <input type="text" name="year"> </div>
        <div > <span>Genres</span>
            <input type="text" name="showgenres"> </div>
        <div > <span>Rating</span>
          <input type="text" name = "rating"> </div>
        <div > <span>Show URL</span>
          <input type="text"name="showurl"> </div>
       
    
        <input type="submit" id="submit" value="submit">
       
    </form>
</div>