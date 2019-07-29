<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<style>

.portfolio-item {
text-align: center;
  display: block;
  position: relative;
  overflow: hidden;
  max-width: 530px;
  margin: auto auto 1rem;
    border-radius: 50%;
  width: 300px; height: 300px; object-fit: cover; border-radius: 50%;
}

.portfolio-item .caption {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  height: 100%;
  width: 100%;
  background-color: rgba(33, 37, 41, 0.2);
  position: absolute;
  top: 0;
  bottom: 0;
  z-index: 1;
}

.portfolio-item .caption .caption-content {
  color: #fff; 
    margin-left: auto;
    margin-right: auto;
    margin-bottom: auto;
        margin-top: auto;
    border-radius: 50%;
}

.portfolio-item .caption .caption-content h2 {
  font-size: 2.8rem;
  text-transform: uppercase;
}

.portfolio-item .caption .caption-content p {
  font-weight: 300;
  font-size: 1.2rem;
}

@media (min-width: 992px) {
  .portfolio-item {
    max-width: none;
    border-radius: 50%;
    width: 300px; height: 300px; object-fit: cover; border-radius: 50%;
  }
  .portfolio-item .caption {
    -webkit-transition: -webkit-clip-path 0.25s ease-out, background-color 0.7s;
    -webkit-clip-path: inset(0px);
    clip-path: inset(0px);
  }
  .portfolio-item .caption .caption-content {
    -webkit-transition: opacity 0.25s;
    transition: opacity 0.25s;    
    margin-left: auto;
    margin-right: auto;
    margin-bottom: auto;
  }
  .portfolio-item img {
    -webkit-transition: -webkit-clip-path 0.25s ease-out;
    -webkit-clip-path: inset(-1px);
    clip-path: inset(-1px);
	 width: 300px;
    height: 300px;
    object-fit: cover;
    border-radius: 50%;
  }
  .portfolio-item:hover img {
    -webkit-clip-path: inset(2rem);
    clip-path: inset(2rem);
  }
  .portfolio-item:hover .caption {
    background-color: rgba(0,0,0,.7);
    -webkit-clip-path: inset(2rem);
    clip-path: inset(2rem);
  } 
  .portfolio-item:hover h2 {
    color: white;
  }
  .portfolio-item:hover p {
    color: white;
  }
  
}

</style>
<section class="content-section" id="portfolio" style="margin-top: 50px; margin-bottom: 85px;">
  <div class="container">
    <div class="content-section-heading text-center">
      <h2 class="mb-5" style="color: rgba(255,255,255, 0.5)">Coin Delivery</h2>
    </div>
    <div class="row no-gutters">
      <div class="col-lg-6">
        <a class="portfolio-item" href="purchase">
          <span class="caption">
            <span class="caption-content">
              <h2>구매대행</h2>
            </span>
          </span>
          <img class="img-fluid" style="width: 300px; height: 300px; object-fit: cover; border-radius: 50%;" src="resources/img/1.jpg" alt="">
        </a>
      </div>
      <div class="col-lg-6">
        <a class="portfolio-item" href="sell">
          <span class="caption">
            <span class="caption-content">
              <h2>판매대행</h2>
            </span>
          </span>
          <img class="img-fluid" style="width: 300px; height: 300px; object-fit: cover; border-radius: 50%;" src="resources/img/2.jpg" alt="">
        </a>
      </div>
      <div class="col-lg-6">
        <a class="portfolio-item" href="calculator">
          <span class="caption">
            <span class="caption-content">
              <h2>계산기</h2>
            </span>
          </span>
          <img class="img-fluid" style="width: 300px; height: 300px; object-fit: cover; border-radius: 50%;" src="resources/img/3.jpg" alt="">
        </a>
      </div>
      <div class="col-lg-6">
        <a class="portfolio-item" href="customer">
          <span class="caption">
            <span class="caption-content">
              <h2>커뮤니티<br> & 리뷰</h2>
            </span>
          </span>
          <img class="img-fluid" style="width: 300px; height: 300px; object-fit: cover; border-radius: 50%;" src="resources/img/4.jpg" alt="">
        </a>
      </div>
    </div>
  </div>
</section>