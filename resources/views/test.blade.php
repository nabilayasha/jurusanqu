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
    <link rel="stylesheet" href="assets/style/test.css" />
    <style>
        .hidden {
  display: none;
}

.pagination-container {
  /* width: calc(100% - 2rem); */
  display: flex;
  align-items: center;
  /* position: absolute; */
  bottom: 0;
  padding: 1rem 0;
  justify-content: center;
}

.pagination-number,
.pagination-button{
  font-size: 1.1rem;
  background-color: transparent;
  border: none;
  margin: 0.25rem 0.25rem;
  cursor: pointer;
  height: 2.5rem;
  width: 2.5rem;
  border-radius: .2rem;
}

.pagination-number:hover,
.pagination-button:not(.disabled):hover {
  background: #fff;
}

.pagination-number.active {
  color: #fff;
  background: #0d6efd;
}

    </style>
</head>

<body>
    <div class="page">
        <header class="d-flex justify-content-center align-items-center navbar-blue">
            <h2 class="text-center text-white">JurusanQu</h2>
        </header>
        <div>
            <div class="hero-test-section d-flex align-items-center justify-content-center flex-column">
                <div class="text-center text-white">
                    <h3>Baca Petunjuk Dahulu!</h3>
                    <h6 class="fw-normal">Utamakan kejujuran dalam diri sendiri</h6>
                </div>
            </div>
            <div class="container">
                <div class="d-block d-xl-none hero-hint-carousel-section">
                    <div class="owl-carousel" style="margin-top: -70px">
                        <div class="px-2 pt-1">
                            <div class="card d-flex align-items-center flex-column text-center">
                                <img src="/assets/image/hint-1.png" alt="hint" />
                                <div>
                                    <h5>Kenali Diri Anda</h5>
                                    <p>
                                        Jangan terlalu banyak berpikir, jawaban pertama yang
                                        muncul dalam pikiran Anda biasanya yang paling akurat.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="px-2 pt-1">
                            <div class="card d-flex align-items-center flex-column text-center">
                                <img src="/assets/image/hint-2.png" alt="hint" />
                                <div>
                                    <h5>Tidak Ada Batasan Waktu</h5>
                                    <p>
                                        Luangkan waktu yang Anda butuhkan untuk menjawab setiap
                                        pertanyaan dengan saksama.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="px-2 pt-1">
                            <div class="card d-flex align-items-center flex-column text-center">
                                <img src="/assets/image/hint-3.png" alt="hint" />
                                <div>
                                    <h5>Semua Jawaban Dianggap Valid</h5>
                                    <p>
                                        Karena tidak ada jawaban yang salah, jadi dimohon jawab
                                        sesuai kondisi hati dan fisik anda
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="d-none d-xl-flex hero-hint-section align-items-strech justify-content-center">
                    <div class="card d-flex align-items-center flex-column text-center">
                        <img src="/assets/image/hint-1.png" alt="hint" />
                        <div>
                            <h5>Kenali Diri Anda</h5>
                            <p>
                                Jangan terlalu banyak berpikir, jawaban pertama yang muncul
                                dalam pikiran Anda biasanya yang paling akurat.
                            </p>
                        </div>
                    </div>

                    <div class="card d-flex align-items-center flex-column text-center">
                        <img src="/assets/image/hint-2.png" alt="hint" />
                        <div>
                            <h5>Tidak Ada Batasan Waktu</h5>
                            <p>
                                Luangkan waktu yang Anda butuhkan untuk menjawab setiap
                                pertanyaan dengan saksama.
                            </p>
                        </div>
                    </div>

                    <div class="card d-flex align-items-center flex-column text-center">
                        <img src="/assets/image/hint-3.png" alt="hint" />
                        <div>
                            <h5>Semua jawaban Dianggap Valid</h5>
                            <p>
                                Karena tidak ada jawaban yang salah, jadi dimohon jawab sesuai
                                kondisi hati dan fisik anda
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <form id="form_question" action="test" method="post">
                @method('post')
                @csrf
                <input type="hidden" name="id" value="{{ $id }}">
            <div class="container quesition-section" id="question" data-current-page="1" aria-live="polite">
                @foreach ($pertanyaan as $key=> $item)
                <div class="question-wrapper">
                    <div class="text-center">
                      <h4>Pertanyaan {{ $key + 1 }}</h4>
                      <p>Pilih salah satu sesuai kondisi dirimu</p>
                    </div>
                    <div class="row gy-4">
                      <div class="col-xl-6">
                        <label class="card-answer">
                          <p class="mb-0">{{ $item->jawaban_satu }}</p>
                          <div class="checkbox">
                            <div class="is-checked"></div>
                          </div>
                          <input type="radio" name="answer-{{ $key }}" value="{{ $item->tipe_satu }}" class="d-none" required/>
                        </label>
                      </div>
                      <div class="col-xl-6">
                        <label class="card-answer">
                          <p class="mb-0">{{ $item->jawaban_dua }}</p>
                          <div class="checkbox">
                            <div class="is-checked"></div>
                          </div>
                          <input type="radio" name="answer-{{ $key }}" value="{{ $item->tipe_dua }}" class="d-none" required/>
                        </label>
                      </div>
                    </div>
                </div>
                @endforeach
                <nav class="pagination-container">
                    <button class="pagination-button" id="prev-button" aria-label="Previous page" title="Previous page">
                      &lt;
                    </button>

                    <div id="pagination-numbers">

                    </div>

                    <button class="pagination-button" id="next-button" aria-label="Next page" title="Next page">
                      &gt;
                    </button>
                  </nav>
            </div>
            <div class="container d-flex justify-content-end">
                <button class="btn btn-primary btn-lg px-5" id="submitButton" type="submit">Submit</button>
            </div>
            </form>
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
        <script src="https://unpkg.com/axios/dist/axios.min.js"></script>

    <!-- render loop -->
    <script>
        $(document).ready(function () {
            $(".owl-carousel").owlCarousel({
                items: 1,
            });

            getPaginationNumbers();
            setCurrentPage(1, "initial");

            prevButton.addEventListener("click", () => {
                setCurrentPage(currentPage - 1);
            });

            nextButton.addEventListener("click", () => {
                console.log("next")
                setCurrentPage(currentPage + 1);
            });

            document.querySelectorAll(".pagination-number").forEach((button) => {
                const pageIndex = Number(button.getAttribute("page-index"));

                if (pageIndex) {
                button.addEventListener("click", () => {
                console.log("button number")
                    setCurrentPage(pageIndex);
                });
                }
            });
        });

