CREATE TABLE country (countryid int,countryname VARCHAR(255) PRIMARY KEY) ;

CREATE TABLE state( stateid INT,statename VARCHAR(255) PRIMARY KEY) ;

CREATE TABLE dist(distid INT(255),stateid INT, distname VARCHAR(255) PRIMARY KEY);

INSERT INTO `test`.`country` (`countryid`, `countryname`) VALUES ('1', 'india');
INSERT INTO `test`.`country` (`countryid`, `countryname`) VALUES ('2', 'sri-lanka');
INSERT INTO `test`.`country` (`countryid`, `countryname`) VALUES (NULL, 'america');
INSERT INTO `test`.`state` (`stateid`, `countryid`, `state`) VALUES (NULL, '1', 'andhrapradesh');
INSERT INTO `test`.`state` (`stateid`, `countryid`, `state`) VALUES (NULL, '1', 'karnataka');
INSERT INTO `test`.`state` (`stateid`, `countryid`, `state`) VALUES (NULL, '1', 'tamilnadu');
INSERT INTO `test`.`state` (`stateid`, `countryid`, `state`) VALUES (NULL, '1', 'kerala');
INSERT INTO `test`.`state` (`stateid`, `countryid`, `state`) VALUES (NULL, '1', 'arunachal pradesh');
INSERT INTO `test`.`state` (`stateid`, `countryid`, `state`) VALUES (NULL, '2', 'Colombo');
INSERT INTO `test`.`state` (`stateid`, `countryid`, `state`) VALUES (NULL, '2', 'Kandy');
INSERT INTO `test`.`state` (`stateid`, `countryid`, `state`) VALUES (NULL, '2', 'Bandarawela');
INSERT INTO `test`.`state` (`stateid`, `countryid`, `state`) VALUES (NULL, '3', 'California');
INSERT INTO `test`.`state` (`stateid`, `countryid`, `state`) VALUES (NULL, '3', 'Georgia');

INSERT INTO state values(1,'Andhra Pradesh');
INSERT INTO state values(2,'Telangana');
INSERT INTO state values(3,'Karnataka');
INSERT INTO state values(4,'Orissa');


INSERT INTO dist values(1,1,'Krisha');
INSERT INTO dist values(2,1,'Guntur');
INSERT INTO dist values(3,1,'West Godavari');
INSERT INTO dist values(4,1,'East Godavari');
INSERT INTO dist values(5,1,'Prakasam');
INSERT INTO dist values(6,1,'Kadapa');
INSERT INTO dist values(7,1,'Kurnool');
INSERT INTO dist values(8,1,'Chittor');
INSERT INTO dist values(9,1,'Ananthapuram');
INSERT INTO dist values(10,1,'Nellore');
INSERT INTO dist values(11,1,'Visakapatnam');
INSERT INTO dist values(12,1,'Vizayanagaram');
INSERT INTO dist values(13,1,'Srikakulam');


INSERT INTO dist values(14,2,'Khammam');
INSERT INTO dist values(15,2,'Hyderabad');









INSERT INTO `test`.`city` (`cityid`, `stateid`, `city`) VALUES (NULL, '1', NULL); 
INSERT INTO `test`.`city` (`cityid`, `stateid`, `city`) VALUES (NULL, '1', NULL); 
INSERT INTO `test`.`city` (`cityid`, `stateid`, `city`) VALUES (NULL, '1', NULL); 
INSERT INTO `test`.`city` (`cityid`, `stateid`, `city`) VALUES (NULL, '1', NULL); 
INSERT INTO `test`.`city` (`cityid`, `stateid`, `city`) VALUES (NULL, '2', NULL); 
INSERT INTO `test`.`city` (`cityid`, `stateid`, `city`) VALUES (NULL, '2', NULL); 
INSERT INTO `test`.`city` (`cityid`, `stateid`, `city`) VALUES (NULL, '2', NULL); 
INSERT INTO `test`.`city` (`cityid`, `stateid`, `city`) VALUES (NULL, '2', NULL); 
INSERT INTO `test`.`city` (`cityid`, `stateid`, `city`) VALUES (NULL, '2', NULL); 
INSERT INTO `test`.`city` (`cityid`, `stateid`, `city`) VALUES (NULL, '2', NULL); 
INSERT INTO `test`.`city` (`cityid`, `stateid`, `city`) VALUES (NULL, '3', NULL); 
INSERT INTO `test`.`city` (`cityid`, `stateid`, `city`) VALUES (NULL, '3', NULL); 
INSERT INTO `test`.`city` (`cityid`, `stateid`, `city`) VALUES (NULL, '3', NULL); 
INSERT INTO `test`.`city` (`cityid`, `stateid`, `city`) VALUES (NULL, '4', NULL); 
INSERT INTO `test`.`city` (`cityid`, `stateid`, `city`) VALUES (NULL, '4', NULL); 
INSERT INTO `test`.`city` (`cityid`, `stateid`, `city`) VALUES (NULL, '4', NULL); 
INSERT INTO `test`.`city` (`cityid`, `stateid`, `city`) VALUES (NULL, '4', NULL); 
INSERT INTO `test`.`city` (`cityid`, `stateid`, `city`) VALUES (NULL, '5', NULL); 
INSERT INTO `test`.`city` (`cityid`, `stateid`, `city`) VALUES (NULL, '5', NULL); 
INSERT INTO `test`.`city` (`cityid`, `stateid`, `city`) VALUES (NULL, '5', NULL); 
UPDATE `test`.`city` SET `city` = 'chittoor' WHERE `cityid` = '1';
UPDATE `test`.`city` SET `city` = 'anantapur' WHERE `cityid` = '2';
UPDATE `test`.`city` SET `city` = 'kurnool' WHERE `cityid` = '3';
UPDATE `test`.`city` SET `city` = 'nellore' WHERE `cityid` = '4';
UPDATE `test`.`city` SET `city` = 'bangalore' WHERE `cityid` = '5';
UPDATE `test`.`city` SET `city` = 'mangalore' WHERE `cityid` = '6';
UPDATE `test`.`city` SET `city` = 'udipi' WHERE `cityid` = '7';
UPDATE `test`.`city` SET `city` = 'ballari' WHERE `cityid` = '8';
UPDATE `test`.`city` SET `city` = 'mysore' WHERE `cityid` = '9';
UPDATE `test`.`city` SET `city` = 'darmastalam' WHERE `cityid` = '10';
UPDATE `test`.`city` SET `city` = 'chennai' WHERE `cityid` = '11';
UPDATE `test`.`city` SET `city` = 'Coimbatore' WHERE `cityid` = '12';
UPDATE `test`.`city` SET `city` = 'Erode' WHERE `cityid` = '14';
UPDATE `test`.`city` SET `city` = 'Erode' WHERE `cityid` = '13';
UPDATE `test`.`city` SET `city` = 'kannor' WHERE `cityid` = '14';
UPDATE `test`.`city` SET `city` = 'kasrgood' WHERE `cityid` = '15';
UPDATE `test`.`city` SET `city` = 'thrisoor' WHERE `cityid` = '16';
UPDATE `test`.`city` SET `city` = 'kollam' WHERE `cityid` = '17';
UPDATE `test`.`city` SET `city` = 'tirap' WHERE `cityid` = '18';
UPDATE `test`.`city` SET `city` = 'siang' WHERE `cityid` = '19';

