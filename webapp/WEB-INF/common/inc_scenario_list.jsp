<c:if test="${!empty mockservice.scenarios}">
	<p>
		<p>Available scenarios:</p> 
		<ul class="group">
			<c:forEach var="scenario" begin="0" items="${mockservice.scenarios}" varStatus="status">   
	            <c:url value="/scenario" var="scenarioEditUrl">
	                <c:param name="serviceId" value="${mockservice.id}" />
	                <c:param name="scenarioId" value="${scenario.id}" />
	            </c:url>                 
				<li><a href="<c:out value="${scenarioEditUrl}"/>" title="Edit service scenario"> <c:out value="${scenario.scenarioName}" /></a></li> 
			</c:forEach>
		</ul>
	</p>
</c:if>