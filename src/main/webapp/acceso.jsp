<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Cine Jungla - Acceso</title>
    <link rel="stylesheet" href="global-style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body id="acceso">
<div id="empleado" class="card" style="width: 18rem;">
    <img src="https://us.123rf.com/450wm/ahasoft2000/ahasoft20001607/ahasoft2000160700035/60449629-icono-del-personal-estilo-vector-es-s%C3%ADmbolo-ic%C3%B3nico-plana-con-%C3%A1ngulos-redondeados-de-color-gris-fond.jpg?ver=6" class="card-img-top" alt="...">
    <div class="card-body">
        <h5 class="card-title">Empleados</h5>
        <p class="card-text">Acceso unico a Empleados y directivos de Cine Jungla</p>
        <a href="login.jsp" class="btn btn-primary">acceder</a>
    </div>
</div>
<div id="cliente" class="card" style="width: 19.5rem;">
    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAkFBMVEX///8jHyAAAADV1NUhGxwvKyy9vLz6+fkfGxwJAAAOBQgSCw2enZ3z8/MZFBUeGRrn5+fg39+ysbF8e3sMAAUWEBGCgIHGxcWJh4i5uLhDQEGpqKhlY2M7ODmYl5eQj49VUlNKR0hvbW1cWlqko6MoJCUyLy/t7e3b2trNzc1GQ0R3dXZycHFaWFg9OzxQTU2qdCMjAAAHsklEQVR4nO2de3eiPBCHa1yEEK4Cioqgtt7aXfv9v90Lb08lQVQCAYJnnr/2HBeZn7nMZDJJ394AAAAAAAAAAAAAAAAAAAAAAABYTPc8jcOZ54Xx9OyafZsjmnm8UQKEdRIEAdExIsomOfdtlDDUyQ4hYmsjGs0mCEVztW/jBOAke2SNyrHQPnb6NrAhjqfp2h19/zelbnlD1qjGPnkg7weiJ4Ptq/MRfqovw9/P+za1FuoMPeqfTF9F3gCb0fn0K+rL0D/dvg3mZY7vTaDlWGhgPXVR2kM1K/X3JLBKey9a9G00Dyt0I8DWEbpEXhiGXnRBSLdvJU77Nrs6i6JATUcX45zHourZuKAbRzmcVpwXBGr4UBK6OLFS7MpDGYtuoXHwelXuC9TVmnWYGhnEjKp+MrOojeL7vk5NEDMereUQ/KLH+EH98rhZ3IvO/HevIysbwA5C9NRi9Yt9YNKFkU1QmXUgMio8EtMStX3rJjYkofso+qj0jEFL9JOWLWyIQ4+qSi2YwbQikXu96FHrQY5Z44v6YYjUk41DOQp7yfHgmnIagcyNmFBtgXi8t0v1Uz1uzb7GqKN8IsVVB+EPSR7daLa8bn+St4S25jPTXOc/jsTh6S4fhtxLoVXeiNauFetEQDWhwtvTVIVqRFm7KRWw1Zgt4tzRIFkT/gllI/+M7+S/D5E1rtlcnRqXL/zlkj++EW2aGMx8JOl8ruIH4+pMtYOcm29uw4F0prqpnGt9ykK/ThuYuNkv1D7Tq4VarWSEurz2cixnYjG+jiMrqvUF0TVgkDQ0Da/jMKi3APKC6zgMBdsmhllTA/MvCGaCbRND4yZo3AnaprFC6dvw9cdhHjq/6ly6enl/+PoxTdO4dCx9XPr6a4um68Ol9OtDZo1/5H56CGt8Ok/D303zwF3idCKda+N9lsm1tWGcEHKXze/RpoPIl1I5b5sz560OI+dNbwBz7lvE1L7FSNaE8JugvSdfzqD0h9r7h0tq/9CSef/w7aveHrBH7wHLuTb8xaGrnivv4zOlClJvAaeETC3GqtIzH7RALPMozFA17noaY1j1NNw1UW8z9gF5feGVL6ZQzV8+qWtbMmVwWM4EDYu6LNQmGg9qE41CbeJWYmef4xYKaPH6Xow6LdaX6pLPo78Ua4RtrBi360XHUHCh2FvS9EwJ05I6760xNn+7oGqOjW1Jnbf0lZc55bX65HPnzcKZFy3J0Gv1s1YsO1NhZ+ctgsC6VZedDBpQC2bMCeeZGTKYMfhLwdE9wd/KmSF9CNfZtdkg/OANk5H+XF0KHg0gVLtDSCqcIQ1kzY5WwvF0/c+j/qkHgz4HnOHE1oOz3FYydH0Z6iTSb8/jWwSR3cBc4APUebg5+AiT3zsV9MMmeYnrBmiyezGSNGabhfHqBe/FAICBoJpHJ+Novtgc48wXhhd9rw/KfqTZduo29sphvY08Y3EeuDdUjxNjp6AUPV0Tapr2G938Sf+drhX17KPDzpgch9im5mn195BKK79dgHH9qdDD34/ToPzHcbE7IBxUXTylMgM/bczpQPrscbXVedTljYn17Yq/hqNjzMk7KuYIObAxel/I3F3dULm7jqiKhfahrBmNcUQIf+e8RSN6NO5bTAnjTePmy7HQVjaNp51AfRk2ik59i6IwQxI8ttciPkY02CelieGcAM+kmXMm+7s5tWwpj1Cw3CWr6eR8cp3j8ei4p/Nkukp2yyD9jNyPCfS9HDkAM7qTF7UD5B/ek8n4flOY40nyviYoKG9ODUUSNONZKU0YWhgtvWmlpbzqTr0lKr85i+x7T/YbZf49ddz/Vi5POK26q/dSkTZn9ZhwdmXbaP5mWquSfbohJZcsoj4rFdV/N9cG2mgd1w9JnPhy63X8TW+LK3NTHII22k6amaNONqjY78mmr/nmmxT1fYqYF87fRY3ku59WLAjU8FrUFtL8grWCREHfzIXHjsFAEznpfWhskIR7OK5XKEZA72IX6M574furFQEK5MQEalrlQsvqfLCjUe86EGeunbNaiTzGCvOOOsdwGsCUhAbrdrIrxzU9GCteHCYIk351sGzLXZlL5j1desWQGoXWpb03m3SdY5dHZ4/UfVDaqM0sp8O8qbtU4wflClsu6qXrHHF3I/E7n8f1ts8OzPIBYXcW2bhN7oPihTnT1lUi9SOvWMPthxrUJWB+V900P4SnKe3P4NTx4prn/PnJ1xSd3F+RX7UwIh28LsXMh2EnpyOo6RR14/Spc/O4ix0/h7qJoJtcP/WbdtNrqCPi3ZRp5mdhOzqklMc1HdWCUwq5T2zXQgGFogGFwgGFwgGFwgGFwgGFwgGFwgGFwgGFwgGFwgGFwgGFwgGFwgGFwgGFwgGFwgGFwgGFwgGFwgGFwgGFwgGFwgGFwgGFwgGFwnk1hWqRtwWmFN58LB5KIV6U2NOMRXSw/xQY0RQ/bIGH77MP0aKJwAg9vbmjbzQLNajJZP90vbSgr7oCT8MQmEqse2Io5rmfs0/8uqeuvMfXCMhD7VLl8PnFlXJQ+28LnQczDmsfnduKvc2jLaxtXYFvDhZy4Uy7aKRJtbn5NWKvJJEPPPpqVsB/HMuO9HdnAQAAAAAAAAAAAAAAAAAAAABQkf8A9wZ87mZvOYIAAAAASUVORK5CYII=" class="card-img-top" alt="...">
    <div class="card-body">
        <h5 class="card-title">Clientes</h5>
        <p class="card-text">Acceso a servicio al publico</p>
        <a href="cliente.jsp" class="btn btn-primary">acceder</a>
    </div>
</div>
</body>
</html>
