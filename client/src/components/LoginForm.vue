<template>
  <div class="container d-flex justify-content-center align-items-center mt-5">
    <div
      class="shadow p-5 d-flex flex-column justify-content-center align-items-center"
    >
      <div class="fs-3 fw-bold mb-4">Login</div>
      <form class="fw-bold">
        <div class="mb-3">
          <label for="Email" class="form-label">Email</label>
          <input
            type="email"
            class="form-control"
            id="Email"
            aria-describedby="Email"
            placeholder="Enter Email"
            required
          />
        </div>
        <div class="mb-3">
          <label for="Password" class="form-label">Password</label>
          <input
            type="password"
            class="form-control"
            id="Password"
            aria-describedby="Password"
            placeholder="Password"
            required
          />
        </div>

        <Button type="submit" class="btn btn-info"> Login </Button>
      </form>
    </div>
  </div>
</template>
