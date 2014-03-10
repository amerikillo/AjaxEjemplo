<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" import="java.util.*" errorPage="" %>
<% java.util.Calendar currDate = new java.util.GregorianCalendar();
   // add 1 to month because Calendar's months start at 0, not 1
   int month = currDate.get(currDate.MONTH)+1;
   int day = currDate.get(currDate.DAY_OF_MONTH);
   int year = currDate.get(currDate.YEAR);
   Calendar calendario = new GregorianCalendar();
   //day-=1;
   int hora, minutos, segundos;
		
		hora =calendario.get(Calendar.HOUR_OF_DAY);
		minutos = calendario.get(Calendar.MINUTE);
		segundos = calendario.get(Calendar.SECOND);
   String date=""; 
   String res=""; 
   String mensaje="",hecho="";
   int tam_cen=0,tam_pic=0,tam_inv=0;
 if(month >=1 && month <= 9)  
 {
 res ="0"+month;
// month=Integer.parseInt(res);
   date=" "+day;
   date= date+"/"+res;
   date= date+"/"+year;  

 //out.print(""+res); 
 }
 else 
{
      date=" "+day;
      date= date+"/"+month;
      date= date+"/"+year;  
	  res+=month;
}
// Conexión a la BDD
		Class.forName("org.gjt.mm.mysql.Driver");
 		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/cens_nayarit","root","eve9397");
        Statement stmt = conn.createStatement();
		ResultSet rset = null; 
		Statement stmt_date = conn.createStatement();
		ResultSet rset_date = null;
// -----------------   
 rset=stmt.executeQuery("select a1 from censos union all select nom_unid from cens_dgo_rural order by a1 asc");
          while (rset.next()) 
                  { 
                   tam_cen++;
                   }
				   
rset=stmt.executeQuery("select uni from pictografico where rmil='1' order by uni asc;");
          while (rset.next()) 
                  { 
                    tam_pic++;
                   }

rset=stmt.executeQuery("select distinct unidad from inventarios order by unidad asc;");
          while (rset.next()) 
                  { 
                   tam_inv++;
                   }
 
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>:: MENU CENSOS ::</title>
<script language="javascript" src="js/code_js.js"></script>
<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<style type="text/css">
.neg {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 10px;
	font-weight: bold;
	color: #666;
}
.der {
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 16px;
	font-weight: bold;
}
.center1 {
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	font-weight: bold;
}
.colorin {
	color: #900;
}
</style>

</head>

<body onLoad="show5()">
<table width="566" height="218" border="1" align="center">
  <tr>
    <td><table width="550" border="0">
    <tr>
      <td colspan="3" align="left"><img src="imagenes/GNKL_Small.JPG" /></td>
    </tr>
      <tr>
        <td colspan="3" align="center"><img src="imagenes/censos_tit.png"  />  </td>
        </tr>
      <tr>
        <td colspan="3" class="der">Fecha:&nbsp;<%=date%>&nbsp;&nbsp;&nbsp;&nbsp;Hora:<span id="liveclock"></span>
       
        </td>
        </tr>
      <tr>
        <td width="198" align="center"><h4><a href="index_censos.html"><strong>Consulta de Censos</strong></a></h4></td>
        <td width="128" align="center"><h4><!--a href="consulta_pictografico2.jsp"><strong>Consulta de Pictogr&aacute;ficos</strong></a--></h4></td>
        <td width="210" align="center"><h4><a href="menu_inven.jsp"><strong>Consulta Pictogr&aacute;ficos</strong></a></h4></td>
      </tr>
      <tr>
        <td class="center1">Total de Censos:<span class="colorin"> <%=tam_cen%></span></td>
        <td align="center"><!--span class="center1">Total de Pictogr&aacute;ficos:<span class="colorin"> <%//=tam_pic%></span></span--></td>
        <td align="center"><span class="center1">Total de Pictogr&aacute;ficos:<span class="colorin"> <%=tam_inv%></span></span></td>
      </tr>
       <tr>
        <td width="198" >&nbsp;</td>
        <td width="128" align="center" ><form action="indexMain.jsp" method="post" name="form"><input name="submit" type="submit"  value="Actualizar" class="btn btn-primary btn-md btn-block" /></form></td>
        <td width="210" >&nbsp;</td>
      </tr>
      <tr>
        <td colspan="3" align="center"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="369" height="185" id="FlashID" title="Veracruz">
          <param name="movie" value="imagenes/flash1_ver.swf" />
          <param name="quality" value="high" />
          <param name="wmode" value="opaque" />
          <param name="swfversion" value="6.0.65.0" />
          <!-- This param tag prompts users with Flash Player 6.0 r65 and higher to download the latest version of Flash Player. Delete it if you don’t want users to see the prompt. -->
          <param name="expressinstall" value="Scripts/expressInstall.swf" />
          <!-- Next object tag is for non-IE browsers. So hide it from IE using IECC. -->
          <!--[if !IE]>-->
          <object type="application/x-shockwave-flash" data="imagenes/flash1_ver.swf" width="369" height="185">
            <!--<![endif]-->
            <param name="quality" value="high" />
            <param name="wmode" value="opaque" />
            <param name="swfversion" value="6.0.65.0" />
            <param name="expressinstall" value="Scripts/expressInstall.swf" />
            <!-- The browser displays the following alternative content for users with Flash Player 6.0 and older. -->
            <div>
              <h4>Content on this page requires a newer version of Adobe Flash Player.</h4>
              <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" width="112" height="33" /></a></p>
            </div>
            <!--[if !IE]>-->
          </object>
          <!--<![endif]-->
        </object></td>
        </tr>
      <tr>
        <td colspan="3" align="center"></td>
      </tr>
      <tr>
        <td colspan="3" align="center"><strong class="neg">DERECHOS RESERVADOS GNKL/DESARROLLOS WEB &reg; 2009 - 2013</strong></td>
      </tr>
    </table></td>
  </tr>
</table>
<%
// ----- try que cierra la conexión a la base de datos
		 try{
               // Se cierra la conexión dentro del try
                 conn.close();
	          }catch (Exception e){mensaje=e.toString();}
           finally{ 
               if (conn!=null){
                   conn.close();
		                if(conn.isClosed()){
                             mensaje="desconectado2";}
                 }
             }
			//out.print(mensaje);
		// ---- fin de la conexión	 	  

%>
<script type="text/javascript">
swfobject.registerObject("FlashID");
</script>
</body>
</html>