3. Create a Jsp pages



country.jsp


<%@page import="java.sql.*"%>

 <html>
      <head> 
            <script type="text/javascript"> 
            var xmlHttp;
            var xmlHttp;
            function showState(str){
                  if (typeof XMLHttpRequest != "undefined"){
                  xmlHttp= newXMLHttpRequest();
            }
            else if(window.ActiveXObject){
                     xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
            }
            if (xmlHttp==null){
                  alert("Browser does not support XMLHTTP Request")
                  return;
            }
            var url="state.jsp";
            url +="?count=" +str;
            xmlHttp.onreadystatechange = stateChange;
            xmlHttp.open("GET", url, true);
            xmlHttp.send(null);
            }
     
            functionstateChange(){  
                  if(xmlHttp.readyState==4 || xmlHttp.readyState=="complete") {  
                  document.getElementById("state").innerHTML=xmlHttp.responseText   
                  }  
                }
           
            function showCity(str){
            if (typeof XMLHttpRequest != "undefined"){
              xmlHttp= newXMLHttpRequest();
              }
            else if(window.ActiveXObject){
              xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
              }
            if (xmlHttp==null){
            alert("Browser does not support XMLHTTP Request")
            return;
            }
                  var url="city.jsp";
                  url +="?count=" +str;
                  xmlHttp.onreadystatechange = stateChange1;
                  xmlHttp.open("GET", url, true);
                  xmlHttp.send(null);
            }
            functionstateChange1(){  
                  if(xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){  
                        document.getElementById("city").innerHTML=xmlHttp.responseText   
                  }  
            }
            </script> 
      </head> 
      <body> 
      <br/>
      Country : <select name='country'onchange="showState(this.value)"> 
       <option value="none">Select Country</option> 
          <%
                  Class.forName("com.mysql.jdbc.Driver").newInstance(); 
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root"); 
                  Statement stmt = con.createStatement(); 
                  ResultSet rs = stmt.executeQuery("Select * from country");
                  while(rs.next()){
            %>
                  <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option> 
            <%
                  }
            %>
      </select> 
      <br> 
      <div id='state'> 
            State :  <selectname='state' > 
                  <option value='-1'>Select State</option> 
            </select> 
      </div> 

      <div id='city'> 
           City : <select name='city' > 
                  <option value='-1'>Select District</option> 
            </select> 
      </div>
      </body>
</html>

state.jsp
<%@page import="java.sql.*"%>
<%
      String country=request.getParameter("count"); 
      String buffer="State : <select name='state' onchange='showCity(this.value);'><option value='-1'>Select</option>"; 
      try{
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root"); 
            Statement stmt = con.createStatement(); 
            ResultSet rs = stmt.executeQuery("Select * from state where countryid='"+country+"' "); 
            while(rs.next()){
            buffer=buffer+"<option value='"+rs.getString(1)+"'>"+rs.getString(3)+"</option>"; 
            } 
            buffer=buffer+"</select>"; 
            response.getWriter().println(buffer);
      }
      catch(Exception e){
            System.out.println(e);
      }
%>

city.jsp
<%@page import="java.sql.*"%>
<%
      String state=request.getParameter("count"); 
      String buffer="City : <select name='city'><option value='-1'>Select</option>"; 
      try{
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root"); 
            Statement stmt = con.createStatement(); 
            ResultSet rs = stmt.executeQuery("Select * from city where stateid='"+state+"' "); 
            while(rs.next()){
            buffer=buffer+"<option value='"+rs.getString(2)+"'>"+rs.getString(3)+"</option>"; 
            } 
            buffer=buffer+"</select>"; 
            response.getWriter().println(buffer);
      }
      catch(Exception e){
            System.out.println(e);
      }
%>