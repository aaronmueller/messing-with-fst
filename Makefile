rhyme.far: rhyme.grm arpabet.far byte.far arpabet.sym cmudict.txt
	thraxcompiler --save_symbols --input_grammar=$< --output_far=$@

arpabet.far: arpabet.grm arpabet.sym
	thraxcompiler --save_symbols --input_grammar=$< --output_far=$@

byte.far: byte.grm 
	thraxcompiler --save_symbols --input_grammar=$< --output_far=$@

clean:
	rm -f arpabet.far byte.far
