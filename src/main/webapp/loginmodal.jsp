<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 1/3/2023
  Time: 9:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<modal>
  <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 >Login</h1>
          <p class="text-danger"> ${mess}</p>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <form class="formLogin" action="login"  method="post">
            <div class="row">
              <label  class="form-label">User Name</label>
              <input type="user" name="username" pattern="^\S*{6,8}$"
                     title= "User must be 6 -8 characters without space">
              <%--              <div class="invalid-feedback">--%>
              <%--              </div>--%>
            </div>
            <div class="row">
              <label  class="form-label">Password</label>
              <input type="password" name="password" pattern="^\S*{6,8}$"
                     title="Password must be 6 -8 characters without space">
              <%--                <div class="invalid-feedback">--%>
              <%--                </div>--%>
            </div>
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary">Login</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</modal>
</body>
</html>