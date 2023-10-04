
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>Katzen Tech</title>
    <link rel="stylesheet" href="../../backend/css/admin.css">
    <link rel="icon" type="image/png" href="../../backend/img/ca.png">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
     <!-- Data Tables -->
    <link rel="stylesheet" type="text/css" href="../../backend/css/datatable.css">
    <link rel="stylesheet" type="text/css" href="../../backend/css/buttonsdataTables.css">
    <link rel="stylesheet" type="text/css" href="../../backend/css/font.css">
    <style type="text/css">
 .loader-container{
   
}

.load_animation{
  width: 100%;
  height: 100vh;
  font-size: 4rem ;
  background-color: #fff;
  z-index: 500;
  position: fixed;
  top: 0;
  left: 0;
  overflow: hidden;
  
}
.animation {
  position: absolute;
  top: 50%;
  left: 50%;
  border: 3px solid rgb(0, 0, 0);
  border-radius: 50%;
  box-sizing: content-box;
  padding: 10px;
  transform: translate(-50% , -50%) ;
  opacity: .5;
  animation: spinner 1s infinite;
  transition: .1s;
  transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1);
}
@keyframes spinner {
  50% {
    transform: translate(-50% , -50%) ;
    border: 2px solid rgba(0, 0, 0, 0.178);
    padding: 30px;
  }
  100% {
    opacity: 1;
    transform:translate(-50% , -50%) rotate(360deg);
    border: 3px solid rgba(0, 0, 0, 0);
    padding: 17rem;
    color: #233975;
  }

}

.pie-chart {
            
  width: 100%;
  padding: 0 10px;
  margin: 0px;
        }
        .text-center{
            text-align: center;
        }

        /* Responsive columns */
