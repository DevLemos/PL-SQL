-- Identificar tipo de aprovação de cada aluno
DECLARE
  ra_aluno ALUNO.RA%TYPE;
  nota_aluno ALUNO.NOTA%TYPE;
  tipo_aprovacao VARCHAR2(50);
BEGIN
  FOR r IN (SELECT RA, NOTA FROM ALUNO) LOOP
    ra_aluno := r.RA;
    nota_aluno := r.NOTA;
    
    IF nota_aluno >= 9.0 THEN
      tipo_aprovacao := 'Aprovado com excelencia';
	ELSIF nota_aluno >= 6.0 THEN
      tipo_aprovacao := 'Aprovado';
    ELSE
      tipo_aprovacao := 'Normal';
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('RA do Aluno: ' || ra_aluno);
    DBMS_OUTPUT.PUT_LINE('Nota: ' || nota_aluno);
    DBMS_OUTPUT.PUT_LINE('Bolsa de Estudos: ' || tipo_aprovacao);
    DBMS_OUTPUT.PUT_LINE('---------------------');
  END LOOP;
END;