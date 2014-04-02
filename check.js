function emailCheck(emailmezo){
	var elsopont = emailmezo.value.indexOf('.',0);
	var lastpont = emailmezo.value.lastIndexOf('.');
	var kukac = emailmezo.value.indexOf('@',0);
	var last_kukac = emailmezo.value.lastIndexOf('@');
	var email_size = emailmezo.value.length;

	if (emailmezo.value=='' || kukac==(-1) || kukac==0 || elsopont==0 

|| elsopont==(-1) || (lastpont==(email_size-1)) || (kukac==(email_size-1)) || 

((kukac+1)==elsopont) || (kukac!=last_kukac))
    {
     alert('Hibás email cím formátum!')
     emailmezo.focus()
     emailmezo.select()
	 emailmezo.value = '';
     return false;
    }
    if (emailmezo.name == "cimzett") {
		alert("Az adatlap e-mailben elküldve!");}
	
	return true;
}

function uresCheck(uresmezo){
  if (uresmezo.name == "email") { var uzenet = "Üres az e-mail mezõ!";}
  if (uresmezo.name == "kuldo") { var uzenet = "Üres az e-mail mezõ!";}
  if (uresmezo.value != "") return true;
  else{
    alert(uzenet);
    return false;
  }
}

function menujelolo(id){
	document.getElementById(id).style.backgroundColor = '#4875a7';
	
	
	if (id == 'referenciak_haz'){ document.getElementById('referenciak_lakas').style.backgroundColor = '#4875a7';}
	if (id == 'referenciak_iroda'){ document.getElementById('referenciak_lakas').style.backgroundColor = '#4875a7';}
	if (id == 'referenciak_egyeb'){ document.getElementById('referenciak_lakas').style.backgroundColor = '#4875a7';}
	if (id == 'referenciak_futes'){ document.getElementById('referenciak_lakas').style.backgroundColor = '#4875a7';}
	
	if (id == 'energia_ho'){ document.getElementById('energia_alt').style.backgroundColor = '#4875a7';}
	if (id == 'energia_geo'){ document.getElementById('energia_alt').style.backgroundColor = '#4875a7';}
	if (id == 'energia_nap'){ document.getElementById('energia_alt').style.backgroundColor = '#4875a7';}
	if (id == 'energia_szel'){ document.getElementById('energia_alt').style.backgroundColor = '#4875a7';}
	
	if (id == 'tanusit_mirol'){ document.getElementById('tanusit_miert').style.backgroundColor = '#4875a7';}
	if (id == 'tanusit_tanusitas'){ document.getElementById('tanusit_miert').style.backgroundColor = '#4875a7';}
	if (id == 'tanusit_jogi'){ document.getElementById('tanusit_miert').style.backgroundColor = '#4875a7';}
	if (id == 'tanusit_arak'){ 
		document.getElementById('tanusit_miert').style.backgroundColor = '#4875a7';
		//document.getElementById('tanusit_miert').style.borderTop = '12px solid #4875a7';
		//document.getElementById('tanusit_miert').style.paddingBottom = '10px';
		}
}