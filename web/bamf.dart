import 'dart:html';
import 'dart:convert' show JSON;

main() async {
  String url = "https://api.digitalriver.com/v1/shoppers/me/products/2740204200/inventory-status?format=json&locale=en_us&apiKey=9485fa7b159e42edb08a83bde0d83dia&currency=USD&productId=2740204200";
  await HttpRequest.getString(url).then(whelllll);
}


whelllll(String response) {
  String txt = "WHO KNOWS?";
  try {
		Map obj = JSON.decode(response);
    txt = obj['inventoryStatus']['productIsInStock'] == "true" ? "NOT FOR LONG" : "NOPE";
  } catch (e) {
  }
	querySelector("#whelp").setInnerHtml(txt);
}
