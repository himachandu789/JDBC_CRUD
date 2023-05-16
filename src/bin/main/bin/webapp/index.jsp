<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>HomePage</title>
	<link rel="stylesheet" href="styles.css"> <!-- Add a separate CSS file for styling -->
</head>
<body>

	<header>
		<c:import url="/include/header.jsp">
			<c:param name="title" value="HomePage" />
		</c:import>
	</header>

	<div class="container">
		<h1>Hello, Welcome to our page!</h1>
		<p>Stark Industries, later also known as Stark International,
		<p>Created by Robert Bernstein, Stan Lee, and Jack Kirby, the company first appeared in Tales of Suspense #39 (April 1962).[1] Stark Industries is depicted as being owned and run by businessman and namesake Tony Stark, who is also known as Iron Man, and was founded by Tony's father, Howard Stark.
		<p>Stark Innovations, Stark Enterprises, and Stark Resilient, is a fictional company appearing in American comic books published by Marvel Comics.
		<p>In the Marvel Cinematic Universe, Stark Industries has a logo modeled after the defense contractor Lockheed Martin[2] and is listed on the New York Stock Exchange as SIA. During the press conference scene, Stark is seen entering a building that resembles the entrance to Lockheed Martin's Skunk Works facility. An airplane extremely similar to the Lockheed YF-22 stood as a statue in front of the Stark Industries facility, exactly like the prototypes on display at Skunk Works facility in Palmdale, California.
	</div>

	<hr/>

	<blockquote>
		<p>"I came to realize that I have more to offer this world than just making things that blow up. And that is why, effective immediately, I am shutting down the weapons manufacturing division of Stark International until such a time as I can decide what the future of the company will be."
		<p>―Tony Stark
	</blockquote>

	<footer>
		<c:import url="/include/footer.jsp"></c:import>
	</footer>

</body>
</html>