@media screen and (max-width: 600px) {
  .pie-chart, .text-center {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}
    </style>

</head>
<body>
    <div class="loader-container">
    <div class="load_animation">
        <ion-icon name="bag-handle-outline" class="animation"></ion-icon>
    </div>
</div>
   <input type="checkbox" id="menu-toggle">
    <div class="sidebar">
        <div class="side-header">
            <h3>Katzen<span>Tech</span></h3>
        </div>
        
        <div class="side-content">
            <div class="profile">
                <div class="profile-img bg-img" style="background-image: url(../../backend/img/user13.png)"></div>
                <h4>admin01</h4>
                <small><strong>Administrador1</strong></small>
            </div>

            <div class="side-menu">
                <ul>
                    <li>
                       <a href="escritorio.php" class="active">
                            <span class="las la-home"></span>
                            <small>Panel de control</small>
                        </a>
                    </li>
                    <li>
                       <a href="../productos/mostrar.php">
                            <span class="las la-shopping-cart"></span>
                            <small>Productos</small>
                        </a>
                    </li>
                    <li>
                       <a href="../categorias/mostrar.php">
                            <span class="las la-paperclip"></span>
                            <small>Categorias</small>
                        </a>
                    </li>
                    <li>
                       <a href="../accesos/mostrar.php">
                            <span class="las la-user-friends"></span>
                            <small>Accesos</small>
                        </a>
                    </li>
                    <li>
                       <a href="../clientes/mostrar.php">
                            <span class="las la-user-friends"></span>
                            <small>Clientes</small>
                        </a>
                    </li>
                    <li>
                       <a href="../proveedores/mostrar.php">
                            <span class="las la-user-friends"></span>
                            <small>Proveedores</small>
                        </a>
                    </li>

                    <li>
                       <a href="../ventas/venta.php">
                            <span class="las la-money-bill"></span>
                            <small>Ventas</small>
                        </a>
                    </li>

                    <li>
                       <a href="../compra/mostrar.php">
                            <span class="las la-store"></span>
                            <small>Compras</small>
                        </a>
                    </li>

                    <li>
                       <a href="../salir.php">
                            <span class="las la-power-off"></span>
                            <small>Salir</small>
                        </a>
                    </li>

                </ul>
            </div>
        </div>
    </div>
    
    <div class="main-content">
        
        <header>
            <div class="header-content">
                <label for="menu-toggle">
                    <span class="las la-bars"></span>
                </label>
                
                <div class="header-menu">
                
                    <div class="user">
                        <div class="bg-img" style="background-image: url(../../backend/img/user13.png)"></div>

                    </div>
                </div>
            </div>
        </header>
        
        <main>
            
            <div class="page-header">
                <h1>Bienvenido <strong>Administrador1</strong></h1>
                <small>Inicio / Panel de control</small>
            </div>
            
            <div class="page-content">
            
                <div class="analytics">

                    <div class="card">
                        <div class="card-head">
                            
                            <h2>3</h2>
                            <span class="las la-user-friends"></span>
                        </div>
                        <div class="card-progress">
                            <small>Clientes</small>
                            
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-head">
                                                         <h2>COP/34,464.00</h2>
                            <span class="las la-money-bill"></span>
                        </div>
                        <div class="card-progress">
                            <small>Ventas</small>
                           
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-head">
                                                        <h2>3</h2>
                            <span class="las la-shopping-cart"></span>
                        </div>
                        <div class="card-progress">
                            <small>Productos</small>
                          
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-head">
                                                        <h2>1</h2>
                            <span class="las la-user-friends"></span>
                        </div>
                        <div class="card-progress">
                            <small>Accesos</small>
                            
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-head">
                                                         <h2>COP/11,721.00</h2>
                            <span class="las la-store"></span>
                        </div>
                        <div class="card-progress">
                            <small>Compras</small>
                           
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-head">
                                                        <h2>8</h2>
                            <span class="las la-paperclip"></span>
                        </div>
                        <div class="card-progress">
                            <small>Categorias</small>
                            
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-head">
                                                        <h2>3</h2>
                            <span class="las la-thumbtack"></span>
                        </div>
                        <div class="card-progress">
                            <small>Marca</small>
                            
                        </div>
                    </div>

                </div>


                <div class="records table-responsive">
                     <div class="record-header">
                        <h1>Clientes nuevos</h1>
                    </div>
                    <div>
                                                     <table width="100%" id="example">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th><span class="las la-sort"></span> CLIENTES</th>
                                    <th><span class="las la-sort"></span> TELEFONO</th>
                                    <th><span class="las la-sort"></span> ESTADO</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                                                  <tr>
                                    <td>4</td>
                                    <td>
                                        <div class="client">
                                           <div class="client-img bg-img" style="background-image: url(../../backend/img/pablo.jpg)"></div>
                                            <div class="client-info">
                                                <h4>Leonardo&nbsp;Flores</h4>
                                                <small>76564564</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        986858658                                    </td>
                                    <td>
                                        <label class="switch">
                          <input type="checkbox" id="4" value="1" checked/> 

                          <span class="slider"></span>
                        </label>
                                    </td>
                                   
                                </tr>
                                                                 <tr>
                                    <td>2</td>
                                    <td>
                                        <div class="client">
                                           <div class="client-img bg-img" style="background-image: url(../../backend/img/pablo.jpg)"></div>
                                            <div class="client-info">
                                                <h4>Karla&nbsp;Martinez</h4>
                                                <small>76546564</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        976575665                                    </td>
                                    <td>
                                        <label class="switch">
                          <input type="checkbox" id="2" value="1" checked/> 

                          <span class="slider"></span>
                        </label>
                                    </td>
                                   
                                </tr>
                                                                 <tr>
                                    <td>1</td>
                                    <td>
                                        <div class="client">
                                           <div class="client-img bg-img" style="background-image: url(../../backend/img/pablo.jpg)"></div>
                                            <div class="client-info">
                                                <h4>Julian&nbsp;Juarez Lopez</h4>
                                                <small>78885848</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        968586757                                    </td>
                                    <td>
                                        <label class="switch">
                          <input type="checkbox" id="1" value="1" checked/> 

                          <span class="slider"></span>
                        </label>
                                    </td>
                                   
                                </tr>
                                                             </tbody>
                        </table>
                                            </div>

                </div>

                <br>
              
                
            </div>

            <div class="page-content">
            
            <div class="records table-responsive">
                    <div class="record-header">
                        <h1>Gráficas</h1>
                    </div>
                    <div>
    

                <hr>
        <div id="chartDiv" class="pie-chart"></div>  
        <div class="text-center"></div>       
                    </div>

                </div>
                
            </div>



        </main>
    </div>
    <script src="../../backend/js/jquery.min.js"></script>
    <!-- Data Tables -->
    <script type="text/javascript" src="../../backend/js/datatable.js"></script>
    <script type="text/javascript" src="../../backend/js/datatablebuttons.js"></script>
    <script type="text/javascript" src="../../backend/js/jszip.js"></script>
    <script type="text/javascript" src="../../backend/js/pdfmake.js"></script>
    <script type="text/javascript" src="../../backend/js/vfs_fonts.js"></script>
    <script type="text/javascript" src="../../backend/js/buttonshtml5.js"></script>
    <script type="text/javascript" src="../../backend/js/buttonsprint.js"></script>
    <script type="text/javascript">
$(document).ready(function() {
    $('#example').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    } );
} );
    </script>
    <script type="text/javascript">
        $(window).on("load",function(){
            $(".load_animation").fadeOut(1000);
        });
    </script>

     <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
 
 <script src="https://www.google.com/jsapi"></script>


 <script type="text/javascript">
    window.onload = function() {
        google.load("visualization", "1.1", {
            packages: ["corechart"],
            callback: 'drawChart'
        });
    };
  
    function drawChart() {
        var data = google.visualization.arrayToDataTable([
            ['Country', 'Popularity'],
            
            ['LAPTOP LENOVO V14 IIL, INTEL CORE I3-1005G1, 4GB, 1TB, 14″ HD', 99],[' PC Todo en Uno Lenovo IdeaCentre 3, Intel Core i5-10400T 2.4GHz, RAM 8GB, HDD 1TB, Wi-FI, BT, LED 24" Full HD, Windows 10 Home SP', 20],['LAPTO hP ULTRA', 90],
            
        ]);

        var options = {
            pieHole: 0.4,
            title: 'Productos por stock',
        };
  
        var chart = new google.visualization.PieChart(document.getElementById('chartDiv'));
        chart.draw(data, options);
    }

</script>


</body>
</html>