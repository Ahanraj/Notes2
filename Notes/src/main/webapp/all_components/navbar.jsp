<%@page import="com.User.UserDetails"%>
<nav class="navbar navbar-expand-lg navbar-light bg-custom">
	<a class="navbar-brand" href="index.jsp">Navbar</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="addNotes.jsp">Add
					notes</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Show notes</a>
			</li>
			<%
			UserDetails user = (UserDetails) session.getAttribute("userD");
			if (user != null) {
			%>

		</ul>
		<form class="form-inline my-2 my-lg-0">
			   <a
				class="btn btn-outline-success my-2 my-sm-0" type="submit"
				href="login.jsp">user.getName()</a> <a
				class="btn btn-outline-success my-2 my-sm-0" type="submit"
				href="register.jsp">Register</a>
		</form>
		<%
		} else {
		%>
		<form class="form-inline my-2 my-lg-0">
			 <a
				class="btn btn-outline-success my-2 my-sm-0" type="submit"
				href="login.jsp">Login</a> <a
				class="btn btn-outline-success my-2 my-sm-0" type="submit"
				href="register.jsp">Register</a>
		</form>
		<%
		}
		%>
	</div>
</nav>
