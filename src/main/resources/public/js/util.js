$(document).on("click", ".add-to-cart-button", function () {
    let product = $(this).parent().parent();
    let name = product.find(".product-name").text();
    $("#add-to-cart-modal .modal-product-name").text(name);

    $("#add-to-cart-modal").modal("show");
});
