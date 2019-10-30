<%-- 
    Document   : login
    Created on : Feb 26, 2019, 10:36:33 AM
    Author     : Hoàng Kim Tới
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section class="main-container col1-layout">
    <div class="main container">
      <div class="account-login">
        <div class="page-title">
          <h2>Login or Create an Account</h2>
        </div>
        <fieldset class="col2-set">
          <legend>Login or Create an Account</legend>
          <div class="col-1 new-users"><strong>New Customers</strong>
            <div class="content">
              <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
              <div class="buttons-set">
                <button onclick="window.location='';" class="button create-account" type="button"><span>Create an Account</span></button>
              </div>
            </div>
          </div>
          <div class="col-2 registered-users"><strong>Registered Customers</strong>
            <form name="f1" id="f1" action="XuLyLogin" method="post">
                <div class="content">
                  <p>If you have an account with us, please log in.</p>
                  <ul class="form-list">
                    <li>
                      <label for="email">Username <span class="required">*</span></label>
                      <br>
                      <input type="text" title="Username" class="input-text required-entry" id="username" value="" name="login[username]">
                    </li>
                    <li>
                      <label for="pass">Password <span class="required">*</span></label>
                      <br>
                      <input type="password" title="Password" id="pass" class="input-text required-entry validate-password" name="login[password]">
                    </li>
                  </ul>
                  <p class="required">* Required Fields</p>
                  <div class="buttons-set">
                    <button id="send2" name="send" type="submit" class="button login"><span>Login</span></button>
                    <a class="forgot-word" href="">Forgot Your Password?</a> 
                  </div>
                </div>
            </form>
          </div>
        </fieldset>
      </div>
      <br>
      <br>
      <br>
      <br>
      <br>
    </div>
  </section>
