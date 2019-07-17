## Security tests
#### 1. cross site scripting (xss)
XSS is the most common publicly reported security vulnerability. It can spread worms, session hijackings, identity theft, denial of service attacks, theft of sensetive data and Financial fraud. 

###### Test 
Example: "<script>alert('Your croissants are limp and sad.')</script>"

###### Protection - Content Security Policy 
By setting a content security policy in the response header, you can tell the browser to never execute inline JavaScript, and to lock down which domains can host JavaScript for a page.
Example: "<meta http-equiv="Content-Security-Policy" content="script-src 'self' https://apis.google.com">"

###### Protection - Sanitizing inputs
Do not except the following to be inserted. 
⋅⋅* "
⋅⋅* #
⋅⋅* &
⋅⋅* '
⋅⋅* (
⋅⋅* )
⋅⋅* /
⋅⋅* ;
⋅⋅* <
⋅⋅* >

#### 2. sql injection
Ensure database tables and fields aren't call the exact same as shown on front-end. 

###### Test
1. Copy this code to test if you can inject: 
' or 1=1; --

###### Prevention - Parameterized Statements
1. Define which user we want to find.
String email = "user@email.com";

2. Construct the SQL statement we want to run, specifying the parameter.
String sql = "SELECT * FROM users WHERE email = ?";

3. Run the query, passing the 'email' parameter value...
ResultSet results = stmt.executeQuery(sql, email);

###### Prevention - Sanitizing inputs
' or 1=1;-- looks like a suspicous password. Developers should ensure applications reject inputs that looks suspicous. 

⋅⋅* Check that supplied fields like email addresses match a regular expression.
⋅⋅* Ensure that numeric or alphanumeric fields do not contain symbol characters.
⋅⋅* Reject (or strip) out whitespace and new line characters where they are not appropriate.

#### 3. Broken authentication 
Packets can be intercepted, hashing/encrypting sensitive data prevents the intercepter from obtaining any useful data. 
1. Password Hashing + salt
