public Class Order
{
public interface PurchaseOrder
{
Double discount();
}
public class CustomerPurchaseOrder implements PurchaseOrder
{
public Double discount()
{
return .05;
}
}
}