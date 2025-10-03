#include <iostream>
using namespace std;
#include <string>
#include <cstring>
/**
 * Write a c++ program to implement processing shopping list using a class with arrays as data
members.
 */

// Shoppinh list with prices and quantities
class ShoppingList
{
private:
    string items[100];
    int itemCount;
    float prices[100];
    int quantities[100];

public:
    ShoppingList() : itemCount(0) {}

    void addItem(const char *item, float price, int quantity)
    {
        if (itemCount < 100)
        {
            items[itemCount] = item;
            prices[itemCount] = price;
            quantities[itemCount] = quantity;
            itemCount++;
        }
        else
        {
            printf("Shopping list is full!\n");
        }
    }

    void displayItems() const
    {
        printf("Shopping List:\n");
        for (int i = 0; i < itemCount; ++i)
        {
            printf("%d . %s\n", i + 1, items[i].c_str());
        }
    }
    void calculateTotalPrice() const
    {
        float total = 0;
        for (int i = 0; i < itemCount; ++i)
        {
            total += prices[i] * quantities[i];
        }
        printf("Total Price: Rs. %.2f\n", total);
    }
};

int main()
{
    ShoppingList list;
    while (1)
    {
        string item;
        float price;
        int quantity;
        printf("Enter item name (or 'done' to finish): ");
        scanf(" %99[^\n]", item.data());
        printf("You entered: %s\n", item.c_str());
        // Check if item value equals to done
        if (strcmp(item.c_str(), "done") == 0)
        {
            list.displayItems();
            list.calculateTotalPrice();
            break;
        }
        printf("Enter price: ");
        scanf("%f", &price);

        printf("Enter quantity: ");
        scanf("%d", &quantity);
        list.addItem(item.c_str(), price, quantity);
    }
    return 0;
}