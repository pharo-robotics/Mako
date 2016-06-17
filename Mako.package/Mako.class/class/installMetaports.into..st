component creation
installMetaports: aCollection into: aSubclass
	aSubclass metaports: aCollection.
	aSubclass class
		compile:
			('basicPortInstantiation {1} ^ {2}.'
				format:
					{(String crlf , String tab).
					('{' , ('.' join: (aCollection collect: #definitionString)) , '}')})
		classified: 'component-private'