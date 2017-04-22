	component loader0 is
		port (
			noe_in : in std_logic := 'X'  -- noe
		);
	end component loader0;

	u0 : component loader0
		port map (
			noe_in => CONNECTED_TO_noe_in  -- noe_in.noe
		);

