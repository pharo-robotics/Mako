baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec baseline: 'TaskIT2' with: [ spec repository: 'github://sbragagnolo/taskit-2' ].
			spec
				package: #Mako with: [ spec requires: #('TaskIT2') ];
				package: #MakoTesting with: [ spec requires: #(#Mako) ] ]