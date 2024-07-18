<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>JurusanQu</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

    <!-- font -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet" />

    <!-- carousel -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
        integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
        integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="assets/style/global.css" />
    <link rel="stylesheet" href="assets/style/result.css" />
</head>

<body>
    <div class="page">
        <header class="d-flex justify-content-center align-items-center navbar-blue">
            <h2 class="text-center text-white">JurusanQu</h2>
        </header>
        <div>
            <div class="hero-result-section d-flex align-items-center justify-content-center flex-column">
                <div class="d-flex align-items-center text-white">
                    <div class="container">
                        <div class="d-flex align-items-center flex-column flex-md-row" style="gap: 40px">
                            <div class="result-img">
                                <img src="/assets/image/{{$hasil}}.jpg" alt="result" />
                            </div>
                            <div class="text-center text-md-start">
                                <h5 class="mb-0">Kamu Adalah Seorang</h5>
                                <h1 class="mb-0" style="font-size: 62px; font-weight: 800">
                                    {{ $hasil }}
                                </h1>
                                <p class="mb-0">{{ $julukan }}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container pt-5">
                <div class="row gy-3 mb-5">
                    <div class="col-xl-3 col-sm-6 col-12">
                        <div class="d-flex align-items-center gap-3">
                            <div class="result-point">
                                <h3 class="mb-0">{{ $satu }}</h3>
                            </div>
                            <p class="mb-0 fs-4">{{ $label_satu }}</p>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 col-12">
                        <div class="d-flex align-items-center gap-3">
                            <div class="result-point">
                                <h3 class="mb-0">{{ $dua }}</h3>
                            </div>
                            <p class="mb-0 fs-4">{{ $label_dua }}</p>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 col-12">
                        <div class="d-flex align-items-center gap-3">
                            <div class="result-point">
                                <h3 class="mb-0">{{ $tiga }}</h3>
                            </div>
                            <p class="mb-0 fs-4">{{ $label_tiga }}</p>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 col-12">
                        <div class="d-flex align-items-center gap-3">
                            <div class="result-point">
                                <h3 class="mb-0">{{ $empat }}</h3>
                            </div>
                            <p class="mb-0 fs-4">{{ $label_empat }}</p>
                        </div>
                    </div>
                </div>
                <p class="lh-lg mb-4">
                    {{ $deskripsi }}
                </p>

                <div class="container pt-5">
                    <div class="row gy-3 mb-5">
                    {{-- <div class="owl-carousel"> --}}
                        @foreach ($jurusan as $row)
                        <div class=" col-xl-6 col-sm-6 col-6 col-md-6">
                            <div class="recom-card">
                                <div class="recom-bg" @if($row->img) style="background-image: url('assets/image/jurusan/{{ $row->img }}')" @else style="background-image: url('assets/image/recom-1.png')" @endif>
                                    <div class="recom-label">
                                        <h4 class="mb-0">{{ $row->rekomendasi_jurusan }}</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jquery -->
    <script src="https://code.jquery.com/jquery-3.7.1.js"
        integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
        integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
        crossorigin="anonymous"></script>

    <script>
        $(document).ready(function () {
        });
    </script>
</body>

</html>
