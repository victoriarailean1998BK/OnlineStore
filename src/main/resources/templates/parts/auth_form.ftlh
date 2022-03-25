<#macro register>
  <div class="container">
    <div class="col-4 offset-4">
      <div class="card shadow-lg mt-5">
        <div class="card-body p-5"> 
          <h1 class="fs-4 card-title fw-bold mb-4">Register</h1>
          <form action="/register" method="POST" class="needs-validation" novalidate="" autocomplete="on">
            <div class="mb-3">
              <label class="mb-2 text-muted" for="firstName">First name</label>
              <input id="firstName" type="fist_name" class="form-control" name="firstName" value="" required autofocus>
              <div class="invalid-feedback">
                First name is required
              </div>
            </div>
            <div class="mb-3">
              <label class="mb-2 text-muted" for="lastName">Last name</label>
              <input id="lastName" type="last_name" class="form-control" name="lastName" value="" required>
              <div class="invalid-feedback">
                Last name is required
              </div>
            </div>
            <div class="mb-3">
              <label class="mb-2 text-muted" for="email">E-Mail Address</label>
              <input id="email" type="email" class="form-control" name="email" value="" required>
              <div class="invalid-feedback">
                Email is invalid
              </div>
            </div>

            <div class="mb-3">
              <div class="mb-2 w-100">
                <label class="text-muted" for="password">Password</label>
              </div>
              <input id="password" type="password" class="form-control" name="password" required>
                <div class="invalid-feedback">
                  Password is required
                </div>
            </div>

            <div class="text-center">
              <input type="hidden" name="_csrf" value="${_csrf.token}"/>
              <button type="submit" class="btn btn-primary">
                Register
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</#macro>

<#macro login>
  <div class="container">
    <div class="col-4 offset-4">
      <div class="card shadow-lg mt-5">
        <div class="card-body p-5"> 
          <h1 class="fs-4 card-title fw-bold mb-4">Login</h1>
          <form action="/login" method="POST" class="needs-validation" novalidate="" autocomplete="on">
            <div class="mb-3">
              <label class="mb-2 text-muted" for="email">E-Mail Address</label>
              <input id="email" type="email" class="form-control" name="email" value="" required autofocus>
              <div class="invalid-feedback">
                Email is invalid
              </div>
            </div>

            <div class="mb-3">
              <div class="mb-2 w-100">
                <label class="text-muted" for="password">Password</label>
              </div>
              <input id="password" type="password" class="form-control" name="password" required>
                <div class="invalid-feedback">
                  Password is required
                </div>
            </div>

            <div class="d-flex align-items-center">
              <div class="form-check">
                <input type="checkbox" name="remember" id="remember" class="form-check-input">
                <label for="remember" class="form-check-label">Remember Me</label>
              </div>
              <input type="hidden" name="_csrf" value="${_csrf.token}"/>
              <button type="submit" class="btn btn-primary ms-auto">
                Login
              </button>
            </div>
          </form>
        </div>
        <div class="card-footer py-3 border-0">
          <div class="text-center">
            Don't have an account? <a href="/register" class="text-dark">Create One</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</#macro>
