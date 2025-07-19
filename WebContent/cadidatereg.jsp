<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Candidate register</title>
<style>{
    box-sizing: border-box;
    font-family: Arial, Helvetica, sans-serif;
    text-transform: capitalize;
}
body{
    background-color: black;
    background-image:url("image/5.jpeg");
    background-size:cover;
}
.form{
    display: flex;
    justify-content: center;
    gap: 20px;
}
.column1 input,.column2 input,.column2 textarea,.column1 select
{
    border: none;
    border-bottom: solid 1px rgba(0, 0, 0, 0.3);
    padding: 15px;
    margin-left: 10px;
    margin-bottom: 30px;
    display: block;
    width: 350px;
}
.column1 label,.column2 label{
    display: inline-block;
    margin-left: 10px;
    margin-bottom: 10px;
    font-weight: bold;
}

input[type="submit"]{
    color: white;
    text-align: center;
    font-size: larger;
    background-color: #009688;
    border: none;
    width: 131px;
    margin-left: 610px;
    height: 50px;
    border-radius: 5px;
    cursor: pointer;
}
input[type="submit"]:hover{
    border: solid #009688 1px;
    background-color: white;
    color: #009688;
}
.UN{
color:white;}
</style>
</head>
<body>
<form action="canreg" method="post">
<div class="form">
        <div class="column1">
          
           
            <br><br><br>
            <input type="text" placeholder=" your name " name="name" id="UN" required>
            
             <input type="email" placeholder="Enter Email ID" name="email" id="date" required>
           
          
               <select placeholder="Select District" id="dist" name="pswrepeat" onchange="myFunc()" class="form-control" required>
            <option value="">Select District</option>
            <option value="Chennai">Chennai</option>
             <option value="Thiruvallur">Thiruvallur</option>
            </select>
               
            
            
            	 <select placeholder="Select District" name="psw" class="form-control" required>
            <option>Assembly</option>
            <option id="as1" >hi</option>
             <option id="as2" >hello</option>
             <option id="as3" >how</option>
             <option id="as4" >are</option>
             </select>
          
         
          <input type="tel" name="mobile" placeholder="mobile number" id="Phone-num">
            
           
        </div>
        
    </div>
    <input type="submit" value="register">
                                         </form>
                                         </body>
                                         <script>
	function myFunc(){
					var dist=document.getElementById("dist").value;
					
					if(dist=== "Chennai"){
						
						document.getElementById("as1").innerText="Anna nagar";
						document.getElementById("as2").innerText="Perambur";
						document.getElementById("as3").innerText="TNagar";
						document.getElementById("as4").innerText="Guindy";
						
					}
					else if(dist==="Thiruvallur"){ 
						document.getElementById("as1").innerText="Avadi";
						document.getElementById("as2").innerText="Thiruvetriyur";
						document.getElementById("as3").innerText="Poonamalli";
						document.getElementById("as4").innerText="Veppampattu";	
					}
				}
			</script>
                                          		
</html>