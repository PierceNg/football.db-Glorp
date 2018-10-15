private
openDatabaseSession

	^ (OFDescriptorSystem sessionForLogin: dbLogin)
			login;
			yourself