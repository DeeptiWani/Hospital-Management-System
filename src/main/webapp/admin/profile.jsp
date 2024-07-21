<%@ include file="header.jsp" %>
<%@ include file="ConnectionMaster.jsp" %>
    <br><br><br><br>
    <style>
        /* Custom CSS for additional styling */
        body {
            background-color: #f8f9fa;
        }
        .profile-card {
            background-color: #fff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }
        .profile-image {
            max-width: 100%;
            border-radius: 50%;
        }
        .contact-info a {
            color: #007bff;
        }
    </style>
</head>
<body>
<h1><center>Profile</center></h1>

<br><br>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-4">
                <div class="text-center profile-card">
                    <img src="../doctors/d12.jpg" alt="Doctor's Photo" class="img-fluid profile-image">
                </div>
            </div>
            <div class="col-md-8">
                <div class="profile-card">
                    <h1 class="mb-3">Dr. George A. Beller</h1>
                    <h4>Specialty: Cardio-Thoracic </h4>
                    <p><strong>Education:</strong> MBBS, DTCD, FCCP Special training in Med. Thoracoscopy Marseilles France</p>
                    <p><strong>Experience:</strong> 35+ years</p>
                    <p class="contact-info"><strong>Contact:</strong> <a href="tel:+123456789">+1 (234) 567-89</a></p>
                    <p class="contact-info"><strong>Email:</strong> <a href="mailto:drgb1@gmail.com">drgb1@gmail.com</a></p>
                    <p><strong>Address:</strong> 123 Medical Avenue, Cityville, ST 12345</p>
                    <h4>About Dr. George A. Beller </h4>
                    <p>Clinical Director and Senior Interventional Cardio-Thoracic .</p>
                </div>
            </div>
        </div>
    </div>

    
</body>
</html>
