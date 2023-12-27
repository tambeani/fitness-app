<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ attribute name="pageTitle" required="true" type="java.lang.String"%>

<mytags:header pageTitle="${pageTitle}" />

<div class="container mt-5">
    ${body}
</div>

<mytags:footer />
