using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class prueba : MonoBehaviour
{
    // Start is called before the first frame update
    int Numero1=0;
    int Numero2=10;
    string Palabra="Hello World";
    void Start()
    {
        if (Numero1>Numero2){
            Debug.Log("Numero 1 mayor");
        }
        else {
            Debug.Log("Numero 2 mayor");
        }
    }

    // Update is called once per frame
    void Update()
    {

    }
}
