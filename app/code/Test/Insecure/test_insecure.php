<?php
// Dummy insecure file for testing security scanner

$password = "supersecret"; // hardcoded password

eval('$x = 5 + 10;'); // insecure eval

echo "Insecure test file executed: " . $password;
