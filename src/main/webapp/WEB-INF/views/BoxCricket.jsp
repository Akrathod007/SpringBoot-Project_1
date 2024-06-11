<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Box Cricket Registration</title>
</head>
<body>
	<h2>Box Cricket Registration</h2>
	<form action="savereg" method="post">
		Name: <input type="text" name="studentName" value="${reg.studentName}"/>
		<span style="color:red">${studentNameErr}</span>
		<br><br>
		
		Playing Type:
			Batman <input type="radio" name="playerType" value="Batman"  ${(reg.playerType != null) && reg.playerType.equals("Batman") ? "checked" : ""}/>
			Bowler <input type="radio" name="playerType" value="Bowler" ${(reg.playerType != null) && reg.playerType.equals("Bowler") ? "checked" : ""}/>
			AllRounder <input type="radio" name="playerType" value="AllRounder" ${(reg.playerType != null) && reg.playerType.equals("AllRounder") ? "checked" : ""}/>
			<span style="color:red">${playerTypeErr}</span>
			<br><br>
			
		Food Preference :
			<select name="foodPreference">
				<option value="-1">----Select Your Food Prefrence----</option>
				<option value="Regular" ${reg.foodPreference != null && reg.foodPreference.equals("Regular") ? "selected" : ""}>Regular</option>
				<option value="Jain" ${reg.foodPreference != null && reg.foodPreference.equals("Jain") ? "selected" : ""}>Jain</option>
			</select>	
			<span style="color:red">${foodPreferenceErr} </span>
			<br><br>
			
		Drink :
			RedBull <input type="checkbox" name="drink" value="redbull" ${reg.drink.contains("redbull") ? "checked" : ""}/>
			CocaCola <input type="checkbox" name="drink" value="cocacola" ${reg.drink.contains("cocacola") ? "checked" : ""}/>
			Lemon Juice <input type="checkbox" name="drink" value="lemon juice" ${reg.drink.contains("lemon juice") ? "checked" : ""}/>
			Fanta <input type="checkbox" name="drink" value="fanta" ${reg.drink.contains("fanta") ? "checked" : ""}/>
			Mazza <input type="checkbox" name="drink" value="mazza" ${reg.drink.contains("mazza") ? "checked" : ""}/>
			<span style="color:red">${drinkErr} </span>
			<br><br>
			
			<input type="submit" value="Register"/>
	</form>
</body>
</html>