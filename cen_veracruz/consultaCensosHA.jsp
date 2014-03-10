<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<% Class.forName("org.gjt.mm.mysql.Driver");
Connection conn = null;
Statement stmt=null,stmt_date = null;
ResultSet rset = null,rset_date=null,rset_1=null;
           conn = 
                DriverManager.getConnection("jdbc:mysql://localhost/cens_nayarit","root","eve9397");
                stmt = conn.createStatement();
 //ResultSet rset_1 =null;
 
 String mensaje="";
 String enc_jv="",jur_jv="",mun2_jv="",cve_sgw_jv="",unis_jv="",f1b="";
 String elabo="",fecha10="";
 String clagto_jv="";
 String unigto_jv="";
 String juris3_jv="";
 String juris4_jv="";
 String jv="";
  // variables censos --------------------------------------------------------

 String censo[]=new String[1000];//arreglo para nombre de unidades ya censadas
 String juris_n[]=new String[1000];// array para las juris
  String j_u="";
  int c_j1=0,c_j2=0,c_j3=0;
 
 // fin variables censos -----------------------------------------------------
 
 String encar2_jv="";
 String cuantos_jv="1";
 String exi_jv="";
 
 String cie_jv="";
 int loop=0;
 
 String cve11_jv="";
 
 String cveuni_jv="";
 String fecha="";
 String sps_jv="";
 String jurisdi_jv="";
 String folr_jv="";
 String umed_jv="";
 String tusu_jv="";
 String medico_jv="";
 String paciente_jv="";
 String ccie_jv="";
 String cve1_jv="";
 String desc1_jv="";
 String lote1_jv="";
 String cad1_jv="";
 String cr1_jv="";
 String cs1_jv="";
 String exi1_jv="";
 String cve2_jv="";
 String descr2_jv="";
 String llote2_jv="";
 String cad2_jv="";
 String cr2_jv="";
 String cs2_jv="";
 String exxi2_jv="";
 String cve3_jv="";
 String descc3_jv="";
 String lote33_jv="";
 String cad3_jv="";
 String cr3_jv="";
 String cs3_jv="";
 String exi33_jv="";
 
 //variable para el proy captura de cb
  String cb_jv="";
 
 //variable proy censos
  String tip_uni_jv="";
  String j_sanit_jv="";
  String mpio_uni_jv="";
  String nom_uni_jv="";
  String direc_jv="";
  String tel_jv="";
  String correo_uni_jv="";
  String h_uni_jv="";
  String h_far_jv="";
  String c_decla_jv="";
  String nom_edor_jv="";
  String nom_edo_jv="";
  String puesto_jv="";
  String c_exter_jv="";
  String n_med_jv="";
  String pro_rec_jv="";
  String ca_censa_jv="";
  String pro_rec_di_jv="";
  String porc_ante_jv="";
  String porc_act_jv="";
  String histo_jv="";
  String serv_gnk_jv="";
  String distri_gnk_jv="";
  String conoc_gnk_jv="";
  String cont_gnk_jv="";
  String c_uni_jv="";
  String t_visit_jv="";
  String c_no_jv="";
  String resnpon_gnk_jv="";
  String esp_farm_jv="";
  String alma_med_jv="";
  String issa_far_jv="";
  String compu_jv="";
  String siispo_intal_jv="";
  String capa_sist_jv="";
  String inst_inv_gnk_jv="";
  String inv_act_jv="";
  String cap_rect_d_jv="";
  String rect_sin_cap_jv="";
  String cap_perfil_jv="";
  String prog_gral_gnk_jv="";
  String req_gnk_jv="";
  String inv_dia_jv="";
  String prob_far_jv="";
 
  // variable censos tol
  String nom_unid_jv="";
  String dir_jv="";
  String ref_jv="";
  String col_jv="";
  String pob_jv="";
  String cp_jv="";
  String clues_jv="";
  String tel_uni_jv="";
  String fax_jv="";
  String correo_jv="";
  String j_pert_jv="";
  String c_mpal_jv="";
  String consul_jv="";
  String mpio_jv="";
  String n_mod_jv="";
  String cat_jv="";
  String nom_resp_jv="";
  String tel_resp_jv="";
  String co_resp_jv="";
  String nom_odont_jv="";
  String p_aten_jv="";
  String n_doc_jv="";
  String n_pst_jv="";
  String n_enfer_jv="";
  String h_ini_jv="";
  String h_fin_jv="";
  String d_labor_jv="";
  String clima_jv="";
  String cpu_jv="";
  String moni_jv="";
  String imp_jv="";
  String n_break_jv="";
  //variables to get the value for the cpu´s data
  String ram_jv="";
  String dd_jv="";
  String tr_jv="";
  String win_jv="";
  String tr2_jv="";
  //----
  String f_dconsul_jv="";
  String f_anaq_jv="";
  String n_anaq_jv="";
  String e_farm_jv="";
  String s_cel_jv="";
  String turn_despa_jv="";
  String f_prov_jv="";

 
 
 //variable para el segundo Mostrar
 	String clave2_jv="";
	String desc2_jv= "";
	String lote2_jv= ""; 
	String lote22_jv= "";
	String cadu2_jv= "";
	String exis2_jv= "";
	String costo2_jv="";
	String exi2_jv="";
	
	String juris2_jv="";
	String date_jv="";
//variable for the Captura 3
    String clave3_jv="";
	String desc3_jv= "";
	String lote3_jv= ""; 
	//String lote_3_jv= "";
	String cadu3_jv= "";
	String exis3_jv= "";
	String costo3_jv="";
	String exi3_jv="";
	
	String juris_4_jv="";
	
//variables for get the values of the txtf

String spss_jv="";
String fol2_jv="";
String med_jv=""; 
String pac_jv=""; 
String tu_jv="";
 
String spss2_jv="";
String fol22_jv="";
String med2_jv=""; 
String pac2_jv=""; 
String tu2_jv="";

String cves_jv="";
String rm_jv="";
String pelo_jv="";

//Variavles para los campos que se agregaron proyecto Durango
String camassi_jv="";
String camasno_jv="";
String anaque_jv="";
String racks_jv="";
String consmen_jv="";
String recmen_jv="";
String piedes_jv="";
String nomtel_jv="";
String fech_ul_jv="";
String senal_cel_jv="";
String dd="";
String mm="";
String aa="";
String a1="";
String a2="";
String a3="";
String a4=""; 	  
String a5="";
String a6="";
String a7="";
String a8="";
String a9="";
String a10="";
String a11="";
String a12="";
String a13="";
String a14="";
String a15="";
String a16="";
String a17="";
String a18="";
String a19="";
String a20="";
String a21="";
String b1="";
String b2="";
String b3="";
String b4=""; 	  
String c1="";
String c2="";
String c3="";
String c4=""; 	  
String c5="";
String c6="";
String d1="";
String d2="";
String d3="";
String d4=""; 	  
String d5="";
String d6="";
String d7="";
String d8="";
String d9="";
String d10="";
String e1="";
String e2="";
String e3="";
String f1="";
String f2="";
String f3="";
String f4=""; 	  
String f5="";
String f6="";
String f7="";
String f8="";
String f9="";
String f10="";
String f11="";
String f12="";
String f13="";
String f14="";
String f15="";
String f16="";
String f17="";
String g1="";
String g2="";
String g3="";
String g4=""; 	  
String g5="";
String g6="";
String g7="";
String g8="";
String g9="";
String obse="";

String unida="";
String equip="";
	  try {
       		cves_jv = request.getParameter("clave");
			rm_jv = request.getParameter("rm");
			pelo_jv = request.getParameter("juris"); 
			unida= request.getParameter("unidad");    
			equip= request.getParameter("equipo");			   
	  } catch (Exception e) { }
 
