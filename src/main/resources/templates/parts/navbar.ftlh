<#include "security.ftlh">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <i class="fas fa-bars"></i>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <a class="navbar-brand mt-2 mt-lg-0" href="/">
        <img src="/images/logo.png" height="60" alt="Logo" loading="lazy"/>
      </a>
      <ul class="navbar-nav me-auto mb-2 mb-lg-0 navbar-text">
        <li class="nav-item">
          <a class="nav-link" href="/categories">Categories</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Discounts</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Contact</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">About</a>
        </li>
      </ul>
      <#if known>
        <div class="col-sm-2">
          <div class="mx-auto d-block user-email-text">Logged in as ${name}</div>
        </div>
      </#if>

      <form class="d-flex input-group w-auto mx-4">
        <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon"/>
        <span class="input-group-text border-0" id="search-addon">
          <i class="fas fa-search"></i>
        </span>
      </form>
    </div>

    <div class="d-flex align-items-center">
      <a class="text-reset me-3" href="/orders/current">
        <i class="fas fa-shopping-cart"></i>
        <#if order_items_count??>
          <span class="badge bg-primary rounded-pill">${order_items_count}</span>
        </#if>
      </a>
      <div class="dropdown">
        <a class="text-reset me-3 dropdown-toggle hidden-arrow" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown">
          <i class="fas fa-bell"></i>
          <#--  <span class="badge rounded-pill badge-notification bg-danger">1</span>  -->
        </a>
        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuLink">
          <li>
            <a class="dropdown-item" href="#">Messages</a>
          </li>
          <li>
            <a class="dropdown-item" href="#">Order updates</a>
          </li>
          <li>
            <a class="dropdown-item" href="#">Promotions</a>
          </li>
        </ul>
      </div>
      <div class="dropdown">
        <a class="dropdown-toggle d-flex align-items-center hidden-arrow" id="navbarDropdownMenuAvatar" role="button" data-bs-toggle="dropdown">
          <i class="far fa-user"></i>
        </a>
        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuAvatar">
          <#if known>
            <li>
              <a class="dropdown-item" href="#">View profile</a>
            </li>
            <li>
              <a class="dropdown-item" href="#">Settings</a>
            </li>
            <li>
              <a class="dropdown-item" href="#">Orders</a>
            </li>
            <li>
              <form action="/logout" method="post" >
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <button type="submit" class="dropdown-item">Logout</button>
              </form>
            </li>
          <#else>
            <li>
              <a class="dropdown-item" href="/login">Login</a>
            </li>
            <li>
              <a class="dropdown-item" href="/register">Sign Up</a>
            </li>
          </#if>
        </ul>
      </div>
    </div>
  </div>
</nav>
