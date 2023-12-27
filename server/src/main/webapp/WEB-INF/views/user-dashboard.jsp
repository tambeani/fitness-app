<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="custom" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>FitZen</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.17.0/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/component/header.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</head>

<body>
    <custom:header />

    <div class="container mt-5">
        <div class="row">
            <div class="col-md-3">
                <custom:card
                    imageSrc="/images/profile.png"
                    title="Hello Raveena!"
                    text="Welcome back to FitZen! Your Health Hub.<br/>Stats:<br/>-<br/>Body Weight: 54 kg<br/>BMI: 18.23"
                    backgroundColor="white"
                    marginTop="0"
                    textColor="black"
                />
            </div>
            <div class="col-md-3 ms-6">
                <custom:card
                    title="15% weight loss!"
                    text="Great news! You've lost 4 kgs since you started.</br> Your dedication is paying off! "
                    backgroundColor="black"
                    marginTop="0"
                    textColor="white"

                />
                </div>

                   <div class="col-md-3 ms-6">
                    <custom:card
                        title="5 Rewards Received!</br></br>"
                        text="You've earned 5 rewards so far! <br>Keep up the excellent work! "
                        backgroundColor="black"
                        marginTop="0"
                        textColor="white"

                    />
        </div>

        <div class="row">
            <div class="col-md-3">
                <custom:card
                    title="Your current challenge:"
                    text="30-day No sugar challenge"
                    backgroundColor="black"
                    marginTop="5"
                    textColor="white"
                    buttonText="Click me"
                    buttonHref="#"
                />
            </div>

        </div>
    </div>

    <script type="module" src="js/index.js"></script>

    <custom:footer />
</body>

</html>
