function wow {
	$loop = 1;
	$speedmultiply = 1000;
	if($args.length -gt 0)
	{
		foreach($arg in $args)
		{
			if($arg.GetType() -eq $loop.GetType())
			{
				$loop = [int]$arg;
			}
			elseif($arg -eq "-hyper")
			{
				$speedmultiply = 10;
			}
		}
	}
	$colors = "green","cyan","red","magenta","DarkRed";
	$sophrases = "so ascii";
	$veryphrases = "very powershell","very colors";
	$muchphrases = "much command";
	$suchphrases = "such windoge";
	$manyphrases = "many code","many text";
	$howphrases = "how program";
	$phrases = $sophrases,$veryphrases,$muchphrases,$suchphrases,$manyphrases,$howphrases; 
	
	while($loop -ne 0)
	{
		$tempdoge = $doge;
		$color = Get-Random -input $colors -count 3;
	
		#$phrases = "very powershell","much command","such windoge","so ascii","many code";
		$dogephrase = $sophrases,$sophrases;
		$phrase = Get-Random -input $phrases -count 2;
		$dogephrase[0] = Get-Random -input $phrase[0];
		$dogephrase[1] = Get-Random -input $phrase[1];
		
		$lines = ($tempdoge -split '[\n]');
		$line = Get-Random -input $lines[4..($lines.length - 3)] -count 2;
		#while(($line[0] -ge $lines[$lines.length - 2]) -or ($line[1] -ge $lines[$lines.length - 2]))
		#{
		#	$line = Get-Random -input $lines -count 2;
		#}
		$phrasenum = 0;
		$linenum = 0;
		foreach($dogeline in $lines)
		{
			if($linenum -eq $lines.length - 2)
			{
				$dogearray = [char[]]$dogeline;
				$phrasestart = Get-Random -minimum 0 -maximum ($dogearray.length - 1);
				$phraseend = "wow".length + $phrasestart;
				$frag1 = -join $dogearray[0..$phrasestart];
				$frag2 = "wow";
				$frag3 = -join $dogearray[($phraseend + 1)..($dogeline.length - 1)];
				#Write-Color -Text $frag1,$frag2,$frag3 -Color "yellow",$color[$phrasenum],"yellow";
				Write-Host $frag1 -NoNewLine -ForegroundColor "yellow";
				Write-Host $frag2 -NoNewLine -ForegroundColor $color[$phrasenum];
				Write-Host $frag3 -ForegroundColor "yellow";
				$phrasenum++;
				$linenum++;
			}
			else
			{
			
				if(($dogeline -eq $line[0]) -or ($dogeline -eq $line[1]))
				{
					#Write-Host $dogeline;
					$dogearray = [char[]]$dogeline;
					$phrasestart = Get-Random -minimum 0 -maximum ($dogearray.length - 1);
					$phraseend = $dogephrase[$phrasenum].length + $phrasestart;
					$frag1 = -join $dogearray[0..$phrasestart];
					$frag2 = $dogephrase[$phrasenum];
					$frag3 = -join $dogearray[($phraseend + 1)..($dogeline.length - 1)];
					Write-Host $frag1 -NoNewLine -ForegroundColor "yellow";
					Write-Host $frag2 -NoNewLine -ForegroundColor $color[$phrasenum];
					Write-Host $frag3 -ForegroundColor "yellow";
					$phrasenum++;
					$linenum++;
				}
				else
				{
					Write-Host $dogeline -foregroundcolor "yellow";
					$linenum++;
				}
			}
		}
		
		#Write-Host $phrase1 -foregroundcolor $color[0];
		#sleep -m (1 * $speedmultiply);
		#Write-Host $phrase2 -foregroundcolor $color[1];
		#sleep -m (1 * $speedmultiply);
		#Get-Content "C:\Users\taylo\Documents\doge.txt" | Write-Host -foregroundcolor "yellow";
		#Write-Host $doge -foregroundcolor "yellow";
		echo "";
		#sleep -m (2 * $speedmultiply);
		#Write-Host "                              wow" -foregroundcolor $color[2];
		sleep -m (1 * $speedmultiply);
		$loop--;
	}
}

