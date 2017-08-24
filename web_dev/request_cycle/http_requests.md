# Answers to how the web works, as understood by Miguel A. Ibarra, Jr.

1. What are some common HTTP Status Codes?

* 404 Client Error is probably one of the most common errors a layperson would know about. This is an error that occurs when the user is the cause of an error like when the user (client) incorrectly types the name of a webpage or when the user is trying to reach a webpage that no longer exists.

* 301 Redirection indicates that the webpage moved permenantly and is no longer at the requested address. The code gives information that all and future requests should be directed to a different URI.

* 502 Server Error is a bad gateway error in which the server was not given a valid response from an upstream server.

* 418 Client Error is a obsure but very funny error code assigned to give a message called "418: I'm a teapot." This error code was developed as an April Fool's Day joke by the IETF, which are the people who control the standards for creating HTTP status codes back in 1998 and since it is a standard error code, it just sits there as a funny little Easter egg on the web. You can see an implementation of it on Google at https://www.google.com/teapot.

2. What is the difference between a GET request and a POST request? When might each be used?

A GET request is a method that requests data from a specified resource whereas the POST request submits data to be process to a specified resource. GET requests should only be used to retrieve data like obtaining news articles for a news website's homepage. POST requests are used for destructive actions like creation, editing and deletion, and because of this feature, POST requests are more secure than GET requests because the information is not stored onto the URL. POST requests are generally good for collecting sensitive data, like password and username info from the client as the information is not getting stored into the URL.

3. What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

An HTTP cookie is a small bit of data sent to the client from the server so that the client may store the data so that the webpage remembers information about the client. Cookies are commonly used to store information about a client's user preferences, themes or settings. Cookies however can also be used to gather data about a user or client, which is why sometimes they can be a concern over issues regarding privacy.
