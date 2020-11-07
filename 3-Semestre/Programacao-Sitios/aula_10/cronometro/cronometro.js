var pare;
var seg=0;
var min=0;
function iniciar()
{
	document.getElementById("parar").style = "display:inline";
	document.getElementById("iniciar").innerHTML = "Continuar";
	document.getElementById("iniciar").style = "display:none";
	document.getElementById("reiniciar").style = "display:none";
	pare = setInterval("atualizar()", 1000);
	
}
function parar()
{
	clearInterval(pare);
	document.getElementById("parar").style = "display:none";
	document.getElementById("iniciar").style = "display:inline";
	document.getElementById("reiniciar").style = "display:inline";
}
function reiniciar()
{
	document.location.reload();
}
function atualizar()
{
	
	seg++;
	if(seg > 59)
	{
		min++;
		seg=0;
		if(min < 10)
		{
			document.getElementById("min").value = "0" + min; 
		}
		else
		{
			document.getElementById("min").value = min;
		}
	}
	if(seg < 10)
	{
		document.getElementById("seg").value = "0" + seg; 
	}
	else
	{
		document.getElementById("seg").value = seg;
	}
}