<?php include "header.php"; ?>
<style>
    .container {
  width: 600px;
  margin: auto;
  background: #fff;
  border-radius: 8px;
  box-shadow: 20px 10px 10px rgba(255, 26, 26, 0.3);
  padding: 20px;
  margin-bottom: 50px;
  margin-top: 50px;
}

.info-section {
  margin-bottom: 20px;
}

h3 {
  margin-bottom: 15px;
  color: #333;
  border-bottom: 1px solid #ddd;
  padding-bottom: 5px;
}

.info-row {
  display: flex;
  justify-content: space-between;
  margin-bottom: 10px;
  font-size: 14px;
}

.info-row span {
  display: block;
}

.value {
  color: green;
  font-weight: bold;
}

.total {
  font-size: 16px;
  font-weight: bold;
  color: #000;
}
</style>
<div class="container">
    <!-- Journey Information Section -->
    <div class="info-section">
      <h3>Journey Information</h3>
      <div class="info-row">
        <span>Full Name</span>
        <span class="value">Md. Abdullah Al Siddik</span>
      </div>
      <div class="info-row">
        <span>Phone</span>
        <span class="value">01737374083</span>
      </div>
      <div class="info-row">
        <span>Gender</span>
        <span class="value">Male</span>
      </div>
      <div class="info-row">
        <span>Date</span>
        <span class="value">10 March 2022</span>
      </div>
      <div class="info-row">
        <span>Time</span>
        <span class="value">10:00 AM</span>
      </div>
      <div class="info-row">
        <span>From</span>
        <span class="value">Dhaka</span>
      </div>
      <div class="info-row">
        <span>To</span>
        <span class="value">Chittagong</span>
      </div>
      <div class="info-row">
        <span>Bus Number</span>
        <span class="value">123456</span>
      </div>
      <div class="info-row">
        <span>Bus Type</span>
        <span class="value">AC</span>
      </div>
      <div class="info-row">
        <span>Total Seat</span>
        <span class="value">2</span>
      </div>
      <div class="info-row">
        <span>Price</span>
        <span class="value">৳ 800.00</span>
      </div>
    </div>

    <!-- Price Information Section -->
    <div class="info-section">
      <h3>Price Information</h3>
      <div class="info-row">
        <span>Ticket Price</span>
        <span class="value">800.00 * 2 = 1600.00 ৳</span>
      </div>
      <div class="info-row">
        <span>VAT</span>
        <span class="value">10.00 ৳</span>
      </div>
      <div class="info-row">
        <span>Service Charge</span>
        <span class="value">20.00 * 2 = 40.00 ৳</span>
      </div>
      <div class="info-row total">
        <span>Total</span>
        <span class="value">1650.00 ৳</span>
      </div>
      <div class="d-flex justify-content-center">
        <button class="btn btn-success" style="width: 20%;" type="submit">PAY</button>
      </div>
    </div>
  </div>

<?php include "footer.php"; ?>