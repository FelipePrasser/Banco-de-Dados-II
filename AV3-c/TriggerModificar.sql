DELIMiter $$
-- antes de inserir uma nova linha na tabela 
CREATE TRIGGER modificar BEFORE update on Carro
for EACH ROW 
	BEGIN
		-- conta a quantidade de ocorrencias existentes do mesmo veiculo 
		SET @verifica = (select count(*) from Carro c
						 where c.modelo=new.modelo and 
						c.ano_fabricacao=new.ano_fabricacao);
		-- insere a modificação em uma nova ocorrencia
		 INSERT into Carro values(old.marca, old.modelo,old.ano_fabricacao, 
		 old.ano_modelo, old.litragem, old.cambio, old.km, old.combustivel, 
		 old.cor, old.v);
		-- a nova versao é a quantidade de ocorrencias do mesmo veículo +1
		set new.v=@verifica+1;
	end;
$$
Delimiter ;
