<#macro page>
  <!DOCTYPE HTML>
  <html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>OnlineShop</title>
    <link rel="icon" href="/images/favicon.ico">
    <link rel="stylesheet" href="/css/styles.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,400;0,600;1,400&display=swap" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  </head>

  <body class="bg">
  <#nested>
  <#include "footer.ftlh"/>
  </body>
  </html>
</#macro>