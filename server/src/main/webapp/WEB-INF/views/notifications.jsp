<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytags" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>FitZen</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/component/header.css">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
</head>

<body>
    <mytags:header/>


    <div class="container mt-5">

        <h2>Notifications</h2>
          <span class="badge bg-primary">All</span>
          <span class="badge bg-secondary">Last Week </span>

        <div class="row">
            <c:forEach var="notification" items="${notifications}">
                <div class="col-md-9 mt-2"> <!-- Use col-md-6 to make each card take half of the width -->
                    <div class="card mb-3" style="background-color: lightblue; position: relative;">
                        <button type="button" class="btn-close" data-n-id="${notification.id}"
                                style="position: absolute; top: 5px; right: 5px;" aria-label="Close"></button>
                        <div class="card-body p-4">
                            <p class="card-text">${notification.message}</p>
                        </div>

                    </div>
                </div>
            </c:forEach>
        </div>



    </div>

    <script type="module" src="js/index.js"></script>
    <mytags:footer />
</body>

</html>