cuantos_jv=request.getParameter("txtf_cant");
     

     int tam=0,tam2=0,x1=0;
     String cad1[]=new String[1000];  //array for show clients 
     String arr[]= new String[5000];     //array for the 
	 String lotes[]= new String[5000];
	 String lotes2[]= new String[5000];
	 String lotes3[]= new String[5000];
	 String exis[]= new String[5000];
	 
	 String cie[]= new String[5000];
	 
	 String cad[]= new String[5000];
	 String cad2[]= new String[5000];
	 String cad3[]= new String[5000];
	 
	 lotes[0]="";
	 lotes2[0]="";
	 cad[0]="";
	 cad2[0]="";
     String name="";
     String service_jv="";
	 int pos=0;
	 int pos2=0;
	 int pos3=0;
	 int cont2=0;
	 int cont3=0;
     String mail[]=new String[10];
	 String meses[]=new String[12];
	 meses[0]="Enero";
	 meses[1]="Febrero";
	 meses[2]="Marzo";
	 meses[3]="Abril";
	 meses[4]="Marzo";
	 meses[5]="Abril";
	 meses[6]="Mayo";
	 meses[7]="Junio";
	 meses[8]="Julio";
	 meses[9]="Agosto";
	 meses[10]="Septiembre";
	 meses[11]="Octubre";
	 meses[0]="Noviembre";
	 meses[1]="Diciembre";
	
     int altaOK=0;
     int altaOKAY=0;	 
     String but="r";
	 String clave="";

     String juris_jv="";
	 //String juris2_jv="";
     String cs_jv="";
	 String lotes2_jv="";
	 
	 String check=request.getParameter("txtf_5");
	 int c=0;
	 int tam_3=0;
	 mail[0]="lasalle_tur@yahoo.com";
     String val="h";
	 String user="h";
	 //variables para mostrar en campos
	    String clave_jv= "";
		String desc_jv=  "";
	    String lote_jv= "";
		String cadu_jv= "";
		String exis_jv= "";
		String costo_jv= "";
int cont=1;
//Rutina para obtener las claves 
	 
	 

try{
        altaOK=Integer.parseInt(request.getParameter("altaok"));   
       }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }
	   
   try { 
        but=""+request.getParameter("Submit");
        //altaOK="no";
    }catch(Exception e){System.out.print("not");}
 rset=stmt.executeQuery("select a1,a11 from censos;");
          while (rset.next()) 
                  { 
                   if(rset.getString("a11").equals("JURISDICCION SANITARIA I"))
			          {c_j1++;j_u=c_j1+")"+" J1 - "+rset.getString("a1");}
						  if(rset.getString("a11").equals("JURISDICCION SANITARIA II"))
					         { c_j2++;j_u=c_j2+")"+" J2 - "+rset.getString("a1");}
							    if(rset.getString("a11").equals("JURISDICCION SANITARIA III"))
					               {c_j3++;j_u=c_j3+")"+" J3 - "+rset.getString("a1");}
						
                    juris_n[tam2]=j_u;//rset.getString("a1");//j_u;//rset.getString("a11");
					censo[tam2]=rset.getString("a1");
					tam2++;
                   }
	  
%>

<%
if(but.equals("Por Unidad"))
     {
	 //no//out.print("test");
  juris_jv= request.getParameter("Category");
  unis_jv=  request.getParameter("SubCat");
  jur_jv= request.getParameter("txtf_jur");
  mun2_jv= request.getParameter("txtf_mun2");
 		  rset_1 = stmt.executeQuery("select * from censos where a11='"+juris_jv+"' and a1='"+unis_jv+"'");	
	 
	while(rset_1.next())
			{
				fecha10=rset_1.getString("fecha");
				
					
			 a1=rset_1.getString("a1");
			 a2=rset_1.getString("a2");
			 a3=rset_1.getString("a3");
			 a4=rset_1.getString("a4");
			 a5=rset_1.getString("a5");
			 a6=rset_1.getString("a6");
			 a7=rset_1.getString("a7");
			 a8=rset_1.getString("a8");
			 a9=rset_1.getString("a9");
			 a10=rset_1.getString("a10");
			 a11=rset_1.getString("a11");
			 a12=rset_1.getString("a12");
			 a13=rset_1.getString("a13");
			 a14=rset_1.getString("a14");
			 a15=rset_1.getString("a15");
			 a16=rset_1.getString("a16");
			 a17=rset_1.getString("a17");
			 a18=rset_1.getString("a18");
			 a19=rset_1.getString("a19");
			 a20=rset_1.getString("a20");
			 a21=rset_1.getString("a21");
			 b1=rset_1.getString("b1");
			 b2=rset_1.getString("b2");
			 b3=rset_1.getString("b3");
			 b4=rset_1.getString("b4");
			 c1=rset_1.getString("c1");
			 c2=rset_1.getString("c2");
			 c3=rset_1.getString("c3");
			 c4=rset_1.getString("c4");
			 c5=rset_1.getString("c5");
			 c6=rset_1.getString("c6");
			 d1=rset_1.getString("d1");
			 //jv=rset_1.getString("slct_tr2");
			 d2=rset_1.getString("d2");
			 d3=rset_1.getString("d3");
			 d4=rset_1.getString("d4");
			 d5=rset_1.getString("d5");
			 d6=rset_1.getString("d6");
			 d7=rset_1.getString("d7");
			 d8=rset_1.getString("d8");
			 d9=rset_1.getString("d9");
			 d10=rset_1.getString("d10");
			 e1=rset_1.getString("e1");
			 e2=rset_1.getString("e2");
			 e3=rset_1.getString("e3");
			 f1=rset_1.getString("f1");
			 f1b=rset_1.getString("f1b");
			 f2=rset_1.getString("f2");
			 f3=rset_1.getString("f3");
			 f4=rset_1.getString("f4");
			 f5=rset_1.getString("f5");
			 f6=rset_1.getString("f6");
			 f7=rset_1.getString("f7");
			 f8=rset_1.getString("f8");
			 f9=rset_1.getString("f9");
			 f10=rset_1.getString("f10");
			 f11=rset_1.getString("f11");
			 f12=rset_1.getString("f12");
			 f13=rset_1.getString("f13");
			 f14=rset_1.getString("f14");
			 f15=rset_1.getString("f15");
			 f16=rset_1.getString("f16");
			 f17=rset_1.getString("f17");
			 g1=rset_1.getString("g1");
			 g2=rset_1.getString("g2");
			 g3=rset_1.getString("g3");
			 g4=rset_1.getString("g4");
			 g5=rset_1.getString("g5");
			 g6=rset_1.getString("g6");
			 g7=rset_1.getString("g7");
			 g8=rset_1.getString("g8");
			 g9=rset_1.getString("g9");
			 obse=rset_1.getString("obs");
			 elabo=rset_1.getString("elabo");
			 //fecha10=rset_1.getString("fecha");
         }
     } 
	 
if(but.equals("Mostrar"))
     {
	 //no//out.print("test");
  //juris_jv= request.getParameter("slct_censo");
  unis_jv=  request.getParameter("slct_censo");
  
 		  rset_1 = stmt.executeQuery("select * from censos where a1='"+unis_jv+"'");	
	 
	while(rset_1.next())
		{
			 a1=rset_1.getString("a1");
			 a2=rset_1.getString("a2");
			 a3=rset_1.getString("a3");
			 a4=rset_1.getString("a4");
			 a5=rset_1.getString("a5");
			 a6=rset_1.getString("a6");
			 a7=rset_1.getString("a7");
			 a8=rset_1.getString("a8");
			 a9=rset_1.getString("a9");
			 a10=rset_1.getString("a10");
			 a11=rset_1.getString("a11");
			 a12=rset_1.getString("a12");
			 a13=rset_1.getString("a13");
			 a14=rset_1.getString("a14");
			 a15=rset_1.getString("a15");
			 a16=rset_1.getString("a16");
			 a17=rset_1.getString("a17");
			 a18=rset_1.getString("a18");
			 a19=rset_1.getString("a19");
			 a20=rset_1.getString("a20");
			 a21=rset_1.getString("a21");
			 b1=rset_1.getString("b1");
			 b2=rset_1.getString("b2");
			 b3=rset_1.getString("b3");
			 b4=rset_1.getString("b4");
			 c1=rset_1.getString("c1");
			 c2=rset_1.getString("c2");
			 c3=rset_1.getString("c3");
			 c4=rset_1.getString("c4");
			 c5=rset_1.getString("c5");
			 c6=rset_1.getString("c6");
			 d1=rset_1.getString("d1");
			 //jv=rset_1.getString("slct_tr2");
			 d2=rset_1.getString("d2");
			 d3=rset_1.getString("d3");
			 d4=rset_1.getString("d4");
			 d5=rset_1.getString("d5");
			 d6=rset_1.getString("d6");
			 d7=rset_1.getString("d7");
			 d8=rset_1.getString("d8");
			 d9=rset_1.getString("d9");
			 d10=rset_1.getString("d10");
			 e1=rset_1.getString("e1");
			 e2=rset_1.getString("e2");
			 e3=rset_1.getString("e3");
			 f1=rset_1.getString("f1");
			 f1b=rset_1.getString("f1b");
			 f2=rset_1.getString("f2");
			 f3=rset_1.getString("f3");
			 f4=rset_1.getString("f4");
			 f5=rset_1.getString("f5");
			 f6=rset_1.getString("f6");
			 f7=rset_1.getString("f7");
			 f8=rset_1.getString("f8");
			 f9=rset_1.getString("f9");
			 f10=rset_1.getString("f10");
			 f11=rset_1.getString("f11");
			 f12=rset_1.getString("f12");
			 f13=rset_1.getString("f13");
			 f14=rset_1.getString("f14");
			 f15=rset_1.getString("f15");
			 f16=rset_1.getString("f16");
			 f17=rset_1.getString("f17");
			 g1=rset_1.getString("g1");
			 g2=rset_1.getString("g2");
			 g3=rset_1.getString("g3");
			 g4=rset_1.getString("g4");
			 g5=rset_1.getString("g5");
			 g6=rset_1.getString("g6");
			 g7=rset_1.getString("g7");
			 g8=rset_1.getString("g8");
			 g9=rset_1.getString("g9");
			 obse=rset_1.getString("obs");
			 elabo=rset_1.getString("elabo");
			 fecha10=rset_1.getString("fecha");
         }
     } 
	    
