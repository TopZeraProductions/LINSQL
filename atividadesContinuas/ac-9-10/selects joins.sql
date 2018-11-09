 SELECT
	 COUNT(AL.Nome) AS 'Quantidade'
	 , DI.Nome
FROM lms.dbo.SolicitacaoMatricula AS SM
	JOIN lms.dbo.DisciplinaOfertada AS DO ON  SM.IdDisciplinaOfertada = DO.Id
	JOIN lms.dbo.Disciplina AS DI ON  DO.IdDisciplina = DI.ID
	LEFT JOIN lms.dbo.Aluno AS AL ON SM.IdAluno = AL.Id
GROUP BY DI.Nome 

SELECT 
	ATIVIDADE.Titulo
	, ALUNO.Nome
	, ENTREGA.Nota
FROM lms.dbo.Entrega AS ENTREGA
	LEFT JOIN lms.dbo.Aluno AS ALUNO  ON  ALUNO.ID = ENTREGA.IdAluno
	LEFT JOIN lms.dbo.AtividadeVinculada AS VINCULADA ON  VINCULADA.ID = ENTREGA.IdAtividadeVinculada
	LEFT JOIN lms.dbo.Atividade AS ATIVIDADE ON  ATIVIDADE.ID = VINCULADA.IdAtividade
ORDER BY ATIVIDADE.Titulo

SELECT
	DISC.Nome	
	, ALUNO.Nome
	, AVG(ENTREGA.Nota) AS 'MEDIA'  
FROM lms.dbo.Entrega AS ENTREGA
	LEFT JOIN lms.dbo.Aluno AS ALUNO  ON  ALUNO.ID = ENTREGA.IdAluno
	LEFT JOIN lms.dbo.AtividadeVinculada AS VINCULADA ON  VINCULADA.ID = ENTREGA.IdAtividadeVinculada
	LEFT JOIN lms.dbo.Atividade AS ATIVIDADE ON  ATIVIDADE.ID = VINCULADA.IdAtividade
	LEFT JOIN lms.dbo.DisciplinaOfertada AS DISCO ON   VINCULADA.ID = DISCO.ID
	LEFT JOIN lms.dbo.Disciplina AS DISC ON DISCO.IdDisciplina = DISC.ID
WHERE ALUNO.ID = 1
GROUP BY DISC.Nome , ALUNO.Nome

SELECT
	DISC.Nome	
	, ALUNO.Nome
	, AVG(ENTREGA.Nota) AS 'MEDIA'
	, CASE WHEN AVG(ENTREGA.Nota) > 6.0 THEN 'APROVADO' ELSE 'REPROVADO' END AS STATUS
FROM lms.dbo.Entrega AS ENTREGA
	LEFT JOIN lms.dbo.Aluno AS ALUNO  ON  ALUNO.ID = ENTREGA.IdAluno
	LEFT JOIN lms.dbo.AtividadeVinculada AS VINCULADA ON  VINCULADA.ID = ENTREGA.IdAtividadeVinculada
	LEFT JOIN lms.dbo.Atividade AS ATIVIDADE ON  ATIVIDADE.ID = VINCULADA.IdAtividade
	LEFT JOIN lms.dbo.DisciplinaOfertada AS DISCO ON   VINCULADA.ID = DISCO.ID
	LEFT JOIN lms.dbo.Disciplina AS DISC ON DISCO.IdDisciplina = DISC.ID
GROUP BY DISC.Nome , ALUNO.Nome
