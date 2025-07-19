<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="css1/bootstrap.min.css">
    <link rel="stylesheet" href="css1/font-awesome.min1.css">
  <style>
  body {
  background-image:url("image/11.jpeg");
  background-size:cover;

  }
  
 

 </style>  
    
</head>
<% String name=session.getAttribute("uname").toString(); 
String assem=session.getAttribute("ass").toString();
String dis=session.getAttribute("dis").toString();
%>
<body>

  <div class="container" >
    <h3 style="font-weight: bold; text-align: center;margin-top: 10px;color:white">New Staff Register Here...!!!</h3><br>
    <form method="post" action="voterapply" enctype="multipart/form-data">
     <div class="row">
       <div class="card col-sm-6" style="padding-bottom:10px;background-color: #333;color:#fff;padding:10px;margin-left:25%;width: 38em;margin-bottom: 25px">
     
     <div class="form-group">
          <label for="full_name" style="color:#fff;">Voter Assembly Ward:</label>
          <input type="text" class="form-control" value="<%=dis %>" id="full_name" placeholder="Enter Full Name" name="District" id="al" readonly>
        </div>
      
     
        <div class="form-group">
          <label for="full_name" style="color:#fff;">Voter Assembly Ward:</label>
          <input type="text" class="form-control" value="<%=assem %>" id="full_name" placeholder="Enter Full Name" name="name" id="al" readonly>
        </div>
        <div class="form-group">
          <label for="email"  style="color:#fff;">Email :</label>
          <input type="email" class="form-control" id="email" value="<%=name %>" placeholder="Enter Email" name="email"  required>
          
        </div>
        <div class="form-group">
          <label for="text"  style="color:#fff;">Mobile :</label>
          <input type="text" class="form-control" id="email" placeholder="Enter contact No " name="mobile"  required>
          </div>
        

          

        <div class="form-group">
          <label for="card_photo"  style="color:#fff;">Upload Voter Id Pic</label>
          <input type="file" class="form-control" placeholder="Enter password" name="photo" accept="image/*" onchange="preview_image(event)" required>
        </div>
        <div class="form-group">
          <label  style="color:#fff;">Picture Here!!!</label><br>
          <img src="" id="output_image"/ height="200px">
        </div>
        <center><button id="submit" name="donator_register" class="btn btn-primary btn-block"  style="width:50%;" onclick="return Validate()">Submit</button></center><br>
      </div>
    </div>
    <hr>
   
  </form>
</div>
</body>

<script type='text/javascript'>
  function preview_image(event)
  {
    var reader = new FileReader();
    reader.onload = function()
    {
      var output = document.getElementById('output_image');
      output.src = reader.result;
    }
    reader.readAsDataURL(event.target.files[0]);
  }
  </script>
  <script type='text/javascript'>
  function getval(sel)
  {	console.log(sel.value);
     if(sel.value=="Chennai"){
    	 console.log(sel.value);
     	document.getElementById('al').value=RK NAGAR;
     	document.getElementById('al').value=PERAMBUR;

     }
     else if(sel.value=="Kanchipuram"){
    	 console.log(sel.value);
    	 document.getElementById('al').value=KK NAGAR;
    	 document.getElementById('al').value=ANNA NAGAR;

     }
     else if(sel.value=="Thiruvallur"){
    	 console.log(sel.value);
    	 document.getElementById('al').value=VILLIVAKKAM;
    	 document.getElementById('al').value=AMBATUR;

     }
     else {
    	 document.getElementById('al').value=50;
      }}
  
  
  </script>
  
       

</html>