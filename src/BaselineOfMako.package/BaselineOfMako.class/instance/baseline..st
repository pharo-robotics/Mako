baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec
				package: #Mako;
				package: #MakoTesting with: [ spec requires: #(#Mako) ] ]