const paginationNumbers = document.getElementById("pagination-numbers");
const paginatedList = document.getElementById("question");
const listItems = paginatedList.querySelectorAll(".question-wrapper");
const nextButton = document.getElementById("next-button");
const prevButton = document.getElementById("prev-button");

const paginationLimit = 15;
const pageCount = Math.ceil(listItems.length / paginationLimit);
let currentPage = 1;

const disableButton = (button) => {
  button.classList.add("disabled");
  button.setAttribute("disabled", true);
};

const enableButton = (button) => {
  button.classList.remove("disabled");
  button.removeAttribute("disabled");
};

const handlePageButtonsStatus = () => {
  if (currentPage === 1) {
    disableButton(prevButton);
  } else {
    enableButton(prevButton);
  }

  if (pageCount === currentPage) {
    disableButton(nextButton);
  } else {
    enableButton(nextButton);
  }
};

const handleActivePageNumber = () => {
  document.querySelectorAll(".pagination-number").forEach((button) => {
    button.classList.remove("active");
    const pageIndex = Number(button.getAttribute("page-index"));
    if (pageIndex == currentPage) {
      button.classList.add("active");
    }
  });
};

const appendPageNumber = (index) => {
  const pageNumber = document.createElement("button");
  pageNumber.className = "pagination-number";
  pageNumber.innerHTML = index;
  pageNumber.setAttribute("page-index", index);
  pageNumber.setAttribute("aria-label", "Page " + index);

  paginationNumbers.appendChild(pageNumber);
};

const getPaginationNumbers = () => {
  for (let i = 1; i <= pageCount; i++) {
    appendPageNumber(i);
  }
};

const validateQuestion = () => {
  let isValid = true;

  const questionWrappers = document.querySelectorAll(".question-wrapper:not(.hidden)");

  questionWrappers.forEach(questionWrapper => {
    const radioButtons = questionWrapper.querySelectorAll("input[type=radio]");
    
    const isAnswered = Array.from(radioButtons).some(radioButton => radioButton.checked);
    
    if (!isAnswered) {
      isValid = false;
    }
  });

  if (!isValid) {
    alert("Ada pertanyaan yang belum dijawab, mohon jawab terlebih dahulu");
  }

  return isValid;
};

const setCurrentPage = (pageNum, initial = "") => {
  if (!initial) {
    if (!validateQuestion()) {
      return;
    }
  }

  currentPage = pageNum;

  handleActivePageNumber();
  handlePageButtonsStatus();

  const prevRange = (pageNum - 1) * paginationLimit;
  const currRange = pageNum * paginationLimit;

  listItems.forEach((item, index) => {
    item.classList.add("hidden");
    if (index >= prevRange && index < currRange) {
      item.classList.remove("hidden");
    }
  });
  window.scrollTo({ top: 0, behavior: 'smooth' });
};
        axios({
            url:"get-pertanyaan",
            method:"get"
        }).then(function(res){
            const data = res.data;

        }).catch(function(err){
            console.log(err);
        });
    </script>
</body>

</html>