$doge = "                   +++
                  ??+=+                      ??+=?
                  ??+==+                   I++==~~I
                  ?++===?                 I+=+=~~~+
                  ?++====?              I++=====~~~
                  ?+==+++++++?IIIIIII.I?==~===~~~=~I
                 ++++++++++++++++++=+=+==:==~~~~~~~I
                ++????++++====++++++=~=~:===::::=~~I
             ++???????++===++++++++++++:~===:,:~===
            ??????????++==++++++=+=+=+++===,,,:===?
          ????????????+===+++?+++++++++++=~::~~=:~?
         ??????+=++??+====+?+??++===+++++++=======+?
        ??III?~::?:++++=++???+?++++=+++++++++===~~=+?
        ?I7III+~:.=+??+++++++~,.~+===++++++++++=:~=+?
       ?II7I??=~=??+?+??+==:,?,,,.~=++++++++++++=~=+?
       ?IIII?+???+??????++=,:=:..~=+++++++++++++===+?
      IIIIIII???????????+==++~~~+++???????????+++=+=+I
      ?IIIII===~~++??????+++?++++++?????+???????+++++?
      ??III,,,.,,,,+??I?+?+???+?????????????????++++++
      IIII?=,,...,,=????????????????????????????++++++?
     ?III??,,.,.,,:+??++++??????????????????+++++=++++?
      III?=~:,,,::+=????++?????????I?????+++++++==+++++?
     ?III?=~~:::::=+++++++++??????+????+++???++===++=++?
      II???::...,,~=+=+=++=++??++++??++???????++==+==+++?
      III??+~:,,,,,,,=,,,:~=+++++???+??????+??+=====+=++?
      III???+=~~=~~:::~~=~++?+++??????++???++++++=====++?I
       II???+?====++++=+++?+++++++?+????+?+++==++=====+=+?
       I????????+??+++++++++++++++??????+++++==========++?
        ????????+?++++++++++++++?????++?+++=+========+=++?
        ???????+++++++++++++++???????+++++++=========++++?
        ?????????++++++++++++++?+?+++++++++++=====++++++??
        ????+++++++++++++++++++++++++++++++++===+++++?++??
        ??????++++++++++++++====++++++++?++++==+?+???????I
       I???????+++==========++++??+??++?++?++??????????++?"

function doge {
	$loop = 1;
	$speedmultiply = 1000;
	if($args.length -gt 0)
	{
		foreach($arg in $args)
		{
			if($arg.GetType() -eq $loop.GetType())
			{
				$loop = [int]$arg;
			}
			else 
			{
				if($arg -eq "-hyper")
				{
					$speedmultiply = 10;
				}
			}
		}
	}
	$colors = "green","cyan","red","magenta","DarkRed";
	$sophrases = "so ascii";
	$veryphrases = "very powershell","very colors";
	$muchphrases = "much command";
	$suchphrases = "such windoge";
	$manyphrases = "many code","many text";
	$howphrases = "how program";
	$phrases = $sophrases,$veryphrases,$muchphrases,$suchphrases,$manyphrases,$howphrases; 

	while($loop -ne 0)
	{
		
		$color = Get-Random -input $colors -count 3;
	
		#$phrases = "very powershell","much command","such windoge","so ascii","many code";
		$phrase = Get-Random -input $phrases -count 2;
		$phrase1 = Get-Random -input $phrase[0];
		$phrase2 = Get-Random -input $phrase[1];
		
		Write-Host $phrase1 -foregroundcolor $color[0];
		sleep -m (1 * $speedmultiply);
		Write-Host $phrase2 -foregroundcolor $color[1];
		sleep -m (1 * $speedmultiply);
		#Get-Content "C:\Users\taylo\Documents\doge.txt" | Write-Host -foregroundcolor "yellow";
		Write-Host $doge -foregroundcolor "yellow";
		echo "";
		sleep -m (2 * $speedmultiply);
		Write-Host "wow" -foregroundcolor $color[2];
		sleep -m (1 * $speedmultiply);
		$loop--;
	}
}