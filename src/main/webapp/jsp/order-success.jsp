<!DOCTYPE html>
<html>
<head>
    <title>Order Success</title>
    <meta charset="UTF-8">
	<link rel="stylesheet"
	 href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #e0f2fe, #f0fdf4);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .success-card {
            background: #ffffff;
            padding: 40px;
            border-radius: 12px;
            text-align: center;
            width: 380px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.15);
        }

        .success-icon {
            font-size: 60px;
            color: #22c55e;
            margin-bottom: 15px;
        }

        .success-card h2 {
            margin: 10px 0;
            color: #16a34a;
        }

        .success-card p {
            color: #555;
            font-size: 15px;
            margin-bottom: 25px;
        }

        .success-card button {
            padding: 12px 25px;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            background: #2563eb;
            color: white;
            cursor: pointer;
            transition: 0.3s;
        }

        .success-card button:hover {
            background: #1e40af;
			}
			.check-circle {
			    width: 70px;
			    height: 70px;
			    border-radius: 50%;
			    background: #22c55e;
			    color: white;
			    font-size: 42px;
			    line-height: 70px;
			    margin: 0 auto 15px;
			    font-weight: bold;
			}
			.success-icon {
			    font-size: 60px;
			    color: #22c55e;
			    margin-bottom: 15px;
			}


        
    </style>
</head>

<body>

    <div class="success-card">
		<i class="fa-solid fa-circle-check success-icon"></i>


        <h2>Order Placed Successfully</h2>
        <p>
            Thank you for shopping with us.<br>
            Your order will be delivered soon.
        </p>

        <a href="/products">
            <button>Continue Shopping</button>
        </a>
    </div>

</body>
</html>
