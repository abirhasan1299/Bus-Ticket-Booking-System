<?php include "header.php"; ?>
 <section id="checking">
<div class="row">
<div class="col-md-5">
        <img src="img/bus-show.png" style="width:90%;" alt="">
    </div>
    <div class="col-md-7">
        <form action="" class="form-control" id="form">
            <div class="d-flex justify-content-around mb-4 mt-4">
                <div>
                    <label for="" style="color:grey;"><i class="bi bi-geo-alt"> Source* </i> </label>
                    <br>
                    <select style="width:180px;border-radius:0px;border:1px solid #77c593;" name="source" class="form-control">
                        <option value="df">dfdsf</option>
                        <option value="df">dfdsf</option>
                        <option value="df">dfdsf</option>
                    </select>
                </div>
                <div>
                    <img src="img/ways.png" style="width: 30px;margin-top:30px;" alt="">
                </div>
                <div>
                    <label for="" style="color:grey;"><i class="bi bi-pin-map"> Destination*</i> </label>
                    <br>
                    <select style="width:180px;border-radius:0px;border:1px solid #77c593;" name="source" class="form-control">
                        <option value="df">dfdsf</option>
                        <option value="df">dfdsf</option>
                        <option value="df">dfdsf</option>
                    </select>
                </div>
                <div>
                    <label for="date" class="form-label" style="color:grey;"><i class="bi bi-calendar"> Pick Date*</i></label>

                    <input style="margin-top:-8px;width:180px;border-radius:0px;border:1px solid #77c593;" type="text" class="form-control" placeholder="Pick a date" onfocus="showDatePicker(this)" onblur="restorePlaceholder(this)">

                </div>
                <div>
                    <button style="margin-top:25px;" type="submit" class="btn btn-success" ><i class="bi bi-search"> SEARCH</i></button>
                </div>
            </div>
        </form>
    </div>
</div>
 </section>
 <section id="available">
    <div class="row mt-2">
<!-- showing  ticket -->
        <div class="d-flex justify-content-around ticket">
            <div>
                <h4 class="x">Bus Name</h4>
                <p class="y">Bus No</p>
                <p class="y">Bus Type</p>
                <p>Start Point: <span class="x"> Dhaka</span> </p>
                <p>End Point: <span class="x">  Dhaka</span> </p>
            </div>
            <div class="item">
                <h6>Departure Date</h6>
                <p>dsfdsf</p>
            </div>
            <div class="item">
                <h6>Departure Time</h6>
                <p>11:20 AM</p>
            </div>
            <div class="item">
                <h6>Seat Available</h6>
                <p>56</p>
            </div>
            <div class="item">
                <h6>Price</h6>
                <p>5646 TK</p>
            </div>
            <div class="item">
                <a href="view_seat.php" role="button" class="btn btn-success" id="card">View Seat</a> <br>
                <a href="#" class="text-danger" style="font-size:12px;text-decoration:none;">Cancellation Policy</a>
            </div>
        </div>
<!--END showing  ticket -->

<!-- showing  ticket -->
<div class="d-flex justify-content-around ticket">
            <div>
                <h4 class="x">Bus Name</h4>
                <p class="y">Bus No</p>
                <p class="y">Bus Type</p>
                <p>Start Point: <span class="x"> Dhaka</span> </p>
                <p>End Point: <span class="x">  Dhaka</span> </p>
            </div>
            <div class="item">
                <h6>Departure Date</h6>
                <p>dsfdsf</p>
            </div>
            <div class="item">
                <h6>Departure Time</h6>
                <p>11:20 AM</p>
            </div>
            <div class="item">
                <h6>Seat Available</h6>
                <p>56</p>
            </div>
            <div class="item">
                <h6>Price</h6>
                <p>5646 TK</p>
            </div>
            <div class="item">
                <a href="view_seat.php" role="button" class="btn btn-success" id="card">View Seat</a> <br>
                <a href="#" class="text-danger" style="font-size:12px;text-decoration:none;">Cancellation Policy</a>
            </div>
        </div>
<!--END showing  ticket -->
    </div>
<!-- showing  ticket -->
<div class="d-flex justify-content-around ticket">
            <div>
                <h4 class="x">Bus Name</h4>
                <p class="y">Bus No</p>
                <p class="y">Bus Type</p>
                <p>Start Point: <span class="x"> Dhaka</span> </p>
                <p>End Point: <span class="x">  Dhaka</span> </p>
            </div>
            <div class="item">
                <h6>Departure Date</h6>
                <p>dsfdsf</p>
            </div>
            <div class="item">
                <h6>Departure Time</h6>
                <p>11:20 AM</p>
            </div>
            <div class="item">
                <h6>Seat Available</h6>
                <p>56</p>
            </div>
            <div class="item">
                <h6>Price</h6>
                <p>5646 TK</p>
            </div>
            <div class="item">
                <a href="view_seat.php" role="button" class="btn btn-success" id="card">View Seat</a> <br>
                <a href="#" class="text-danger" style="font-size:12px;text-decoration:none;">Cancellation Policy</a>
            </div>
        </div>
<!--END showing  ticket -->
    </div>
 </section>
 <?php include "footer.php"; ?>
 <script>
        function showDatePicker(input) {
            // Change the type to "date" on focus
            input.type = 'date';
        }

        function restorePlaceholder(input) {
            // Restore type to "text" and clear the value if it's empty
            if (!input.value) {
                input.type = 'text';
                input.placeholder = 'Pick a date';
            }
        }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>