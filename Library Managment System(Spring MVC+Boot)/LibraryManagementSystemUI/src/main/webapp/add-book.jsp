<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    <!-- Include the Spring form tag library -->

     

    <%@ page language="java" contentType="text/html; charset=UTF-8"     pageEncoding="UTF-8" %>

        <!-- Set the page encoding and content type -->

         

        <%@ page import="java.util.*" %>

            <!-- Import the java.util package -->

             

            <!DOCTYPE html>

            <html>

            <head>

                <title th:text="${title} ? ${title} : 'Book Registration Form'">Book

                        Registration Form</title>

                <!-- Set the page title using Thymeleaf template engine expression -->

                 

                <meta name="viewport" content="width=device-width, initial-scale=1">

                <!-- Set the viewport for mobile devices -->

                 

                <link rel="stylesheet"     href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

                <!-- Include Bootstrap CSS -->

                 

                <link rel="stylesheet"    
                    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

                <!-- Include Font Awesome CSS -->

                 

                <link type="text/css" rel="stylesheet"     href="${pageContext.request.contextPath}/css/addbook.css">

                <!-- Include custom CSS -->

                <link rel="shortcut icon"    
                    href="https://th.bing.com/th/id/OIP.GkXeVQi02PpxHx5o9i9okQHaFT?pid=ImgDet&rs=1">

                 

                 

            </head>

             

             

             

            <h1 id="book-title">Book Registration Form</h1>

            <!-- Set the page header -->

             

            <form:form action="/book/add" modelAttribute="book">

                    <!-- Create a Spring form with action and modelAttribute properties -->

                 

                    <div class="form-group">

                            <label for="id">Book ID:</label> <input type="number"            
                        oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                    min="1" id="id" name="id" class="form-control"            
                        placeholder="Enter book Code" required />

                     

                     

                            <!-- Create an input field for book ID with a label -->

                     

                        </div>

                 

                    <div class="form-group">

                            <label for="name">Book Name:</label>

                           
                    <form:input path="name" id="name" class="form-control"             placeholder="Enter book name"
                        required="true" />

                           
                    <form:errors path="name" />

                     

                     

                            <!-- Create a form input field for book name using the Spring form tag -->

                     

                       
                </div>

                 

                    <div class="form-group">

                            <label for="date">Date:</label> <input type="text" id="date"            
                        class="form-control"             value="<%=(new java.util.Date()).toLocaleString()%>"
                        readonly />

                           
                    <!-- Create an input field for the date using the current system date and time, which is displayed as a string in the format returned by the toLocaleString method of the java.util.Date class -->

                     

                        </div>

                 

                    <div class="form-group">

                            <label for="author">Author:</label>

                            <form:select path="author.id" id="author"             class="form-control selectpicker"
                        data-live-search="true">

                                   
                        <form:options items="${authorMap}" />

                               
                    </form:select>

                            <!-- Create a form select field for the author using the Spring form tag -->

                        </div>

                    <button type="submit" class="btn btn-primary btn-block btn-hover">Submit</button>

                    <!-- Create a submit button for the form -->


            </form:form>

            <!-- End of Spring form -->

             

            <script     src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

            <!-- Include jQuery -->

             

            <script     src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

            <!-- Include Popper.js -->

            <script     src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

             

            <script     src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

             

            <script>

                $(document).ready(function () {

                    $("h1").hover(function () {

                        $(this).addClass("text-danger");

                    }, function () {

                        $(this).removeClass("text-danger");

                    });
                });
            </script>
            </body>
            </html>