<%@ tag description="Stacked Component mimicking Material-UI Stack" pageEncoding="UTF-8" body-content="tagdependent" %>
<%@ attribute name="direction" required="false" rtexprvalue="true" type="java.lang.String" description="Direction of the stack: 'row' or 'column'" %>
<%@ attribute name="alignItems" required="false" rtexprvalue="true" type="java.lang.String" description="Align items in the stack: 'start', 'center', 'end', 'baseline', 'stretch'" %>
<%@ attribute name="justifyContent" required="false" rtexprvalue="true" type="java.lang.String" description="Justify content in the stack: 'start', 'center', 'end', 'between', 'around'" %>
<%@ attribute name="spacing" required="false" rtexprvalue="true" type="java.lang.Integer" description="Spacing between stack items in pixels" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${empty direction}">
    <c:set var="direction" value="row" />
</c:if>

<c:if test="${empty alignItems}">
    <c:set var="alignItems" value="start" />
</c:if>

<c:if test="${empty justifyContent}">
    <c:set var="justifyContent" value="start" />
</c:if>

<c:if test="${empty spacing}">
    <c:set var="spacing" value="0" />
</c:if>

<c:set var="items" value="<%= getBodyContent().getString().trim() %>" />

<div class="stack"
     style="flex-direction: ${direction}; align-items: ${alignItems}; justify-content: ${justifyContent}; gap: ${spacing}px;">
            ${items}
</div>
