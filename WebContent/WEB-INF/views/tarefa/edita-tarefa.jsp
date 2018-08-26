<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

  <html>
  <body>
      <h3>Alterar tarefa - ${tarefas.id}</h3>
      <form action="alteraTarefa" method="post">

          <input type="hidden" name="id" value="${tarefas.id}" />

          Descrição:<br />
          <textarea name="descricao" cols="100" rows="5"><%--
              --%>${tarefas.descricao}<%--
          --%></textarea>
          <br />            

          Finalizado? <input type="checkbox" name="finalizado" 
              value="true" ${tarefas.finalizado? 'checked' : '' }/> <br />            

          Data de finalização: <br />
          <input type="text" name="dataFinalizacao" 
            value="<fmt:formatDate 
              value="${tarefas.dataFinalizacao.time}" 
              pattern="dd/MM/yyyy" />"/> 
          <br />

          <input type="submit" value="Alterar"/>
      </form>
  </body>
  </html>