%>
<% java.util.Calendar currDate = new java.util.GregorianCalendar();
   // add 1 to month because Calendar's months start at 0, not 1
   int month = currDate.get(currDate.MONTH)+1;
   int day = currDate.get(currDate.DAY_OF_MONTH);
   int year = currDate.get(currDate.YEAR);
   
   String date=" "+year;
   date= date+"/"+month;
   date= date+"/"+day;  
  // out.println(altaOK);
 
%>


<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<script language="javascript" src="list02.js"></script>
<script language="javascript" src="js/bootstrap-button.js"></script>
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
.style41 {font-size: 9}
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
<body bgcolor="#ffffff" onload="fillCategory_Juriss()">
<p>
  <%
    
	 if (altaOK==0)
       { 
	  
      
%>
</p>
<div class="container">
      <div class="header">
        <ul class="nav nav-pills pull-right">
          <li class="active"><a href="index.jsp">Inicio</a></li>
          <li><a data-toggle="modal" href="#myModal2">Acerca de...</a></li>
          <li><a data-toggle="modal" href="#myModal">Contact&aacute;ctenos</a></li>
        </ul>
        <h3 class="text-muted">Consulta de Censos Hospitales</h3>
      </div>
</div>
<table width="94%" border="0" align="center" cellpadding="0" cellspacing="0">
 <tr>
     <td colspan="2" valign="top"><form action="consultaCensosHA.jsp" method="post" name="form" class="form-horizontal" >
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
                <option>-- SELECCIONA UNIDAD --</option>
                <%                
					  for(int x=0;x<tam2;x++)
						  {	                     
					  %>
                <option value="<%=censo[x]%>"><%=juris_n[x]%></option>
                <%
						   }
					  %>
                </select></td>
            <td  class="style43 style51">&nbsp;</td>
            <td colspan="3"  class="style58"><span class="style43 style51">
              <input name="Submit" type="submit" data-loading-text="Loading..." class="btn btn-primary" value="Mostrar" />
            </span></td>
            </tr>
          <tr>
            <td colspan="3" class="style43 style51" align="center">&nbsp;</td>
            <td  class="style43 style51">&nbsp;</td>
            <td colspan="3"  class="style58">&nbsp;</td>
            </tr>
          
          <tr>
            <td colspan="7"><h5><strong>Jurisdicci&oacute;n 1:&nbsp;<%=c_j1%>&nbsp;Jurisdicci&oacute;n 2:&nbsp;<%=c_j2%>&nbsp;Jurisdicci&oacute;n 3:&nbsp;<%=c_j3%>&nbsp;&nbsp;No de Censos realizados:&nbsp;<%=tam2%></strong></h5></td>
            </tr>
            <tr>
            <td colspan="7"  class="style43 style51"><hr /></td>
            </tr>
          <tr>
            <td colspan="3"  class="style58">Fecha de Elaboraci&oacute;n 
              <input name="txtf_aa" type="text" class="form-control" onkeypress="return handleEnter(this, event)" size="15" maxlength="4" value="<%=fecha10%>" readonly="readonly" /></td>
            <td  class="style43 style51">&nbsp;</td>
            <td colspan="3"  class="style58">Elaborado por: 
              <input name="txtf_elab" type="text" class="form-control" onkeypress="return handleEnter(this, event)" size="40" value="<%=elabo%>"  readonly="readonly"/></td>
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
          <tr>
            <td width="29" class="style58"><div align="center">A.1</div></td>
            <td width="189" class="style58">Nombre de Hospital </td>
            <td class="style33"><strong>
              <label><strong>
                <textarea name="txtf_1" cols="40" class="form-control" id="txtf_1" onkeypress="return handleEnter(this, event)" readonly="readonly"><%=a1%></textarea>
              </strong></label>
              </strong></td>
            <td width="1">&nbsp;</td>
            <td bgcolor="#FFFFFF" class="style58">D.5</td>
            <td class="style58"><div align="left">No. de Camas Censables</div></td>
            <td><span class="style49">
              <label></label>
              <label>
                <input name="txtf_34" type="text" class="form-control" id="txtf_34" onkeypress="return handleEnter(this, event)" value="<%=d5%>" readonly="readonly"/>
                </label>
              </span></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.2</div></td>
            <td class="style58">Direcci&oacute;n</td>
            <td ><label><strong>
                <textarea name="txtf_2" cols="40" class="form-control" id="txtf_2" onkeypress="return handleEnter(this, event)" readonly="readonly"><%=a2%></textarea>
                </strong></label>
              </strong></td>
            <td>&nbsp;</td>
            <td bgcolor="#FFFFFF" class="style58">D.6</td>
            <td class="style58"><div align="left">No. de Camas No Censables</div></td>
            <td><span class="style49">
              <label></label>
              <label>
                <input name="txtf_34" type="text" class="form-control" id="txtf_34" onkeypress="return handleEnter(this, event)" value="<%=d5%>" readonly="readonly"/>
                </label>
              </span></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.3</div></td>
            <td class="style58">Referencias</td>
            <td class="style33"><strong>
              <label>
                <textarea name="txtf_a3" cols="40" class="form-control" id="txtf_a3" onkeypress="return handleEnter(this, event)" readonly="readonly"><%=a3%></textarea>
                </label>
              </strong></td>
            <td>&nbsp;</td>
            <td bgcolor="#FFFFFF" class="style58">D.7</td>
            <td width="230" class="style58"><div align="left">&iquest;Se cuenta con Almac&eacute;n? </div></td>
            <td width="282"><span class="style49">
              
              <textarea name="txtf_35" readonly="readonly" class="form-control" id="txtf_35" onkeypress="return handleEnter(this, event)"><%=d6%></textarea>
              </span></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.4</div></td>
            <td class="style58">Colonia</td>
            <td class="style33"><strong>
              <label>
                <textarea name="txtf_a4" cols="40" class="form-control" id="txtf_a4" onkeypress="return handleEnter(this, event)" readonly="readonly"><%=a4%></textarea>
                </label>
              </strong></td>
            <td>&nbsp;</td>
            <td class="style58">D.8</td>
            <td class="style58"><div align="left">&iquest;Existe Subalmac&eacute;n?</div></td>
            <td class="style58"><input name="txtf_d7" type="text" class="form-control" id="txtf_d7" onkeypress="return handleEnter(this, event)" value="<%=d7%>" readonly="readonly"/></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.5</div></td>
            <td class="style58">Poblaci&oacute;n Atendida</td>
            <td class="style33"><strong>
              <label>
                <textarea name="txtf_5" cols="40" class="form-control" id="txtf_5" onkeypress="return handleEnter(this, event)" readonly="readonly"><%=a5%></textarea>
                </label>
              </strong></td>
            <td>&nbsp;</td>
            <td bgcolor="#FFFFFF" class="style58">D.9</td>
            <td class="style58"><div align="left">&iquest;Qui&eacute;n Administra el almac&eacute;n?</div></td>
            <td><span class="style49">
              <input name="txtf_d8" type="text" class="form-control" id="txtf_d8" onkeypress="return handleEnter(this, event)" value="<%=d8%>" readonly="readonly" /></span></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.6</div></td>
            <td class="style58">C&oacute;digo Postal </td>
            <td class="style33"><input name="txtf_6" type="text" class="form-control" id="txtf_6" size="40" onkeypress="return handleEnter(this, event)" value="<%=a6%>" readonly="readonly"/></td>
            <td class="style58">&nbsp;</td>
            <td class="style58">D.10</td>
            <td class="style58">El resurtido es por dosis o por presentaci&oacute;n completa </td>
            <td><textarea name="txtf_d9" readonly="readonly" class="form-control" id="txtf_d9" onkeypress="return handleEnter(this, event)"><%=d9%></textarea>
              </label>
              </p></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.7</div></td>
            <td class="style58">No. en Mapa </td>
            <td class="style33"><strong>
              <label>
                <input name="txtf_7" type="text" class="form-control" id="txtf_7" size="40" onkeypress="return handleEnter(this, event)" value="<%=a7%>" readonly="readonly"/>
                <!--select name="slect_clue" class="style33" id="slect_clue" onchange="Selectpast()" onkeypress="return handleEnter(this, event)">
            <option>Selecc</option>
          </select-->
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
                <input name="txtf_8" type="text" class="form-control" id="txtf_8" size="40" onkeypress="return handleEnter(this, event)" value="<%=a8%>" readonly="readonly"/>
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
                <input name="txtf_9" type="text" class="form-control" id="txtf_9" onkeypress="return handleEnter(this, event)" value="<%=a9%>" size="40" readonly="readonly" />
                </label>
              </strong></td>
            <td>&nbsp;</td>
            <td bgcolor="#FFFFFF" class="style58">E.1</td>
            <td bgcolor="#FFFFFF" class="style58"><div align="left">&iquest;Tiene M&eacute;dicamento y/o Mat. Curaci&oacute;n?</div></td>
            <td><input name="txtf_e1" type="text" class="form-control" id="txtf_e1" onkeypress="return handleEnter(this, event)" value="<%=e1%>" readonly="readonly"/></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.10</div></td>
            <td class="style58">P&aacute;gina Web </td>
            <td class="style33"><strong>
              <label>
                <input name="txtf_10" type="text" class="form-control" id="txtf_10" size="40" onkeypress="return handleEnter(this, event)" value="<%=a10%>" readonly="readonly"/>
                </label>
              </strong></td>
            <td>&nbsp;</td>
            <td class="style58">E.2</td>
            <td class="style58">Ubicaci&oacute;n</td>
            <td><label>
              <textarea name="txtf_e2" readonly="readonly" class="form-control" id="txtf_e2" cols="40" onkeypress="return handleEnter(this, event)"><%=e2%></textarea>
              </label></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.11</div></td>
            <td class="style58">Jurisdiccion Sanitaria Perteneciente </td>
            <td class="style33"><strong>
              <label>
                <input name="txtf_11" type="text" class="form-control" id="txtf_11" onkeypress="return handleEnter(this, event)" size="40" value="<%=a11%>" readonly="readonly"/>
                </label>
              </strong></td>
            <td>&nbsp;</td>
            <td class="style58">E.3</td>
            <td class="style58">&iquest;C&oacute;mo se surten los Kits quir&uacute;rgicos?</td>
            <td><label><span class="style58">
              <textarea name="txtf_e3" readonly="readonly" class="form-control" id="txtf_e3" cols="40" onkeypress="return handleEnter(this, event)"><%=e3%></textarea>
              </span></label></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.12</div></td>
            <td class="style58">Coordinaci&oacute;n Municipal Perteneciente</td>
            <td class="style33"><strong>
              <label>
                <input name="txtf_12" type="text" class="form-control" id="txtf_12" size="40" onkeypress="return handleEnter(this, event)" value="<%=a12%>" readonly="readonly"/>
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
                <input name="txtf_13" type="text" class="form-control" id="txtf_13" size="40" onkeypress="return handleEnter(this, event)" value="<%=a13%>" readonly="readonly"/>
                </label>
              </strong></td>
            <td>&nbsp;</td>
            <td class="style58">F.1</td>
            <td class="style58"><div align="left">Horario de atenci&oacute;n </div></td>
            <td><span class="style58">
              De: 
              <input name="txtf_39" type="text" class="form-control" id="txtf_39" size="1" onkeypress="return handleEnter(this, event)" value="<%=f1%>" readonly="readonly"/>
              a:
              <input name="txtf_39b" type="text" class="form-control" id="txtf_39b" size="5" onkeypress="return handleEnter(this, event)" value="<%=f1b%>" readonly="readonly"/>
              </span></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.14</div></td>
            <td class="style58">No. de Servicios </td>
            <td class="style33"><strong>
              <label>
                <textarea name="txtf_14" cols="40" readonly="readonly" class="form-control" id="txtf_14" onkeypress="return handleEnter(this, event)"><%=a14%></textarea>
                </label>
              </strong></td>
            <td>&nbsp;</td>
            <td class="style58">F.2</td>
            <td class="style58"><div align="left">
              <table cellspacing="0" cellpadding="0">
                <tr>
                  <td width="277">&iquest;Cuanto    personal atiende la Farmacia?</td>
                </tr>
              </table>
            </div></td>
            <td><span class="style49">
              <label></label>
              <label></label>
              <label></label>
              <input name="txtf_41" type="text" class="form-control" id="txtf_41" size="10" onkeypress="return handleEnter(this, event)" value="<%=f2%>" readonly="readonly"/>
              </span></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.15</div></td>
            <td class="style58">N&uacute;mero de Consultorios de Primer Nivel</td>
            <td class="style33"><strong>
              <label>
                <input name="txtf_15" type="text" class="form-control" id="txtf_15" size="40" onkeypress="return handleEnter(this, event)" value="<%=a15%>" readonly="readonly"/>
                </label>
              </strong></td>
            <td>&nbsp;</td>
            <td bgcolor="#FFFFFF" class="style58">F.3</td>
            <td class="style58"><div align="left">
              <table cellspacing="0" cellpadding="0">
                <tr>
                  <td width="277">N&uacute;mero    de Anaqueles en Farmacia</td>
                </tr>
              </table>
            </div></td>
            <td><span class="style49">
              <textarea name="txtf_42" cols="40" readonly="readonly" class="form-control" id="txtf_42" onkeypress="return handleEnter(this, event)"><%=f3%></textarea>
              </span></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.16</div></td>
            <td class="style58">Categor&iacute;a</td>
            <td class="style33"><strong>
              <label>
                <textarea name="txtf_a16" cols="40" readonly="readonly" class="form-control" id="txtf_a16" onkeypress="return handleEnter(this, event)"><%=a16%></textarea>
                </label>
              </strong></td>
            <td>&nbsp;</td>
            <td class="style58">F.4</td>
            <td class="style58"><div align="left">
              <table cellspacing="0" cellpadding="0">
                <tr>
                  <td width="277">&iquest;Qu&eacute;    tan frecuentemente falla el suministro de energ&iacute;a el&eacute;ctrica en la Farmacia?</td>
                </tr>
              </table>
            </div></td>
            <td><span class="style49">
              <textarea name="txtf_f4" cols="40" readonly="readonly" class="form-control" id="txtf_f4" onkeypress="return handleEnter(this, event)"><%=f4%></textarea>
              </span></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.17</div></td>
            <td class="style58">Nombre del Administrador </td>
            <td class="style33"><input name="txtf_a17" type="text" class="form-control" id="txtf_a17" size="40" onkeypress="return handleEnter(this, event)" value="<%=a17%>" readonly="readonly"/></td>
            <td>&nbsp;</td>
            <td class="style58">F.5</td>
            <td class="style58"><div align="left">Existe alg&uacute;n tipo de validaci&oacute;n de acuerdo al origen del paciente </div></td>
            <td><input name="txtf_f5" type="text" class="form-control" id="txtf_f5" onkeypress="return handleEnter(this, event)"  size="40"  value="<%=f5%>" readonly="readonly"/></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.18</div></td>
            <td class="style58">Telefono del Administrador </td>
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">F.6</td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277">&iquest;C&oacute;mo    validan el origen del paciente en la Farmacia?</td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
              </span></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.19</div></td>
            <td class="style58">Correo Electr&oacute;nico del Administrador </td>
            <td class="style58"><input name="txtf_19" type="text" class="form-control" id="txtf_19" size="40" onkeypress="return handleEnter(this, event)" value="<%=a19%>" readonly="readonly"/>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">F.7</td>
            <td class="style58">&iquest;C&oacute;mo surten recetas impresas de consulta externa?</td>
            <td><textarea name="txtf_f7" cols="40" readonly="readonly" class="form-control" id="txtf_f7" onkeypress="return handleEnter(this, event)"><%=f7%></textarea></td>
            </tr>
          <tr>
            <td height="48" class="style58"><div align="center">A.20</div></td>
            <td class="style58">Nombre del director </td>
            <td class="style58"><textarea name="txtf_a20" cols="40" class="form-control" id="txtf_a20" onkeypress="return handleEnter(this, event)" readonly="readonly"><%=a20%></textarea>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">F.8</td>
            <td class="style58">&iquest;C&oacute;mo surten recetas colectivas de urgencias? </td>
            <td><label>
              <textarea name="txtf_f8" cols="40" readonly="readonly" class="form-control" id="txtf_f8" onkeypress="return handleEnter(this, event)"><%=f8%></textarea>
              </label></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">A.21</div></td>
            <td class="style58">Correo Electr&oacute;nico del Director</td>
            <td class="style33"><textarea name="txtf_21" cols="40" readonly="readonly" class="form-control" id="txtf_21" onkeypress="return handleEnter(this, event)"><%=a21%></textarea></td>
            <td>&nbsp;</td>
            <td class="style58">F.9</td>
            <td class="style58">&iquest;C&oacute;mo surten recetas colectivas de servicios? </td>
            <td><label>
              <textarea name="txtf_f9" cols="40" readonly="readonly" class="form-control" id="txtf_f9" onkeypress="return handleEnter(this, event)" ><%=f9%></textarea>
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
              <textarea name="txtf_f10" cols="40" readonly="readonly" class="form-control" id="txtf_f10" onkeypress="return handleEnter(this, event)"><%=f10%></textarea>
              </label></td>
            </tr>
          <tr> 
            <td class="style58"><div align="center">B.1</div></td>
            <td class="style58">N&ordm; de Consultorios </td>
            <td><span class="style49">
              <label>
                <textarea name="txtf_22" cols="40" readonly="readonly" class="form-control" id="txtf_22" onkeypress="return handleEnter(this, event)"><%=b1%></textarea>
                </label>
              </span></td>
            <td>&nbsp;</td>
            <td class="style58">F.11</td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277">&iquest;Cu&aacute;ntos    insumos solicitan en promedio por receta en la Farmacia?</td>
              </tr>
            </table></td>
            <td><label><span class="style47">
              <textarea name="txtf_f11" cols="40" readonly="readonly" class="form-control" id="txtf_f11" onkeypress="return handleEnter(this, event)"><%=f11%></textarea>
              </span></label></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">B.2</div></td>
            <td class="style58">Ubicaci&oacute;n dentro del Hospital</td>
            <td><span class="style49">
              <label>
                <textarea name="txtf_23" cols="40" readonly="readonly" class="form-control" id="txtf_23" onkeypress="return handleEnter(this, event)"><%=b2%></textarea>
                </label>
              </span></td>
            <td>&nbsp;</td>
            <td height="49" class="style58">F.12</td>
            <td height="49" class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277">&iquest;Qu&eacute; se    hace en caso de que no se tenga alg&uacute;n insumo solicitado en la Farmacia?</td>
              </tr>
            </table></td>
            <td height="49" class="style47"><label>
              <textarea name="txtf_f12" cols="40" readonly="readonly" class="form-control" id="txtf_f12" onkeypress="return handleEnter(this, event)"><%=f12%></textarea>
              </label></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">B.3</div></td>
            <td class="style58">&iquest;Como se Resurte de M&eacute;dicamento?</td>
            <td>
              
                <label>
                  <textarea name="txtf_24" cols="40" readonly="readonly" class="form-control" id="txtf_24" onkeypress="return handleEnter(this, event)"><%=b3%></textarea>
                  </label>
                </td>
            <td>&nbsp;</td>
            <td class="style58">F.13</td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277">&iquest;C&uacute;al es    el Porcentaje de Abasto actual en la Farmacia?</td>
              </tr>
            </table></td>
            <td> <input name="txtf_f13" type="text" class="form-control" id="txtf_f13" onkeypress="return handleEnter(this, event)"  size="10"  value="<%=f13%>" readonly="readonly"/></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">B.4</div></td>
            <td class="style58">&iquest;Tiene medicamento y/o mat. curaci&oacute;n?</td>
            <td><span class="style49">
              <label> </label>
              </span> <strong>
                <label></label>
                <label></label>
                <span class="style32">
                  <label><br />
                    </label>
                  <label>
                    <textarea name="txtf_b4" cols="40" class="form-control" id="txtf_b4" onkeypress="return handleEnter(this, event)" readonly="readonly"><%=b4%></textarea>
                    </label>
                  <label></label>
                  </span></strong></td>
            <td>&nbsp;</td>
            <td class="style58">F.14</td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277">&iquest;El    Inventario en la Farmacia se encuentra actualizado?</td>
              </tr>
            </table></td>
            <td height="26" class="style47"><textarea name="txtf_52" cols="40" readonly="readonly" class="form-control" id="txtf_52" onkeypress="return handleEnter(this, event)"><%=f14%></textarea></td>
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
            <td class="style47"><textarea name="txtf_53" cols="40" readonly="readonly" class="form-control" id="txtf_53" onkeypress="return handleEnter(this, event)"><%=f15%></textarea></td>
            </tr>
          <tr>
            <td height="26" class="style47"><div align="center" class="style58">C.1</div></td>
            <td class="style58">Ubicaci&oacute;n</td>
            <td><span class="style58">
              <label>
                <textarea name="txtf_c1" cols="40" readonly="readonly" class="form-control" id="txtf_c1" onkeypress="return handleEnter(this, event)"><%=c1%></textarea>
                </label>
              </span></td>
            <td height="26" class="style47">&nbsp;</td>
            <td class="style58">F.16</td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277">&iquest;Cu&aacute;ntos    turnos existen en la Farmacia?</td>
              </tr>
            </table></td>
            <td height="26" class="style47"><textarea name="txtf_f16" cols="40" readonly="readonly" class="form-control" id="txtf_f16" onkeypress="return handleEnter(this, event)"><%=f16%></textarea></td>
            </tr>
          <tr>
            <td class="style47"><div align="right" class="style77"><a href="consulta_cens.jsp" class="styl e77"></a>
              <div align="center" class="style58">C.2</div>
              </div></td>
            <td class="style58">&iquest;Como se Resurte de Insumos?</td>
            <td><label>
              <textarea name="txtf_27" cols="40" readonly="readonly" class="form-control" id="txtf_27" onkeypress="return handleEnter(this, event)"><%=c2%></textarea>
              </label></td>
            <td class="style47">&nbsp;</td>
            <td class="style58">F.17</td>
            <td class="style58">El proveedor actual general reportes </td>
            <td class="style58"><textarea name="txtf_f17" cols="40" readonly="readonly" class="form-control" id="txtf_f17" onkeypress="return handleEnter(this, event)"><%=f17%></textarea></td>
            </tr>
          <tr>
            <td class="style47"><div align="center" class="style58">C.3</div></td>
            <td class="style58">&iquest;Qui&eacute;n elabora el requerimiento o receta colectiva?</td>
            <td><span class="style49">
              <label> </label>
              </span> <strong>
                <label></label>
                <label></label>
                <span class="style32">
                  <label><br />
                    </label>
                  <label>
                    <textarea name="txtf_c3" cols="40" readonly="readonly" class="form-control" id="txtf_c3" onkeypress="return handleEnter(this, event)"><%=c3%></textarea>
                    </label>
                  <label></label>
                  </span></strong></td>
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
              <textarea name="txtf_c4" cols="40" class="form-control" id="txtf_c4" onkeypress="return handleEnter(this, event)" readonly="readonly"><%=c4%></textarea>
              </label></td>
            <td class="style47">&nbsp;</td>
            <td><span class="style58">G.1</span></td>
            <td class="style58">&iquest;Surten algun tipo de recetas?</td>
            <td class="style58"><textarea name="txtf_g1" cols="40" readonly="readonly" class="form-control" id="txtf_g1" onkeypress="return handleEnter(this, event)"><%=g1%></textarea></td>
            </tr>
          <tr>
            <td class="style47"><div align="center" class="style58">C.5</div></td>
            <td class="style58">&iquest;C&oacute;mo se surte ese carro rojo?</td>
            <td class="style58"><label>
              <textarea name="txtf_30" cols="40" readonly="readonly" class="form-control" id="txtf_30" onkeypress="return handleEnter(this, event)"><%=c5%></textarea>
              </label></td>
            <td class="style47">&nbsp;</td>
            <td class="style58">G.2</td>
            <td class="style58">&iquest;Como surten recetas colectivas de urgencias? </td>
            <td class="style58"><textarea name="txtf_g2" cols="40" readonly="readonly" class="form-control" id="txtf_g2" onkeypress="return handleEnter(this, event)"><%=g2%></textarea></td>
            </tr>
          <tr>
            <td class="style47"><div align="center" class="style58">C.6</div></td>
            <td class="style58">&iquest;Qu&eacute; Insumos M&eacute;dicos manejan en la Farmacia?</td>
            <td class="style58"><label>
              <textarea name="txtf_c6" cols="40" readonly="readonly" class="form-control" id="txtf_c6" onkeypress="return handleEnter(this, event)"><%=c6%></textarea>
              </label></td>
            <td class="style47">&nbsp;</td>
            <td class="style58">G.3</td>
            <td class="style58">&iquest;Como surten recetas colectivas de servicios? </td>
            <td class="style58"><textarea name="txtf_g3" cols="40" readonly="readonly" class="form-control" id="txtf_g3" onkeypress="return handleEnter(this, event)"><%=g3%></textarea></td>
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
            <td class="style58"><textarea name="txtf_g4" cols="40" readonly="readonly" class="form-control" id="txtf_g4" onkeypress="return handleEnter(this, event)"><%=g4%></textarea></td>
            </tr>
                        <td class="style58">D.1</td>
            <td class="style58">&iquest;Existe servicio de Urgencias?</td>
            <td class="style58"><textarea name="txtf_60" cols="40" readonly="readonly" class="form-control" id="txtf_60" onkeypress="return handleEnter(this, event)"><%=g5%></textarea></td>
            <td class="style47">&nbsp;</td>
            <td class="style58">G.6</td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277">Espacio    para maniobras m2</td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="txtf_61" cols="40" readonly="readonly" class="form-control" id="txtf_61" onkeypress="return handleEnter(this, event)"><%=g6%></textarea></td>
            </tr>
          <tr>
            <td class="style58"><div align="center">D.2</div></td>
            <td width="189" class="style58">&iquest;Tiene medicamento y/o mat. curaci&oacute;n?</td>
            <td width="290" class="style58"><strong>
              <label><span class="style33"> <input name="txtf_d1" type="text" class="form-control" id="txtf_d1" size="10" onkeypress="return handleEnter(this, event)" value="<%=d1%>" readonly="readonly"/></span></label>
              </strong></td>
            <td class="style47">&nbsp;</td>
            <td class="style58">G.6</td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277">&iquest;Cuentan    con And&eacute;n para carga y descarga en el Almac&eacute;n?</td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="txtf_61" cols="40" readonly="readonly" class="form-control" id="txtf_61" onkeypress="return handleEnter(this, event)"><%=g6%></textarea></td>
            </tr>
          <tr>
            <td bgcolor="#FFFFFF" class="style68"><div align="center" class="style58">
              <div align="center">D.3</div>
              </div></td>
            <td bgcolor="#FFFFFF" class="style58">&iquest;C&oacute;mo se resurte de medicamento?</td>
            <td class="style58"><span class="style47">
              <input name="txtf_d2" type="text" class="form-control" id="txtf_d2" size="10" onkeypress="return handleEnter(this, event)" value="<%=d2%>" readonly="readonly" /></span></td>
            <td class="style47">&nbsp;</td>
            <td class="style58">G.7</td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277">&iquest;Cuentan    con Rampa para carga y descarga en el Almac&eacute;n?</td>
              </tr>
            </table></td>
            <td class="style58"><textarea name="txtf_62" cols="40" readonly="readonly" class="form-control" id="txtf_62" onkeypress="return handleEnter(this, event)"><%=g7%></textarea></td>
            </tr>
          <tr>
            <td bgcolor="#FFFFFF" class="style58"><div align="center">D.4</div></td>
            <td bgcolor="#FFFFFF" class="style58"><span class="style49">
              <label></label>
              </span>Ubicaci&oacute;n del medicamento</td>
            <td class="style58"><p>
              <label></label>
              <label></label>
              <span class="style32">
                <label></label>
                </span>
              <label></label>
              <label></label>
              <label>
                <textarea name="txtf_d3" cols="40" readonly="readonly" class="form-control" id="txtf_d3" onkeypress="return handleEnter(this, event)"><%=d3%></textarea>
                </label>
              </p></td>
            <td class="style47">&nbsp;</td>
            <td class="style58">G.8</td>
            <td class="style58">Montecargas</td>
            <td class="style58"><textarea name="txtf_63" cols="40" readonly="readonly" class="form-control" id="txtf_63" onkeypress="return handleEnter(this, event)"><%=g8%></textarea></td>
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
              <textarea name="txtf_g9" cols="40" readonly="readonly" class="form-control" id="txtf_g9" onkeypress="return handleEnter(this, event)"><%=g9%></textarea>
              </span></td>
            </tr>
  <!-- Preguntas Censos Plus Ver-->
  <%int nume=0;%>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
              <label></label></td>
            <td>&nbsp;</td>
            <td class="style58">H.<%=nume=nume+1%></td>
            <td class="style58"><table cellspacing="0" cellpadding="0">
              <tr>
                <td width="277">Consultas    Promedio por Consultorio de Primer Nivel</td>
              </tr>
            </table></td>
            <td><span class="style49">
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
              </span></td>
            </tr>
            <tr>
              <td class="style58">H.<%=nume=nume+1%></td>
              <td class="style58"><table cellspacing="0" cellpadding="0">
                <tr>
                  <td width="277">N&uacute;mero    de M&eacute;dicos</td>
                </tr>
              </table></td>
              <td class="style58"><input name="txtf_3" type="text" class="form-control" id="txtf_3" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/></td>
              <td>&nbsp;</td>
              <td class="style58">H.<%=nume=nume+1%></td>
              <td class="style58"><table cellspacing="0" cellpadding="0">
                <tr>
                  <td width="277">&iquest;Qu&eacute;    Insumos M&eacute;dicos manejan?</td>
                </tr>
              </table></td>
              <td><span class="style49">
                <textarea name="txtf_f" cols="40" readonly="readonly" class="form-control" id="txtf_f" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
              </span></td>
            </tr>
            <tr>
              <td class="style58">H.<%=nume=nume+1%></td>
              <td class="style58"><table cellspacing="0" cellpadding="0">
                <tr>
                  <td width="277">El    resurtido es por dosis o por presentaci&oacute;n completa</td>
                </tr>
              </table></td>
              <td class="style58">&nbsp;</td>
              <td>&nbsp;</td>
              <td class="style58">H.<%=nume=nume+1%></td>
              <td class="style58"><table cellspacing="0" cellpadding="0">
                <tr>
                  <td width="277">Tel&eacute;fono    del Director</td>
                </tr>
              </table></td>
              <td>&nbsp;</td>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
            <td><span class="style49">
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
                        <td width="277">&iquest;Cu&aacute;nto    personal atiende el Almac&eacute;n?</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
              <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
                <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
              <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
                <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
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
            <td class="style58"><input name="txtf_18" type="text" class="form-control" id="txtf_18" size="30" onkeypress="return handleEnter(this, event)" value="<%=a18%>" readonly="readonly"/>
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
              <textarea name="txtf_f6" cols="40" readonly="readonly" class="form-control" id="txtf_f6" onkeypress="return handleEnter(this, event)"><%=f6%></textarea>
              </span></td>
            </tr>
  <!-- fin nuevas preguntas -->          
            
            
            
             
          <tr>
            <td colspan="7" class="style47"><table width="486" border="0" align="center" cellpadding="2">
              <tr>
                <td width="245"><strong class="style58">Observaciones Generales:</strong></td>
                <td width="227"><div align="center"></div></td>
                </tr>
              <tr>
                <td><div align="center"></div></td>
                <td><div align="center"><strong>
                  <textarea name="txtf_obs" cols="150" rows="7" readonly="readonly" class="form-control" id="txtf_obs" onkeypress="return handleEnter(this, event)"><%=obse%></textarea>
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
	  
	  <div align="center">
	    <%
    }
      else
         if (altaOK == 1 )
            { 
	  %>
	  DATOS CAPTURADOS POR EL USUARIO	  </div>
	  <table width="820" border="0" align="center">
      <tr>
        <td width="810" height="21"><label></label></td>
        </tr>
      <tr>
        <td height="21"><div align="center">
          <table width="800" border="1" align="center">
            <tr>
              <td width="25" class="bodyText style40">A.1</td>
                <td width="149" class="bodyText"><span class="style40">Tipo Unidad </span></td>
                <td width="183" class="style33"><span class="style41">
                  <label></label>
                  </span>
                  <p class="style41">
                    <label><%=tip_uni_jv%></label>
                  </p></td>
                <td width="24" class="bodyText style40">B.23</td>
                <td width="212" class="bodyText style40">Conoce el Programa de Distribuci&oacute;n de GNKL</td>
                <td width="167" class="bodyText"><p class="style40">
                  <label>
                    <%=distri_gnk_jv%>				</label>
                  <br />
                  </p></td>
              </tr>
            <tr>
              <td class="bodyText style40">A.2</td>
                <td class="bodyText"><span class="style40">Juris. Sanitaria </span></td>
                <td class="style33"><span class="style41">
                  <label></label>
                  </span>
                  <p class="style41">
                    <label>
                      <%=j_sanit_jv%>                  </label>
                  </p></td>
                <td class="bodyText style40">B.24</td>
                <td class="bodyText style40">Se ha cumplido el Programa de Distribuci&oacute;n</td>
                <td width="167" class="bodyText"><p class="style40">
                  <label>
                    <%=conoc_gnk_jv%>				</label>
                  <br />
                  </p></td>
              </tr>
            <tr>
              <td class="bodyText style40">A.3</td>
                <td class="bodyText"><span class="style40">Municipio</span></td>
                <td class="style33"><span class="style41">
                  <label></label>
                  </span>
                  <p class="style41">
                    <label>
                      <%=mpio_jv%>				  </label>
                  </p>                </td>
                <td class="bodyText style40">B.25</td>
                <td class="bodyText"><span class="style40">Ha sido Contactado por GNK </span></td>
                <td class="bodyText"><p class="style40">
                  <label>
                    <%=cont_gnk_jv%>				</label>
                  <br />
                  </p></td>
              </tr>
            <tr>
              <td class="bodyText style40">A.4</td>
                <td class="bodyText"><span class="style40">Nombre Unidad </span></td>
                <td class="style33"><span class="style41">
                  <label>
                    <%=nom_uni_jv%>			  </label>
                  </span></td>
                <td class="bodyText style40">B.26</td>
                <td class="bodyText style40">Cuantas Unidades Tiene Bajo su Influencia </td>
                <td class="bodyText"><span class="style40">
                  <label>
                    <%=c_uni_jv%>			  </label>
                  </span></td>
              </tr>
            <tr>
              <td class="bodyText style40">A.5</td>
                <td class="bodyText"><span class="style40">Direcci&oacute;n </span></td>
                <td class="style33"><span class="style41">
                  <label>
                    <%=direc_jv%>			  </label>
                  </span></td>
                <td class="bodyText style40">B.27</td>
                <td class="bodyText style40">Han Sido Todas Visitadas </td>
                <td class="bodyText"><p class="style40">
                  <label>
                    <%=t_visit_jv%>				</label>
                  <br />
                  </p></td>
              </tr>
            <tr>
              <td class="bodyText style40">A.6</td>
                <td class="bodyText"><span class="style40">Tel&eacute;fono</span></td>
                <td class="style33"><span class="style41">
                  <label>
                    <%=tel_jv%>			  </label>
                  </span></td>
                <td class="bodyText style40">B.28</td>
                <td class="bodyText style40">Cuales No</td>
                <td class="bodyText"><span class="style40">
                  <label>
                    <%=c_no_jv%>			  </label>
                  </span></td>
              </tr>
            <tr>
              <td class="bodyText style40">A.7</td>
                <td class="bodyText"><span class="style40">Correo E. </span></td>
                <td class="style33"><span class="style41">
                  <label>
                    <%=correo_jv%>			  </label>
                  </span></td>
                <td class="bodyText style40">B.29</td>
                <td class="bodyText"><span class="style40">Conoces las Responsabilidades de ISSEG y GNK </span></td>
                <td class="bodyText"><p class="style40">
                  <label>
                    <%=resnpon_gnk_jv%>				</label>
                  <br />
                  </p></td>
              </tr>
            <tr>
              <td class="bodyText"><p class="style40">A.8</p></td>
                <td class="bodyText"><span class="style40">Horario Unidad </span></td>
                <td class="style33"><span class="style41">
                  <label>
                    <%=h_uni_jv%>			  </label>
                  </span></td>
                <td class="bodyText style40">B.30</td>
                <td class="bodyText"><span class="style40">Espacio Farmacia Aprox. mts2 </span></td>
                <td class="bodyText"><span class="style40">
                  <label>
                    <%=esp_farm_jv%>			  </label>
                  </span></td>
              </tr>
            <tr>
              <td class="bodyText style40">A.9</td>
                <td class="bodyText"><span class="style40">Horario Farmacia </span></td>
                <td class="style33"><span class="style41">
                  <label>
                    <%=h_far_jv%>			  </label>
                  </span></td>
                <td class="bodyText style40">B.31</td>
                <td class="bodyText style40">Hay Almac&eacute;n para Medicamentos</td>
                <td class="bodyText"><p class="style40">
                  <label>
                    <%=alma_med_jv%>				</label>
                  <br />
                  </p></td>
              </tr>
            <tr>
              <td class="bodyText style40">A.10</td>
                <td class="bodyText"><span class="style40">Se le deja el Cat&aacute;logo de Claves para recabar Consumos Declarados</span></td>
                <td class="style33"><p>
                  <label><%=c_decla_jv%></label>
                  <br />
                  </p>
                  <label></label></td>
                <td class="bodyText style40">B.32</td>
                <td class="bodyText style40">Est&aacute; la caja de ISSAPEG dentro de la Farmacia ?</td>
                <td class="bodyText"><p class="style40">
                  <label>
                    <%=issa_far_jv%>				</label>
                  <br />
                  </p></td>
              </tr>
            <tr>
              <td height="48" class="bodyText style40">A.11</td>
                <td class="bodyText"><span class="style40">Nombre del Entrevistador </span></td>
                <td class="style33"><span class="style41">
                  <label>
                    <%=nom_edor_jv%>              </label>
                  </span></td>
                <td class="bodyText style40">B.33</td>
                <td class="bodyText style40">Equipo de Computo Funciona ? </td>
                <td class="bodyText"><p class="style40">
                  <label>
                    <%=compu_jv%>				</label>
                  <br />
                  </p></td>
              </tr>
            <tr class="style33">
              <td class="bodyText style40">A.12</td>
                <td class="bodyText"><span class="style40">Nombre del Entrevistado</span></td>
                <td class="style33"><span class="style41">
                  <label>
                    <%=nom_edo_jv%>			  </label>
                  </span></td>
                <td class="bodyText style40">B.34</td>
                <td class="bodyText"><span class="style40">Tine el Sistema SIISPO Instalado ?</span></td>
                <td class="bodyText style40"><p>
                  <label></label>
                  <br />
                  <label></label>
                  <label>
                    <%=siispo_intal_jv%>				</label>
                  </p>
                    <label></label>
                  <label></label></td>
              </tr>
            <tr>
              <td class="bodyText style40">A.13</td>
                <td class="bodyText"><span class="style40">Puesto (s) </span></td>
                <td class="style33"><span class="style41">
                  <label>
                    <%=puesto_jv%>			  </label>
                  </span></td>
                <td class="bodyText style40">B.35</td>
                <td class="bodyText style40">Esat&aacute;n bien capacitados en el uso del Sistema</td>
                <td class="bodyText"><p class="style40">
                  <label>
                    <%=capa_sist_jv%>				</label>
                  <br />
                  </p></td>
              </tr>
            <tr>
              <td class="bodyText style40">A.14</td>
                <td class="bodyText"><span class="style40">Consultorio De Consulta Externa </span></td>
                <td class="style33"><p>
                  <label>
                    <%=c_exter_jv%>				</label>
                  <br />
                  </p>
                  <label></label></td>
                <td class="bodyText style40">B.36</td>
                <td class="bodyText style40">Tienen Instalado el Inventario validado por GNKL , ISSEG e ISAPEG</td>
                <td class="bodyText"><p class="style40">
                  <label>
                    <%=inst_inv_gnk_jv%>				</label>
                  <br />
                  </p></td>
              </tr>
            <tr>
              <td class="bodyText style40">A.15</td>
                <td class="bodyText"><span class="style40">N&ordm; de Medicos </span></td>
                <td class="style33"><span class="style41">
                  <label>
                    <%=n_med_jv%>			  </label>
                  </span></td>
                <td class="bodyText style40">B.37</td>
                <td class="bodyText"><span class="style40">Est&aacute; el Inventario actualizado</span></td>
                <td class="bodyText"><p class="style40">
                  <label>
                    <%=inv_act_jv%>				</label>
                  <br />
                  </p></td>
              </tr>
            <tr>
              <td class="bodyText style40">A.16</td>
                <td class="bodyText"><span class="style40">Promedio diario de recetas</span></td>
                <td class="style33"><span class="style41">
                  <label>
                    <%=pro_rec_jv%>			   </label>
                  <label></label>
                  </span></td>
                <td class="bodyText style40">B.38</td>
                <td class="bodyText style40">Capturan recetas diariamente</td>
                <td class="bodyText"><p class="style40">
                  <label>
                    <%=cap_rect_d_jv%>				</label>
                  <br />
                  </p></td>
              </tr>
            <tr>
              <td class="bodyText style40">A.17</td>
                <td class="bodyText"><span class="style40">Camas Censables</span></td>
                <td class="style33"><p class="style41">
                  <label>
                    <%=ca_censa_jv%>				</label>
                  <br />
                  </p></td>
                <td class="bodyText style40">B.39</td>
                <td class="bodyText style40">Estimado de recetas sin Capturar</td>
                <td class="bodyText"><span class="style40">
                  <label>
                    <%=rect_sin_cap_jv%>			  </label>
                  %
                  <label></label>
                  </span></td>
              </tr>
            <tr>
              <td class="bodyText style40">A.18</td>
                <td class="bodyText"><span class="style40">Promedio de recetas colectivas diarias</span></td>
                <td class="style33"><span class="style41">
                  <label>
                    <%=pro_rec_di_jv%>			  </label>
                  </span>
                  <label></label></td>
                <td class="bodyText style40">B.40</td>
                <td class="bodyText style40">Est&aacute;n debidamente Capacitados de acuerdo a sus perfiles</td>
                <td class="bodyText"><p class="style40">
                  <label>
                    <%=cap_perfil_jv%>				</label>
                  <br />
                  </p></td>
              </tr>
            <tr>
              <td class="bodyText style40">A.19</td>
                <td class="bodyText"><span class="style40">% de abasto anterior ( enero hacia atr&aacute;s )</span></td>
                <td class="style33"><span class="style41">
                  <label>
                    <%=porc_ante_jv%>%</label>
                  <label class="style33"></label>
                  </span></td>
                <td class="bodyText style40">B.41</td>
                <td class="bodyText style40">Conocen el Programa General de GNKL</td>
                <td class="bodyText"><p class="style40">
                  <label>
                    <%=prog_gral_gnk_jv%>				</label>
                  <br />
                  </p></td>
              </tr>
            <tr>
              <td height="50" class="bodyText style40">A.20</td>
                <td class="bodyText"><span class="style40">% de abasto actual</span></td>
                <td class="style33"><span class="style41">
                  <label>
                    <%=porc_act_jv%>
                    %</label>
                  <label></label>
                  </span></td>
                <td class="bodyText style40">B.42</td>
                <td class="bodyText style40">Mecanismo para su Requerimiento a GNKL</td>
                <td class="bodyText"><span class="style40">
                  <label>
                    <%=req_gnk_jv%>			  </label>
                  </span></td>
              </tr>
            <tr>
              <td class="bodyText style40">A.21</td>
                <td class="bodyText"><span class="style40">Cuentan Con Hist&oacute;rico de  Consumos, tipo POA</span></td>
                <td class="style33"><span class="style42">
                  <label></label>
                  </span>
                  <p>
                    <label>
                      <%=histo_jv%>				  </label>
                    <br />
                    </p>
                  <span class="style42">
                    <label></label>
                  </span></td>
                <td class="bodyText style40">B.43</td>
                <td class="bodyText style40">Inventario al d&iacute;a</td>
                <td class="bodyText"><p class="style40">
                  <label>
                    <%=inv_dia_jv%>				</label>
                  <br />
                  </p></td>
              </tr>
            <tr>
              <td class="bodyText style40">A.22</td>
                <td class="bodyText"><span class="style40">Comentarios del Servicio de ISSEG &amp; GNKL</span></td>
                <td class="style33"><span class="style41">
                  <label>
                    <%=serv_gnk_jv%>			  </label>
                  </span></td>
                <td class="bodyText style40">B.44</td>
                <td class="bodyText"><span class="style40">Problem&aacute;tica Especifica Detectada en las Farmacias</span></td>
                <td class="bodyText"><span class="style40">
                  <label>
                    <%=prob_far_jv%>			  </label>
                  </span></td>
              </tr>
            <tr>
              <td class="bodyText style40">&nbsp;</td>
                <td class="bodyText"><span class="style40"></span></td>
                <td class="style33">&nbsp;</td>
                <td class="bodyText style40">&nbsp;</td>
                <td class="bodyText style40">&nbsp;</td>
                <td class="bodyText style40">&nbsp;</td>
              </tr>
            <tr>
              <td class="bodyText style40">&nbsp;</td>
                <td class="bodyText"><span class="style40"></span></td>
                <td class="style33"><span class="style41">
                  <label></label>
                  </span></td>
                <td class="bodyText style40">&nbsp;</td>
                <td class="bodyText style40"><span class="style33"><span class="style41">
                  <input type="submit" name="Submit" value="Capturar" /><input type="hidden" name="altaok" value="1"/>
                  </span></span></td>
                <td class="bodyText style40"></td>
              </tr>
          </table>
        </div></td>
        </tr>
    </table>    </td>
    <td width="4">&nbsp;</td>
        <td width="6" valign="top"><br />
	&nbsp;<br /></td>
	<td width="96">&nbsp;</td>
  </tr>
  <tr>
    <td width="4">&nbsp;</td>
    <td width="68">&nbsp;</td>
    <td width="27">&nbsp;</td>
    <td width="1036"><a href="cap_censos1gtobd.jsp">DESEA CAPTURAR OTRA ENCUESTA?</a> <a href="rep_hos1.jsp">GENERAR REPORTE?</a> </td>
    <td width="4">&nbsp;</td>
    <td width="6">&nbsp;</td>
	<td width="96">&nbsp;</td>
  </tr>
</table>
<%

    }
%>
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
</body>
</html>
