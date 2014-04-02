<?php
if ($_REQUEST['kuldo'] != ''){
	$message_bevezeto = '
				A Fûtésszolgáltató Kft. weboldalára az alábbi üzenet érkezett:<br /><br /><br />
				Küldõ email címe:<br />'.$_REQUEST[kuldo].'<br /><br />
				Üzenet:<br />'.$_REQUEST[uzenet_iroda].'<br /><br />';

				$subject = 'Fûtésszolgáltató Kft. - weboldal üzenet';
				$s_from = 'info@futesszolgaltato.hu';
				$s_feladnev = 'Fûtésszolgáltató Kft.';
				$to  = 'pczekmany@gmail.com';
				$to2 = 'info@inkozrt.hu';
				$message = $message_bevezeto;
				$headers  = 'MIME-Version: 1.0' . "\r\n";
				$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
				$headers .= 'From: '.$s_feladnev.'<'.$s_from.'>' . "\r\n" .
					'Reply-To: '.$s_from.'' . "\r\n" .
					'X-Mailer: PHP/' . phpversion();
				mail($to, $subject, $message, $headers);
				mail($to2, $subject, $message, $headers);
}
?>