<%@ page import="java.util.Map" %>
<%@ page import="model.Automovil" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listado de Automóviles</title>

    <style>
        body {
            font-family: "Segoe UI", Arial, sans-serif;
            background-color: #eef2f7;
            margin: 0;
            padding: 40px;
        }

        h1 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 40px;
        }

        .section {
            background-color: #ffffff;
            border-radius: 8px;
            padding: 20px 25px;
            margin: 30px auto;
            max-width: 650px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.08);
        }

        .section h2 {
            margin-top: 0;
            color: #1f6aa1;
            border-bottom: 2px solid #1f6aa1;
            padding-bottom: 5px;
        }

        .auto {
            display: grid;
            grid-template-columns: 1fr auto;
            padding: 10px 0;
            border-bottom: 1px solid #e0e0e0;
        }

        .auto:last-child {
            border-bottom: none;
        }

        .modelo {
            font-weight: 600;
            color: #333;
        }

        .color {
            font-size: 0.9em;
            color: #666;
        }
    </style>
</head>

<body>

<h1>Comparación de Estructuras Map</h1>

<div class="section">
    <h2>HashMap (sin orden)</h2>
    <%
        Map<String, Automovil> hashMap =
            (Map<String, Automovil>) request.getAttribute("hashMap");

        for (Automovil a : hashMap.values()) {
    %>
        <div class="auto">
            <span class="modelo"><%= a.getModelo() %></span>
            <span class="color"><%= a.getColor() %></span>
        </div>
    <%
        }
    %>
</div>

<div class="section">
    <h2>LinkedHashMap (orden de inserción)</h2>
    <%
        Map<String, Automovil> linkedHashMap =
            (Map<String, Automovil>) request.getAttribute("linkedHashMap");

        for (Automovil a : linkedHashMap.values()) {
    %>
        <div class="auto">
            <span class="modelo"><%= a.getModelo() %></span>
            <span class="color"><%= a.getColor() %></span>
        </div>
    <%
        }
    %>
</div>

<div class="section">
    <h2>TreeMap (orden alfabético)</h2>
    <%
        Map<String, Automovil> treeMap =
            (Map<String, Automovil>) request.getAttribute("treeMap");

        for (Automovil a : treeMap.values()) {
    %>
        <div class="auto">
            <span class="modelo"><%= a.getModelo() %></span>
            <span class="color"><%= a.getColor() %></span>
        </div>
    <%
        }
    %>
</div>

</body>
</html>
