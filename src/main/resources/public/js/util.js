$(document).on("click", ".add-to-cart-button", function () {
    let product = $(this).parent().parent().parent();

    let name = product.find("div.product-name").text();
    let image_src = product.find("img.product-image").attr("src");
    let product_id = product.find("a.add-to-cart-button").attr("id");

    $("div.modal-product-name").text(name);
    $("img.modal-product-image").attr("src", image_src);
    $("input#product-id").val(product_id);

    $("#add-to-cart-modal").modal("show");
});
