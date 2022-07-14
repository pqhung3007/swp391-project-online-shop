<%-- Document : addProduct Created on : 20-Jun-2022, 10:29:59 Author :
Administrator --%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
%> <%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add New Product</title>
    <link rel="stylesheet" href="css/seller/home.css" />
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Symbols+Outlined"
      rel="stylesheet"
    />
  </head>
  <body>
    <div class="container-product">
      <!-- VERTICAL NAVBAR -->
      <%@include file="components/sidebarSeller.jsp" %>
      <!-- MAIN SECTION -->
      <div style="margin-top: 2rem">
        <h1>Add new product</h1>
        <form action="add-product" method="POST" enctype="multipart/form-data">
          <div class="input-product">
            <div class="input-image">
              <div>
                <label for="input">
                  Choose Image <br />
                  <i class="fa-solid fa-camera"></i>
                  <input
                    class="field image-name"
                    id="input"
                    type="file"
                    name="image"
                    style="display: none"
                    required
                  />
                </label>
              </div>
              <h6 class="empty-alert">
                Don't forget to upload an image of your product!
              </h6>
              <img
                src="./img/imgPreview.jpg"
                alt=""
                class="input-image__display"
              />
            </div>
            <div class="input-fields">
              <input
                class="field"
                type="text"
                placeholder="Product Name"
                name="name"
                required
              />
              <input
                class="field"
                type="number"
                placeholder="Product Price (VND)"
                name="price"
                required
              />
              <select name="category" class="field">
                <c:forEach items="${categories}" var="c">
                  <option value="${c.categoryId}">${c.categoryName}</option>
                </c:forEach>
              </select>
              <fieldset class="info">
                <legend>Product Description</legend>
                <textarea name="description"></textarea>
              </fieldset>
              <input
                class="input-product-btn btn-submit "
                type="submit"
                value="Save"
              />
            </div>
          </div>
        </form>
      </div>
    </div>

    <script>
      const pictureURL = document.querySelector(".image-name");
      function changePicture() {
        document.querySelector("#image").src = pictureURL.value;
      }
      pictureURL.addEventListener("input", changePicture);

      //image preview
      const inputImg = document.querySelector("input[type=file]");
      inputImg.addEventListener("change", () => {
        const reader = new FileReader();
        reader.addEventListener("load", () => {
          imgFile = reader.result;
          document.querySelector(".input-image__display").src = imgFile;
        });
        reader.readAsDataURL(inputImg.files[0]);
      });
    </script>

    <script
      src="https://kit.fontawesome.com/3a6c73e27c.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
