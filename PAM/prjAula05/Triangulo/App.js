import { StatusBar } from 'expo-status-bar';
import { useState } from 'react';
import { StyleSheet, Text, View, Image, TextInput, TouchableOpacity } from 'react-native';
import { ScrollView } from 'react-native';

export default function App() {

  const [a, setA] = useState('');
  const [b, setB] = useState('');
  const [c, setC] = useState('');

  const [resultado, setResultado] = useState('');
  const [image, setImage] = useState(null);

  const testeTriangulo = () => {

    const A = Number(a);
    const B = Number(b);
    const C = Number(c);

     if (!A || !B || !C) {
      setResultado("Há campos vazios! Preencha-o (s) e execute o classificador"); {/*TESTE DOS CAMPOS VAZIOS*/}
     } 
     
     else {    {/*TESTE DOS CAMPOS VAZIOS*/}

    if (A + B > C && A + C > B && C + B > A) {

        if (A == B && B == C) {
          setResultado("Triângulo Equlátero");
          setImage(require('./assets/image/equilatero.png'))
        }

        else if (A != B && B != C && C != A) {
          setResultado("Triângulo Escaleno");
          setImage(require('./assets/image/escaleno.png'))
        }

        else {
          setResultado("Triângulo Isósceles");
          setImage(require('./assets/image/isosceles.png'))
        }

      } else {
        setResultado("Não forma um triângulo");
        setImage(null)
      }
    }
    
  }

  return (
    <ScrollView contentContainerStyle={styles.container}>

      <View style={styles.card}>

        <Text style={styles.title}>   Classificador de Triângulos</Text>

        <Text style={styles.label}>1º aresta</Text>
        <TextInput
          style={styles.input}
          placeholder='Digite o primeiro valor'
          keyboardType='numeric'
          onChangeText={(a) => setA(a)}
          value={a}
          placeholderTextColor="#999"
        />

        <Text style={styles.label}>2º aresta</Text>
        <TextInput
          style={styles.input}
          placeholder='Digite o segundo valor'
          keyboardType='numeric'
          onChangeText={(b) => setB(b)}
          value={b}
          placeholderTextColor="#999"
        />

        <Text style={styles.label}>3º aresta</Text>
        <TextInput
          style={styles.input}
          placeholder='Digite o terceiro valor'
          keyboardType='numeric'
          onChangeText={(c) => setC(c)}
          value={c}
          placeholderTextColor="#999"
        />

        <TouchableOpacity style={styles.botao} onPress={testeTriangulo}>
          <Text style={styles.botaoTexto}>Calcular</Text>
        </TouchableOpacity>

        <Text style={styles.resultado}>Resultado: {resultado}</Text>

        {image && (
          <View style={styles.imageContainer}>
          <Image source={image} style={styles.image} />
        </View>
        )}

      </View>

    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flexGrow: 1,
  backgroundColor: '#0f172a',
  alignItems: 'center',
  padding: 20,
  },

  card: {
    width: '100%',
    backgroundColor: '#1e293b',
    borderRadius: 20,
    padding: 20,
    shadowColor: '#000',
    shadowOpacity: 0.3,
    shadowRadius: 10,
    elevation: 10,
  },

  title: {
    fontSize: 20,
    fontWeight: 'bold',
    color: '#fff',
    textAlign: 'center',
    marginBottom: 20,
  },

  label: {
    color: '#cbd5e1',
    marginTop: 10,
    marginBottom: 5,
    fontSize: 14,
  },

  input: {
    backgroundColor: '#0f172a',
    color: '#fff',
    padding: 12,
    borderRadius: 10,
    borderWidth: 1,
    borderColor: '#334155',
  },

  botao: {
    backgroundColor: '#38bdf8',
    padding: 15,
    borderRadius: 12,
    marginTop: 20,
    alignItems: 'center',
  },

  botaoTexto: {
    color: '#0f172a',
    fontWeight: 'bold',
    fontSize: 16,
  },

  resultado: {
    marginTop: 20,
    fontSize: 16,
    fontWeight: 'bold',
    color: '#f8fafc',
    textAlign: 'center',
  },

  image: {
    width: 300,
    height: 200,
    marginTop: 20,
    borderRadius: 15,
  },

  imageContainer: {
  width: '100%',
  alignItems: 'center',
  marginTop: 20,
},
});