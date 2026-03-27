import { StatusBar } from 'expo-status-bar';
import { useState } from 'react';
import { StyleSheet, Text, View, TouchableOpacity, ScrollView, TextInput} from 'react-native';

export default function App() {

  const [a, setA] = useState(''); //Soma
  const [b, setB] = useState(''); //Soma

  const [c, setC] = useState(''); //Sub
  const [d, setD] = useState(''); //Sub

  const [e, setE] = useState(''); //Multi
  const [f, setF] = useState(''); //Multi

  const [g, setG] = useState(''); //Div
  const [h, setH] = useState(''); //Div

  
  

//SOMA ----------------------------------------
    const [totalSoma, setTotalSoma] = useState('');

    const somar = ()=> {

      const totalSom = parseInt(a)+parseInt(b);
      

      setTotalSoma(totalSom)
    }
 //SOMA ----------------------------------------

 //SUBTRAÇÃO ----------------------------------------
    const [totalSubstrair, setTotalSubtrair] = useState('');

    const subtrair = ()=> {

      const totalSub = parseInt(c)-parseInt(d);;

      setTotalSubtrair(totalSub)
    }
//SUBTRAÇÃO ----------------------------------------

 //MULTIPLICAÇÃO----------------------------------------
    const [totalMultiplicacao, setTotalMultiplicacao] = useState('');

    const multiplicar = ()=> {
      const totalMulti = parseInt(e)*parseInt(f);;

      setTotalMultiplicacao(totalMulti )
    }
 //MULTIPLICAÇÃO----------------------------------------
 
  //DIVISÃO----------------------------------------
    const [totalDivisao, setTotalDivisao] = useState('');
    
    const divisao = ()=> {

      const totalDiv = parseInt(g)/parseInt(h);;

      setTotalDivisao(totalDiv)
    }
  //DIVISÃO----------------------------------------

    

  return (
    <ScrollView contentContainerStyle={{ 
      flexGrow: 1, backgroundColor: '#4b3634', alignItems: 'center',
      justifyContent: 'center',
      }}>

    {/*-----------------SOMA -----------------------*/}
    <View style={[styles.retanguloResultado, styles.top]}> 
      <Text style={styles.titulo}>SOMA</Text>
    <TextInput 
    style={styles.TextInput}
    placeholder='Digite o 1º número'
    keyboardType='numeric'
    onChangeText={(a)=> setA(a)} 
    value={a}
    />
     <TextInput 
    style={styles.TextInput}
    placeholder='Digite o 2º número'
    keyboardType='numeric'
    onChangeText={(b)=> setB(b)} 
    value={b}
    />
    <TouchableOpacity style={styles.botao} onPress={somar}> 
      <Text style={styles.botaoTexto}>Somar</Text> 
    </TouchableOpacity>
      <Text style={styles.resultado}>Resultado: {totalSoma}</Text>
    </View>
    {/*-----------------SOMA -----------------------*/}

    {/*----------------- SUBTRAÇÃO -----------------------*/}
    <View style={styles.retanguloResultado}>
      <Text style={styles.titulo}>SUBTRAÇÃO</Text>
      <TextInput 
    style={styles.TextInput}
    placeholder='Digite o 1º número'
    keyboardType='numeric'
    onChangeText={(c)=> setC(c)} 
    value={c}
    />
     <TextInput 
    style={styles.TextInput}
    placeholder='Digite o 2º número'
    keyboardType='numeric'
    onChangeText={(d)=> setD(d)} 
    value={d}
    />
    <TouchableOpacity style={styles.botao} onPress={subtrair}> 
      <Text style={styles.botaoTexto}>Subtrair</Text> 
    </TouchableOpacity>
      <Text style={styles.resultado}>Resultado: {totalSubstrair}</Text>
    </View>
    {/*----------------- SUBTRAÇÃO -----------------------*/}


    {/*----------------- MULTIPLICAÇÃO -----------------------*/}
    <View style={styles.retanguloResultado}>
      <Text style={styles.titulo}>MULTIPLICAÇÃO</Text>
        <TextInput 
    style={styles.TextInput}
    placeholder='Digite o 1º número'
    keyboardType='numeric'
    onChangeText={(e)=> setE(e)} 
    value={e}
    />
     <TextInput 
    style={styles.TextInput}
    placeholder='Digite o 2º número'
    keyboardType='numeric'
    onChangeText={(f)=> setF(f)} 
    value={f}
    />
    <TouchableOpacity style={styles.botao} onPress={multiplicar}> 
      <Text style={styles.botaoTexto}>Multiplicar</Text> 
    </TouchableOpacity>
      <Text style={styles.resultado}>Resultado: {totalMultiplicacao}</Text>
    </View>
    {/*----------------- MULTIPLICAÇÃO -----------------------*/}

    {/*----------------- DIVISÃO -----------------------*/}
    <View style={styles.retanguloResultado}>
      <Text style={styles.titulo}>DIVISÃO</Text>
         <TextInput 
    style={styles.TextInput}
    placeholder='Digite o 1º número'
    keyboardType='numeric'
    onChangeText={(g)=> setG(g)} 
    value={g}
    />
     <TextInput 
    style={styles.TextInput}
    placeholder='Digite o 2º número'
    keyboardType='numeric'
    onChangeText={(h)=> setH(h)} 
    value={h}
    />
    <TouchableOpacity style={styles.botao} onPress={divisao}> 
      <Text style={styles.botaoTexto}>Dividir</Text> 
    </TouchableOpacity>
      <Text style={styles.resultado}>Resultado: {totalDivisao}</Text>
    </View>
    {/*----------------- DIVISÃO -----------------------*/}

      <StatusBar style="auto" />
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#4b3634',
    alignItems: 'center',
    justifyContent: 'center',

  },

  titulo: {
    marginBottom: 20,
    fontSize: 18,
    fontFamily: 'Arial',
    fontWeight: 'bold',
    color: '#f7ebc9'

  },

  resultado: {
    marginBottom: 5,
    marginTop: 20,
    textAlign: 'center',
    fontWeight: 600,
    color: '#f7ebc9',
  },

  botao: {  
    backgroundColor: '#f7ebc9',
    padding: 10,
    borderRadius: 10,
    width: 150,
    alignItems: 'center',
  },

  botaoTexto: {
    color: '#c25c2d',
    fontWeight: 'bold',
  },

  retanguloResultado: {
    display:'flex',
    backgroundColor: '#c25c2d',
    marginBottom: 35,
    padding: 50,
    width: 250,
    borderRadius: 15,
    justifyContent: 'center',
    alignItems: 'center',
    elevation: 5,
    shadowColor: '#000f',
    shadowOffset: {width:0, height:10},
    shadowOpacity: 0.3,
    shadowRadius: 10
  },

  top: {
    marginTop: 100,
  },

  espacoBaixo: {
    marginBottom: 50,
  },

  TextInput: {
    backgroundColor: '#fff',
    width: 200,
    height: 40,
    borderRadius: 20,
    paddingHorizontal: 10,
    marginBottom: 10,
    borderWidth: 1,
    borderColor: '#cccccc00',
    color: '#999',
  },

});