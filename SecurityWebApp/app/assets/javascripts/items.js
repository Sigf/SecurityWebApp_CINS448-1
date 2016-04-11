

  var add_to_cart = function(name, price){
    $.post("/user_item/add.json", {name: name, price: price, user_id: current_user_id});
  }
