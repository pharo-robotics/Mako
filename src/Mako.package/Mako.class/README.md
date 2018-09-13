A Mako is a basic component class. Is called Mako as the project just for fancy syntax: 
                 Mako component: #YourComponent
		ports: {}
		instanceVariableNames: ''
		classVariableNames: ''
		category: '' 
	For creating a new component you just need to write down the same sintax as the previous one , detailing ports.  Mako components are not yet compatible with slots.
	Mako component: #YourComponent
		ports: {(#portName => PortClass)}
		instanceVariableNames: ''
		classVariableNames: ''
		category: '' 
		
        We have several kind of ports , but mainly we can divide them into three main  categories: 
        Input ports , Output ports and Sync ports.
        Input ports are readable , Output ports writable and Sync ports are to relate a syncing mechanism with a message send