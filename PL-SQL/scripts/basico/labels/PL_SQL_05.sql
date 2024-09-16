DECLARE
	contador number := 1;
BEGIN
	<<meu_loop>>
    
	FOR i IN 1..5 LOOP
		DBMS_OUTPUT.PUT_LINE(i);
		IF i = 3 THEN
			EXIT meu_loop; -- Sai apenas deste loop.
		END IF;
	END LOOP;
END;