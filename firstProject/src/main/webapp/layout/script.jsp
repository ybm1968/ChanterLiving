<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="<%= request.getContextPath() %>/static/js/validation.js"></script>
<script type="text/javascript">

const hoverElement = document.querySelector('.product');

document.addEventListener('keydown', () => {
    hoverElement.classList.add('hover-effect');
});

document.addEventListener('keyup', () => {
    hoverElement.classList.remove('hover-effect');
});

</script>