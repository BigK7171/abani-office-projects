<html>
<head>
    <title>City Distance</title>
    <script src='dwr/engine.js'></script>
    <script src='dwr/util.js'></script>
    <script src='dwr/interface/CityService.js'></script>
    
    <script type="text/javascript">
        dwr.engine.setActiveReverseAjax(true);
        function find() {
            var srcCity = dwr.util.getValue("srcCity");
            var destCity = dwr.util.getValue("destCity");
            CityService.findDistance(srcCity, destCity, function(data) {
                dwr.util.setValue("distance", data);
            });
        }
    </script>
</head>

<body>
<form>
    <table>
        <tr>
            <td>Source City</td>
            <td><input type="text" id="srcCity"/></td>
        </tr>
        <tr>
            <td>Destination City</td>
            <td><input type="text" id="destCity"/></td>
        </tr>
        <tr>
            <td>Distance</td>
            <td><span id="distance"/></td>
        </tr>
        <tr> 
            <td colspan="2"><input type="button" value="Find" onclick="find()"/></td>
        </tr> 
    </table>  
</form>
</body>
</html> 
