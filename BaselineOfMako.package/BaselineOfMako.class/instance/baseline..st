baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec baseline: 'TaskIt' with: [ spec repository: 'github://sbragagnolo/taskit' ].
			spec
				package: #Mako with: [ spec requires: #('TaskIt') ];
				package: #MakoTesting with: [ spec requires: #(#Mako) ] ]