<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<script language="javascript" src="list02.js"></script>
<script language="javascript" src="js/bootstrap-button.js"></script>
<script src="jquery/jquery.js" type="text/javascript"></script>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>:: CONSULTA DE CENSOS ::</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
 <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link  href="css/bootstrap-responsive.css" rel="stylesheet" />
    <link href="css/jumbotron-narrow.css" rel="stylesheet">
    
    <!--link rel="stylesheet" href="css/mm_entertainment.css" type="text/css" /-->
<script language="JavaScript" type="text/javascript">
//--------------- LOCALIZEABLE GLOBALS ---------------
var d=new Date();
var monthname=new Array("January","February","March","April","May","June","July","August","September","October","November","December");
//Ensure correct for language. English is "January 1, 2004"
var TODAY = monthname[d.getMonth()] + " " + d.getDate() + ", " + d.getFullYear();
//---------------   END LOCALIZEABLE   ---------------

//<script language="javascript" src="list02.js"></script>
<style type="text/css">
<!--
.style1 {
	color: #000000;
	font-weight: bold;
}
.style33 {font-size: x-small}
.style40 {font-size: 9px}
.style41 {font-size: 9px}
.style42 {font-family: Arial, Helvetica, sans-serif}
.style32 {font-size: x-small; font-family: Arial, Helvetica, sans-serif; }
.style43 {
	font-size: x-small;
	color: #FFFFFF;
	font-weight: bold;
}
.style47 {
	font-size: x-small;
	font-weight: bold;
	text-align: center;
}
.style49 {font-size: x-small; font-family: Arial, Helvetica, sans-serif; font-weight: bold; }
.style50 {color: #000000}
.style51 {color: #BA236A}
.style58 {font-size: 14px;  font-weight: bold; color: #666666; }
.style66 {font-size: x-small; font-weight: bold; color: #333333; }
a:hover {
	color: #333333;
}
.style68 {color: #CCCCCC}
.style75 {color: #333333; }
a:link {
	color: #711321;
}
.style76 {color: #003366}
.style77 {
	color: #711321;
	font-weight: bold;
}
.neg {font-family: Arial, Helvetica, sans-serif;
	font-size: 10px;
	font-weight: bold;
	color: #666;
}
-->
</style>
</head>
<body bgcolor="#ffffff" onload="fillCategory_Juriss();">

<div class="container">
      <div class="header">
        <ul class="nav nav-pills pull-right">
          <li class="active"><a href="index.jsp">Inicio</a></li>
          <li><a data-toggle="modal" href="#myModal2">Acerca de</a></li>
          <li><a data-toggle="modal" href="#myModal">Contact&aacute;ctenos</a></li>
        </ul>
        <h3 class="text-muted">Consulta de Censos Hospitales</h3>
      </div>
</div>
<table width="94%" border="0" align="center" cellpadding="0" cellspacing="0">
 <tr>
     <td colspan="2" valign="top"><form action="consultaCensosH.jsp" method="post" name="form" id="form" class="form-horizontal" >
     <table width="877" border="1" align="center">
      <tr>
        <td width="418"><table width="1081" border="0">
          
          <tr>
            <td colspan="3"><div class="panel panel-primary">
            <!-- Default panel contents -->
	            <div class="panel-heading"><strong>ESCOJA HOSPITAL</strong>:</div>
            </div></td>
            <td  class="style43 style51">&nbsp;</td>
            <td colspan="3"  class="style58">&nbsp;</td>
            </tr>
          <tr>
            <td colspan="3">
            <select name="slct_censo"  id="slct_censo" class="form-control">
                <option>-- SELECCIONE UNIDAD --</option>
                <%                
					 // for(int x=0;x<tam2;x++)
						//  {	                     
					  %>
                <option value="<%//=censo[x]%>"><%//=juris_n[x]%></option>
                <%
						  // }
					  %>
                </select></td>
            <td  class="style43 style51">&nbsp;</td>
            <td colspan="3"  class="style58"><span class="style43 style51">
              <input name="Submit" id="btn_mos" type="submit" data-loading-text="Loading..." class="btn btn-primary" value="Mostrar" />
            </span></td>
            </tr>
          <tr>
            <td colspan="3" class="style43 style51" align="center">&nbsp;</td>
            <td  class="style43 style51">&nbsp;</td>
            <td colspan="3"  class="style58">&nbsp;</td>
            </tr>
          
          <tr>
            <td colspan="7"><h5><strong>Jurisdicci&oacute;n 1:&nbsp;<%//=c_j1%>&nbsp;Jurisdicci&oacute;n 2:&nbsp;<%//=c_j2%>&nbsp;Jurisdicci&oacute;n 3:&nbsp;<%//=c_j3%>&nbsp;&nbsp;No de Censos realizados:&nbsp;<%//=tam2%></strong></h5></td>
            </tr>
            <tr>
            <td colspan="7"  class="style43 style51"><hr /></td>
            </tr>
          <tr>
            <td colspan="3"  class="style58">Fecha de Elaboraci&oacute;n 
              <input name="txtf_aa"  type="text" class="form-control" onkeypress="return handleEnter(this, event);" size="15" maxlength="4" readonly="readonly" /></td>
            <td  class="style43 style51">&nbsp;</td>
            <td colspan="3"  class="style58">Elaborado por: 
              <input name="txtf_elab" type="text" class="form-control" onkeypress="return handleEnter(this, event);" size="40" readonly="readonly"/></td>
            </tr>
          <tr>
            <td colspan="3" class="style58">
            <div class="panel panel-primary">
            <!-- Default panel contents -->
	            <div class="panel-heading">A. DATOS GENERALES</div>
            </div>
            </td>
            <td>&nbsp;</td>
            <td colspan="3" class="style58">
            <div class="panel panel-primary">
            <!-- Default panel contents -->
	            <div class="panel-heading">D. SERVICIOS (4)</div>
            </div>
            </td>
            </tr>
            <%
				String nomCam="campo_",nombreC="";
				int contCam=2;
				//nombreC=nomCam+(contCam+=1);
				//out.print(nombreC);
			%>
          <tr>
            <td width="29" class="style58"><div align="center">A.1</div></td>
            <td width="189" class="style58">Nombre de Hospital </td>
            <td class="style33"><strong>
              <label><strong>
                <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </strong></label>
              </strong></td>
            <td width="1">&nbsp;</td>
            <td bgcolor="#FFFFFF" class="style58">D.5</td>
            <%
				int contCam_2=37;
			%>
            <td class="style58"><div align="left">No. de Camas Censables</div></td>
            <td>             
              <label>
                <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>

                </label>
              </td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.2</div></td>
            <td class="style58">Direcci&oacute;n</td>
            <td ><label><strong>
               <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea><%out.print(nombreC);%>
            </strong></label>
              </strong></td>
            <td>&nbsp;</td>
            <td bgcolor="#FFFFFF" class="style58">D.6</td>
            <td class="style58"><div align="left">No. de Camas No Censables</div></td>
            <td><span class="style49">
              <label></label>
              <label>
                <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
                </label>
              </span></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.3</div></td>
            <td class="style58">Referencias</td>
            <td class="style33"><strong>
              <label>
                <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                </label>
              </strong><%out.print(nombreC);%></td>
            <td>&nbsp;</td>
            <td bgcolor="#FFFFFF" class="style58">D.7</td>
            <td width="230" class="style58"><div align="left">&iquest;Se cuenta con Almac&eacute;n? </div></td>
            <td width="282"><span class="style49">
              
             <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.4</div></td>
            <td class="style58">Colonia</td>
            <td class="style33"><strong>
              <label>
                <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea><%out.print(nombreC);%>
                </label>
              </strong></td>
            <td>&nbsp;</td>
            <td class="style58">D.8</td>
            <td class="style58"><div align="left">&iquest;Existe Subalmac&eacute;n?</div></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.5</div></td>
            <td class="style58">Poblaci&oacute;n Atendida</td>
            <td class="style33"><strong>
              <label>
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                </label>
              </strong><%out.print(nombreC);%></td>
            <td>&nbsp;</td>
            <td bgcolor="#FFFFFF" class="style58">D.9</td>
            <td class="style58"><div align="left">&iquest;Qui&eacute;n Administra el almac&eacute;n?</div></td>
            <td><span class="style49">
             <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%></span></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.6</div></td>
            <td class="style58">C&oacute;digo Postal </td>
            <td class="style33"><textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea><%out.print(nombreC);%></td>
            <td class="style58">&nbsp;</td>
            <td class="style58">D.10</td>
            <td class="style58">El resurtido es por dosis o por presentaci&oacute;n completa </td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </label>
              </p></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.7</div></td>
            <td class="style58">No. en Mapa </td>
            <td class="style33"><strong>
              <label>
               <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea><%out.print(nombreC);%>
              </label>
              </strong></td>
            <td>&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            <td class="style58">&nbsp;</td>
            </tr>
          <tr>
            <td class="style58"><p align="center" class="style58">A.8</p></td>
            <td class="style58">Tel&eacute;fono</td>
            <td class="style33"><strong>
              <label>
               <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea><%out.print(nombreC);%>
                </label>
              </strong></td>
            <td>&nbsp;</td>
            <td colspan="3" class="style58">
            <div class="panel panel-primary">
            <!-- Default panel contents -->
	            <div class="panel-heading">E. QUIR&Oacute;FANO</div>
            </div>
            </td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.9</div></td>
            <td class="style58">Fax</td>
            <td class="style33"><strong>
              <label>
               <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea><%out.print(nombreC);%>
                </label>
              </strong></td>
            <td>&nbsp;</td>
            <td bgcolor="#FFFFFF" class="style58">E.1</td>
            <td bgcolor="#FFFFFF" class="style58"><div align="left">&iquest;Tiene M&eacute;dicamento y/o Mat. Curaci&oacute;n?</div></td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.10</div></td>
            <td class="style58">P&aacute;gina Web </td>
            <td class="style33"><strong>
              <label>
               <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea><%out.print(nombreC);%>
                </label>
              </strong></td>
            <td>&nbsp;</td>
            <td class="style58">E.2</td>
            <td class="style58">Ubicaci&oacute;n</td>
            <td><label>
             <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </label></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.11</div></td>
            <td class="style58">Jurisdiccion Sanitaria Perteneciente </td>
            <td class="style33"><strong>
              <label>
               <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea><%out.print(nombreC);%>
                </label>
              </strong></td>
            <td>&nbsp;</td>
            <td class="style58">E.3</td>
            <td class="style58">&iquest;C&oacute;mo se surten los Kits quir&uacute;rgicos?</td>
            <td><label><span class="style58">
             <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></label></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.12</div></td>
            <td class="style58">Coordinaci&oacute;n Municipal Perteneciente</td>
            <td class="style33"><strong>
              <label>
               <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea><%out.print(nombreC);%>
                </label>
              </strong></td>
            <td>&nbsp;</td>
            <td colspan="3" class="style58">
            <div class="panel panel-primary">
            <!-- Default panel contents -->
	            <div class="panel-heading">F. FARMACIA</div>
            </div>
            </td>
            </tr>
          <tr>
            <td height="26" class="style58"><div align="center">A.13</div></td>
            <td class="style58">Municipio</td>
            <td class="style33"><strong>
              <label>
                <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                </label>
              </strong><%out.print(nombreC);%></td>
            <td>&nbsp;</td>
            <td class="style58">F.1</td>
            <td class="style58"><div align="left">Horario de atenci&oacute;n </div></td>
            <td><span class="style58">
              De: 
             <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              a:
             <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.14</div></td>
            <td class="style58">No. de Servicios </td>
            <td class="style33"><strong>
              <label>
               <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                </label>
              </strong><%out.print(nombreC);%></td>
            <td>&nbsp;</td>
            <td class="style58">F.2</td>
            <td class="style58"><div align="left">
              <table cellspacing="0" cellpadding="0">
                <tr>
                  <td width="277">&iquest;Cuanto    personal atiende la Farmacia?</td>
                </tr>
              </table>
            </div></td>
            <td>
             <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.15</div></td>
            <td class="style58">N&uacute;mero de Consultorios de Primer Nivel</td>
            <td class="style33"><strong>
              <label>
               <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                </label>
              </strong><%out.print(nombreC);%></td>
            <td>&nbsp;</td>
            <td bgcolor="#FFFFFF" class="style58">F.3</td>
            <td class="style58"><div align="left">
              <table cellspacing="0" cellpadding="0">
                <tr>
                  <td width="277">N&uacute;mero    de Anaqueles en Farmacia</td>
                </tr>
              </table>
            </div></td>
            <td>
              <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.16</div></td>
            <td class="style58">Categor&iacute;a</td>
            <td class="style33"><strong>
              <label>
                <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                </label>
              </strong><%out.print(nombreC);%></td>
            <td>&nbsp;</td>
            <td class="style58">F.4</td>
            <td class="style58"><div align="left">
              <table cellspacing="0" cellpadding="0">
                <tr>
                  <td width="277">&iquest;Qu&eacute;    tan frecuentemente falla el suministro de energ&iacute;a el&eacute;ctrica en la Farmacia?</td>
                </tr>
              </table>
            </div></td>
            <td>
             <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
             </td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.17</div></td>
            <td class="style58">Nombre del Administrador </td>
            <td class="style33"><textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea><%out.print(nombreC);%></td>
            <td>&nbsp;</td>
            <td class="style58">F.5</td>
            <td class="style58"><div align="left">Existe alg&uacute;n tipo de validaci&oacute;n de acuerdo al origen del paciente </div></td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.18</div></td>
            <td class="style58">Telefono del Administrador </td>
            <td class="style58"><label><textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
              </label><%out.print(nombreC);%></td>
            <td>&nbsp;</td>
            <td class="style58">F.6</td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277">&iquest;C&oacute;mo    validan el origen del paciente en la Farmacia?</td>
              </tr>
            </table></td>
            <td>
             <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
             </td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.19</div></td>
            <td class="style58">Correo Electr&oacute;nico del Administrador </td>
            <td class="style58"> <label><textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
             </label><%out.print(nombreC);%></td>
            <td>&nbsp;</td>
            <td class="style58">F.7</td>
            <td class="style58">&iquest;C&oacute;mo surten recetas impresas de consulta externa?</td>
            <td><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%></td>
            </tr>
          <tr>
            <td height="48" class="style58"><div align="center">A.20</div></td>
            <td class="style58">Nombre del director </td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
             <%out.print(nombreC);%></td>
            <td>&nbsp;</td>
            <td class="style58">F.8</td>
            <td class="style58">&iquest;C&oacute;mo surten recetas colectivas de urgencias? </td>
            <td><label>
             <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </label></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.21</div></td>
            <td class="style58">Correo Electr&oacute;nico del Director</td>
            <td class="style33"><textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea><%out.print(nombreC);%></td>
            
            <td>&nbsp;</td>
            <td class="style58">F.9</td>
            <td class="style58">&iquest;C&oacute;mo surten recetas colectivas de servicios? </td>
            <td><label>
              <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </label></td>
            </tr>
          <tr>
            <td colspan="3" class="style58">
            <div class="panel panel-primary">
            <!-- Default panel contents -->
	            <div class="panel-heading">B. CONSULTA EXTERNA </div>
            </div>
            </td>
            <td>&nbsp;</td>
            <td class="style58">F.10</td>
            <td><span class="style58">&iquest;C&oacute;mo surten recetas colectivas de quir&oacute;fano? </span></td>
            <td><label>
             <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </label></td>
            </tr>
          <tr> 
            <td class="style58"><div align="center">B.1</div></td>
            <td class="style58">N&ordm; de Consultorios </td>
            <td><span class="style49">
              <label>
                <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                </label>
              </span><%out.print(nombreC);%></td>
            <td>&nbsp;</td>
            <td class="style58">F.11</td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277">&iquest;Cu&aacute;ntos    insumos solicitan en promedio por receta en la Farmacia?</td>
              </tr>
            </table></td>
            <td><label>
              <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </label></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">B.2</div></td>
            <td class="style58">Ubicaci&oacute;n dentro del Hospital</td>
            <td><span class="style49">
              <label>
                <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                </label>
              </span><%out.print(nombreC);%></td>
            <td>&nbsp;</td>
            <td height="49" class="style58">F.12</td>
            <td height="49" class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277">&iquest;Qu&eacute; se    hace en caso de que no se tenga alg&uacute;n insumo solicitado en la Farmacia?</td>
              </tr>
            </table></td>
            <td height="49" class="style47"><label>
              <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </label></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">B.3</div></td>
            <td class="style58">&iquest;Como se Resurte de M&eacute;dicamento?</td>
            <td>
              
                <label>
                 <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                  </label><%out.print(nombreC);%>
                </td>
            <td>&nbsp;</td>
            <td class="style58">F.13</td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277">&iquest;C&uacute;al es    el Porcentaje de Abasto actual en la Farmacia?</td>
              </tr>
            </table></td>
            <td> <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">B.4</div></td>
            <td class="style58">&iquest;Tiene medicamento y/o mat. curaci&oacute;n?</td>
            <td>
                  <label>
                   <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                    </label>
                 <%out.print(nombreC);%>
                  </td>
            <td>&nbsp;</td>
            <td class="style58">F.14</td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277">&iquest;El    Inventario en la Farmacia se encuentra actualizado?</td>
              </tr>
            </table></td>
            <td height="26" class="style47"><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%></td>
            </tr>
          <tr>
            <td colspan="3" class="style58">
            <div class="panel panel-primary">
            <!-- Default panel contents -->
	            <div class="panel-heading">C. URGENCIAS </div>
            </div>
            </td>
            <td>&nbsp;</td>
            <td height="26" class="style58">F.15</td>
            <td height="26" class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277">&iquest;Capturan    recetas en la Farmacia?</td>
              </tr>
            </table></td>
            <td class="style47"><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%></td>
            </tr>
          <tr>
            <td height="26" class="style47"><div align="center" class="style58">C.1</div></td>
            <td class="style58">Ubicaci&oacute;n</td>
            <td><span class="style58">
              <label>
                <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                </label>
              </span><%out.print(nombreC);%></td>
            <td height="26" class="style47">&nbsp;</td>
            <td class="style58">F.16</td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277">&iquest;Cu&aacute;ntos    turnos existen en la Farmacia?</td>
              </tr>
            </table></td>
            <td height="26" class="style47"><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%></td>
            </tr>
          <tr>
            <td class="style47"><div align="right" class="style77"><a href="consulta_cens.jsp" class="styl e77"></a>
              <div align="center" class="style58">C.2</div>
              </div></td>
            <td class="style58">&iquest;Como se Resurte de Insumos?</td>
            <td><label>
              <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
              </label><%out.print(nombreC);%></td>
            <td class="style47">&nbsp;</td>
            <td class="style58">F.17</td>
            <td class="style58">El proveedor actual general reportes </td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%></td>
            </tr>
          <tr>
            <td class="style47"><div align="center" class="style58">C.3</div></td>
            <td class="style58">&iquest;Qui&eacute;n elabora el requerimiento o receta colectiva?</td>
            <td>
                  <label>
                    <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                    </label>
                 <%out.print(nombreC);%> </td>
            <td class="style47">&nbsp;</td>
            <td colspan="3" class="style58">
            <div class="panel panel-primary">
            <!-- Default panel contents -->
	            <div class="panel-heading">G. ALMAC&Eacute;N</div>
            </div>
            </td>
            </tr>
          <tr>
            <td class="style47"><div align="center" class="style58">C.4</div></td>
            <td class="style58">&iquest;Cuenta con carro rojo?</td>
            <td class="style58"><label>
              <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
              </label><%out.print(nombreC);%></td>
            <td class="style47">&nbsp;</td>
            <td><span class="style58">G.1</span></td>
            <td class="style58">&iquest;Surten algun tipo de recetas?</td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%></td>
            </tr>
          <tr>
            <td class="style47"><div align="center" class="style58">C.5</div></td>
            <td class="style58">&iquest;C&oacute;mo se surte ese carro rojo?</td>
            <td class="style58"><label>
              <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
              </label><%out.print(nombreC);%></td>
            <td class="style47">&nbsp;</td>
            <td class="style58">G.2</td>
            <td class="style58">&iquest;Como surten recetas colectivas de urgencias? </td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%></td>
            </tr>
          <tr>
            <td class="style47"><div align="center" class="style58">C.6</div></td>
            <td class="style58">&iquest;Qu&eacute; Insumos M&eacute;dicos manejan en la Farmacia?</td>
            <td class="style58"><label>
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
              </label><%out.print(nombreC);%></td>
            <td class="style47">&nbsp;</td>
            <td class="style58">G.3</td>
            <td class="style58">&iquest;Como surten recetas colectivas de servicios? </td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%></td>
            </tr>
          <tr>
            <td colspan="3" class="style58">
            <div class="panel panel-primary">
            <!-- Default panel contents -->
	            <div class="panel-heading">D. SERVICIOS (4)</div>
            </div>
            </td>
            <td class="style47">&nbsp;</td>
            <td class="style58">G.4</td>
            <td><span class="style58">&iquest;Como surten recetas colectivas de quir&oacute;fano? </span></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%></td>
            </tr>
                        <td class="style58">D.1</td>
            <td class="style58">&iquest;Existe servicio de Urgencias?</td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea><%out.print(nombreC);%></td>
            <td class="style47">&nbsp;</td>
            <td class="style58">G.6</td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277">Espacio    para maniobras m2</td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">D.2</div></td>
            <td width="189" class="style58">&iquest;Tiene medicamento y/o mat. curaci&oacute;n?</td>
            <td width="290" class="style58"><strong>
              <label>
              <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
              </label><%out.print(nombreC);%>
            </td>
            <td class="style47">&nbsp;</td>
            <td class="style58">G.6</td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277">&iquest;Cuentan    con And&eacute;n para carga y descarga en el Almac&eacute;n?</td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%></td>
            </tr>
          <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">D.3</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">&iquest;C&oacute;mo se resurte de medicamento?</td>
            <td class="style58"><span class="style47">
             <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea></span><%out.print(nombreC);%></td>
            <td class="style47">&nbsp;</td>
            <td class="style58">G.7</td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277">&iquest;Cuentan    con Rampa para carga y descarga en el Almac&eacute;n?</td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%></td>
            </tr>
          <tr>
            <td bgcolor="#FFFFFF" class="style58"><div align="center">D.4</div></td>
            <td bgcolor="#FFFFFF" class="style58"><span class="style49">
             
              </span>Ubicaci&oacute;n del medicamento</td>
            <td class="style58">
              <label>
                <textarea name="<%=nombreC=nomCam+(contCam+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
                </label>
            </td>
            <td class="style47">&nbsp;</td>
            <td class="style58">G.8</td>
            <td class="style58">Montecargas</td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%></td>
            </tr>
          <tr>
            <td class="style58">&nbsp;</td>
            <td class="style58"><div align="left"></div></td>
            <td class="style58"><strong>
              <label></label>
            </strong></td>
            <td class="style47">&nbsp;</td>
            <td class="style58">G.9</td>
            <td class="style58">&iquest;Qui&eacute;n es el propietario del insumo en este almacen?</td>
            <td class="style47"><span class="style58">
              <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
  <!-- Preguntas Censos Plus Ver-->
  <%int nume=0;
  int contCam_3=75;
  %>
   <tr>
            <td colspan="7" ><hr />Generales<hr /> </td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277">N&uacute;mero    de Recetas Surtidas por D&iacute;a en Farmacia</td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277">Consultas    Promedio por Consultorio de Primer Nivel</td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
  <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277">&iquest;En qu&eacute;    otro lugar (aparte de la Farmacia) almacenan insumos?</td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277">&iquest;Cuentan    con Equipo de C&oacute;mputo en Farmacia?</td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277">N&uacute;mero    de Equipos de C&oacute;mputo en Farmacia</td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277">&iquest;Cuentan    con alg&uacute;n Sistema Inform&aacute;tico en la Farmacia?</td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277">&iquest;Cuentan    con Refrigerador en la Farmacia?</td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277">&iquest;Cu&aacute;les    son las funciones del Sistema Inform&aacute;tico en la Farmacia?</td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
              <td class="style58">H.<%=nume=nume+1%></td>
              <td class="style58"><table cellspacing="0" cellpadding="0">
                <tr>
                  <td width="277">N&uacute;mero    de M&eacute;dicos</td>
                </tr>
              </table></td>
              <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%></td>
              <td>&nbsp;</td>
              <td class="style58">H.<%=nume=nume+1%></td>
              <td class="style58"><table cellspacing="0" cellpadding="0">
                <tr>
                  <td width="277">&iquest;Qu&eacute;    Insumos M&eacute;dicos manejan?</td>
                </tr>
              </table></td>
              <td><span class="style49">
                <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
              <td class="style58">H.<%=nume=nume+1%></td>
              <td class="style58"><table cellspacing="0" cellpadding="0">
                <tr>
                  <td width="277">El    resurtido es por dosis o por presentaci&oacute;n completa</td>
                </tr>
              </table></td>
              <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%></td>
              <td>&nbsp;</td>
              <td class="style58">H.<%=nume=nume+1%></td>
              <td class="style58"><table cellspacing="0" cellpadding="0">
                <tr>
                  <td width="277">Tel&eacute;fono    del Director</td>
                </tr>
              </table></td>
              <td><textarea name="<%=nombreC=nomCam+(contCam_3+=2)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Existe    servicio de Quir&oacute;fano?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58">
              <table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Existe    servicio de Farmacia?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Qui&eacute;n    es el propietario del Insumo en la Farmacia?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277">&iquest;El    Inventario se encuentra cuadrado?</td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277">&iquest;Cuentan    con tel&eacute;fono en la Farmacia?</td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277">&iquest;Cuentan    con servicio de Internet en la Farmacia?</td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277">&iquest;Cu&aacute;l es    el proveedor de Internet en la Farmacia?</td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277">&iquest;Almacenan    Insumo en otro lugar aparte de la Farmacia?</td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277">&iquest;Qu&eacute; tan    r&aacute;pido es el servicio de Internet en la Farmacia?</td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277">Espacio    aproximado de Farmacia m&sup2;</td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Existe    servicio de Almac&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">Horario    de atenci&oacute;n</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td>De:
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="5" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
                a:
                 <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="5" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Cu&aacute;nto    personal atiende el Almac&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Cu&aacute;ntos    turnos existen en el Almac&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Qu&eacute;    Insumos M&eacute;dicos manejan en el Almac&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Qui&eacute;n    es el propietario del Insumo en el Almac&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
              <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
              <td class="style58"><table cellspacing="0" cellpadding="0">
                <tr>
                  <td width="277"><table cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="277"><table cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="277">Espacio    aproximado de Almac&eacute;n m&sup2;</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
                <label></label></td>
              <td>&nbsp;</td>
              <td class="style58">H.<%=nume=nume+1%></td>
              <td class="style58"><table cellspacing="0" cellpadding="0">
                <tr>
                  <td width="277"><table cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="277"><table cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="277">N&uacute;mero    de Anaqueles o Racks en Almacen</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              <td><span class="style49">
                <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
                </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Qui&eacute;n    es el propietario de los Anaqueles en Farmacia?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Qui&eacute;n    es el propietario de los Anaqueles y/o Racks?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Cuentan    con Refrigerador en el Almac&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Cuentan    con Equipo de C&oacute;mputo en el Almac&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">N&uacute;mero    de Equipos de C&oacute;mputo en Almac&eacute;n</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Cuentan    con alg&uacute;n Sistema Inform&aacute;tico en el Almac&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Cu&aacute;les    son las funciones del Sistema Inform&aacute;tico en el Almac&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Cuentan    con tel&eacute;fono en el Almac&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Qu&eacute;    tan frecuentemente falla el suministro de energ&iacute;a el&eacute;ctrica en el Almac&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Cuentan    con servicio de Internet en el Almac&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Cu&aacute;l es    el proveedor de Internet en el Almac&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Qu&eacute; tan    r&aacute;pido es el servicio de Internet en el Almac&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Almacenan    Insumo en otro lugar aparte del Almac&eacute;n y la Farmacia?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;En qu&eacute;    otro lugar aparte del Almac&eacute;n y la Farmacia almacenan insumos?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
              <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
              <td class="style58"><table cellspacing="0" cellpadding="0">
                <tr>
                  <td width="277"><table cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="277"><table cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="277">&iquest;C&uacute;al es    el Porcentaje de Abasto actual en el Almac&eacute;n?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
                <label></label></td>
              <td>&nbsp;</td>
              <td class="style58">H.<%=nume=nume+1%></td>
              <td class="style58"><table cellspacing="0" cellpadding="0">
                <tr>
                  <td width="277"><table cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="277"><table cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="277">&iquest;Cu&aacute;ntos    Insumos se solicitan en promedio por receta o requerimiento en el Almac&eacute;n?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              <td><span class="style49">
                <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
                </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Capturan    recetas y/o requerimientos en el Almac&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277"><table cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="277">&iquest;Qui&eacute;n    es el propietario de los Equipos de C&oacute;mputo en Almac&eacute;n?</td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Qui&eacute;n    es el propietario del Refrigerador en la Farmacia?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Qui&eacute;n    es el propietario de los Anaqueles o Racks?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Cu&aacute;les    son las dimensiones del And&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Cu&aacute;les    son las dimensiones de la Rampa?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Qui&eacute;n    es el propietario del Refrigerador en el Almac&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Qui&eacute;n    es el propietario de los Equipos de C&oacute;mputo?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Cu&aacute;l es    el n&uacute;mero de tel&eacute;fono en el Almac&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;C&oacute;mo    surten los Insumos M&eacute;dicos en el Almac&eacute;n?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Qui&eacute;n    abastece a la Farmacia de Insumos M&eacute;dicos?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Se    lleva un registro de Insumos Solicitados contra Surtidos en la Farmacia?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Se    lleva un registro de Piezas Solicitadas contra Surtidas en la Farmacia?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Cu&aacute;ntos    Insumos M&eacute;dicos diferentes manejan en la Farmacia?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Cu&aacute;ntos    Insumos M&eacute;dicos diferentes manejan en el Almac&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Qui&eacute;n    abastece al Almac&eacute;n de Insumos M&eacute;dicos?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Qu&eacute; se    hace en caso de que no se tenga alg&uacute;n insumo solicitado en el Almac&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Se    lleva un registro de Insumos Solicitados contra Surtidos en el Almac&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Se    lleva un registro de Piezas Solicitadas contra Surtidas en el Almac&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Cuentan    con Licencia Sanitaria en la Farmacia para el manejo de medicamento    controlado?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">Indicar    el n&uacute;mero de la Licencia Sanitaria en la Farmacia para el manejo de    medicamento controlado</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Cuentan    con Licencia Sanitaria en el Almac&eacute;n para el manejo de medicamento    controlado?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Cuentan    con un Responsable en la Farmacia?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Cuentan    con un Qu&iacute;mico responsable de la Farmacia?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;El    Responsable de la Farmacia es el Qu&iacute;mico?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Cu&aacute;l es    el sueldo Bruto mensual de los despachadores de la Farmacia?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Cu&aacute;l es    el sueldo Bruto mensual del Responsable de la Farmacia?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Cu&aacute;l es    el sueldo Bruto mensual del Qu&iacute;mico de la Farmacia?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;El    personal de la Farmacia est&aacute; capacitado y actualizado en el manejo y    dispensaci&oacute;n de medicamento?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;El    personal de la Farmacia cuenta con el certificado de la COFEPRIS para el    manejo y dispensaci&oacute;n de medicamento?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Cuentan    con un Responsable del Almac&eacute;n?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Cuentan    con un Qu&iacute;mico responsable en el Almac&eacute;n?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">Indicar    el n&uacute;mero de la Licencia Sanitaria en la Farmacia para el manejo de    medicamento controlado</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Cuentan    con Licencia Sanitaria en el Almac&eacute;n para el manejo de medicamento    controlado?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">Indicar    el n&uacute;mero de la Licencia Sanitaria en la Farmacia para el manejo de    medicamento controlado</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277">&iquest;Cuentan    con Licencia Sanitaria en el Almac&eacute;n para el manejo de medicamento    controlado?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;El    Responsable del Almac&eacute;n es el Qu&iacute;mico?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;El    personal del Almac&eacute;n est&aacute; capacitado y actualizado en el manejo y    dispensaci&oacute;n de medicamento?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;El    personal del Almac&eacute;n cuenta con el certificado de la COFEPRIS para el manejo    y dispensaci&oacute;n de medicamento?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Cu&aacute;l es    el sueldo Bruto mensual de los despachadores del Almac&eacute;n?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Cu&aacute;l es    el sueldo Bruto mensual del Responsable del Almac&eacute;n?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Cu&aacute;l es    el sueldo Bruto mensual del Qu&iacute;mico del Almac&eacute;n?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">Nombre    del Encuestado</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">N&uacute;mero    de Recetas y/o Requerimientos Surtidos por D&iacute;a en Almac&eacute;n</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">Ciudad    o Poblaci&oacute;n</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">Estado</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;C&oacute;mo    se surten los Kits Quir&uacute;rgicos?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Tienen    insumo caducado en el Almac&eacute;n?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Tienen    insumo pr&oacute;ximo a caducar en el Almac&eacute;n?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Llevan    alg&uacute;n control de semaforizaci&oacute;n de caducidades en el Almac&eacute;n?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Cuentan    con alg&uacute;n Sistema Inform&aacute;tico en la Farmacia?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Llevan    alg&uacute;n control de semaforizaci&oacute;n de caducidades en la Farmacia?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Tienen    insumo caducado en Farmacia?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Tienen    insumo pr&oacute;ximo a caducar en Farmacia?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">N&uacute;mero    de Consultorios de Segundo Nivel</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">Consultas    Promedio por Consultorio de Segundo Nivel</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Cu&aacute;l es    el destino final de las recetas individuales y colectivas?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Cuentan    con planta de energ&iacute;a el&eacute;ctrica para emergencias?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;La    planta de energ&iacute;a el&eacute;ctrica para emergencias cubre el suministro a la    Farmacia?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Cada    cuanto abastecen a la Farmacia?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;La    captura de recetas en la Farmacia va al d&iacute;a?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Cu&aacute;l es    el tipo de contrato de los despachadores de la Farmacia?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Cu&aacute;l es    el tipo de contrato del Responsable de la Farmacia?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Cu&aacute;l es    el tipo de contrato del Qu&iacute;mico de la Farmacia?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Cu&aacute;les    son las condiciones para carga y descarga?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;La    captura de recetas y/o requerimientos en el Almac&eacute;n va al d&iacute;a?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
            <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Cuentan    con sub almacenes en los pisos?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277">&iquest;Cu&aacute;l es    el tipo de contrato del Responsable del Almac&eacute;n?</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
             <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277"><table cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="277">&iquest;Cu&aacute;l es    el tipo de contrato de los despachadores del Almac&eacute;n?</td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277"><table cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="277">&iquest;Cu&aacute;l es    el tipo de contrato del Qu&iacute;mico del Almac&eacute;n?</td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
             <tr>
            <td class="style58"><div align="center">H.<%=nume=nume+1%></div></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277"><table cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="277">&iquest;Cu&aacute;l es    el destino final de las recetas individuales y colectivas?</td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277"><table cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="277"><table cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="277"><table cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="277"><table cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="277">&iquest;Cada    cu&aacute;nto abastecen al Almac&eacute;n?</td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="<%=nombreC=nomCam+(contCam_3+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
              </span></td>
            </tr>
  <!-- fin nuevas preguntas -->          
            
            
            
             
          <tr>
            <td colspan="7" class="style47"><table width="637" border="0" align="center" cellpadding="2">
              <tr>
                <td width="192"><strong class="style58">Observaciones Generales:</strong></td>
                <td width="431"><div align="center"></div></td>
                </tr>
              <tr>
                <td><div align="center"></div></td>
                <td><div align="center"><strong>
                <textarea name="<%=nombreC=nomCam+(contCam_2+=1)%>" cols="40" class="form-control" id="<%=nombreC%>" onkeypress="return handleEnter(this, event);" readonly="readonly"></textarea>
                <%out.print(nombreC);%>
                  </strong></div></td>
                </tr>
              
              </table></td>
            </tr>
          <tr>
            <td colspan="7" class="style47"><div align="center"><strong><span class="style41"><strong><strong>
              <input type="hidden" name="altaok2" value="1"/>
              </strong></strong></span></strong></div></td>
            </tr>
          <tr>
            <td colspan="7" class="style47"><strong class="neg">DERECHOS RESERVADOS GNKL/DESARROLLOS WEB &reg; 2009 - 2013</strong></td>
            </tr>
          </table>
        </td>
        </tr>
    </table>
    </form>   
	  
	  
<script type="text/javascript">
    $(document).ready(function() {
	$('#form').submit(function () {
		        
				alert("Ingresó");
				return false;
			});
        $('#btn_mos').click(function() {
            var id= $('#slct_censo').val();
			alert("id: "+id);
			var dir = 'consultaCensos.jsp?id='+id;
			$.ajax({
					url: dir,
					type: 'json', 
					success: function(data) {
                                            alert("success");
					json = JSON.parse(data);
                                        var nomCon="textarea#campo_";
                                        var nombreControl="",nombreJson="";
                                        var contNom=1;
                                        var nomJson="json_";
                                        
                                         while(contNom<5){
                                             nombreControl=nomCon+contNom;
                                             nombreJson=nomJson+contNom;
                                          // alert(nombreControl=nomCon+contNom);
                                          // alert(nombreJson=nomJson+contNom);
                                             $(nombreControl).val(json[nombreJson]);
                                             contNom++;
                                          }	
					}, 
				});
			});

});
</script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="//code.jquery.com/jquery.js"></script>
</body>
</html>
