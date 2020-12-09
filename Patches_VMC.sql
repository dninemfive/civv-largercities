/*
Changes the distance at which cities can work and buy tiles if Various Mod Components (or another DLL) allows doing so.
*/
UPDATE Defines
	SET Value=5 
	WHERE Name='MAXIMUM_WORK_PLOT_DISTANCE'
	AND EXISTS (SELECT Value FROM Defines WHERE Name='MAXIMUM_WORK_PLOT_DISTANCE'); -- MAXIMUM_WORK_PLOT_DISTANCE exists only if VMC (or another DLL) adds it
	SET Value=5 
	WHERE Name='MAXIMUM_BUY_PLOT_DISTANCE'
	AND EXISTS (SELECT Value FROM Defines WHERE Name='MAXIMUM_BUY_PLOT_DISTANCE');  -- Ditto.