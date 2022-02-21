#include <iostream>
using namespace std;

int main()
{
    string text;
    cin >> text;
    int a = 0;
    int b = 0;
    
    
    for (int i = 0; i < size(text); i++)
    {
        if (text[0] == ')')
        {
            cout << system("cls")<<  "Error ')'" << endl;
            break;
        }
        if (text[i] == ')') a++;    
        else if (text[i] == '(') b++;
        else
            if ( (int(text[i]) < 47 || (int(text[i]) > 57)) && (int(text[i]) < 40 || (int(text[i]) > 43)) && (((int)text[i]) != 45) && (((int)text[i]) != 47) )
            {
                cout << system("cls") << "Error 'letters'";
                break;
             }

        if ((i == text.length()-1) && (a != b))
        {
            cout << system("cls") << "Error '()'";
        }
        else if (i == text.length() - 1)
            cout << "Success" << endl;

        }


}

