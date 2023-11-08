DELIMiter $$
-- antes de inserir uma nova linha na tabela 
CREATE TRIGGER inserir BEFORE insert on Carro
for EACH ROW 
	BEGIN
		-- conta a quantidade de ocorrencias existentes do mesmo veiculo 
		SET @verifica = (select count(*) from Carro c
						 where c.modelo=new.modelo and c.ano_fabricacao=new.ano_fabricacao);
		-- a nova versao é a quantidade de ocorrencias do mesmo veículo +1
		set new.v=@verifica+1;
	end;
$$
Delimiter ;
