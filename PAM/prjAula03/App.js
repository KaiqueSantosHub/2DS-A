import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View, Image } from 'react-native';
import { ScrollView } from 'react-native';

export default function App() {
  return (
    <ScrollView style={styles.container}>

       
      <Text style={styles.tituloPrincipal}>Top 10 tecnologias mais usadas com React Native</Text>

<Text style={styles.titulo}>1. JavaScript </Text>
<Text style={styles.descricao}>O <Text style={{fontWeight:'bold'}}> JavaScript</Text> é uma linguagem de programação de alto nível usada principalmente para criar sites interativos e dinâmicos. Ele permite manipular conteúdos, responder a ações do usuário e se comunicar com servidores. Além do navegador, também pode ser usado no back-end com tecnologias como Node.js, permitindo desenvolver aplicações completas com uma única linguagem.</Text>

<Text style={styles.titulo}>2. TypeScript </Text>
<Text style={styles.descricao}><Text style={{fontWeight:'bold'}}>TypeScript </Text> é uma linguagem baseada em JavaScript que adiciona tipagem estática e recursos avançados, ajudando a criar códigos mais seguros e organizados em grandes projetos.</Text>

<Text style={styles.titulo}>3. Java </Text>
<Text style={styles.descricao}><Text style={{fontWeight:'bold'}}> Java</Text> é uma linguagem de programação orientada a objetos, usada para criar aplicações multiplataforma, desde sistemas corporativos até aplicativos Android.</Text>

<Text style={styles.titulo}>4. Kotlin </Text>
<Text style={styles.descricao}><Text style={{fontWeight:'bold'}}> Kotlin</Text> é uma linguagem moderna para desenvolvimento Android, interoperável com Java, que oferece sintaxe concisa e segurança de tipos.</Text>

<Text style={styles.titulo}>5. Swift </Text>
<Text style={styles.descricao}>O <Text style={{fontWeight:'bold'}}>Swift </Text> é a linguagem oficial da Apple para desenvolver aplicativos para iOS, macOS e outros sistemas Apple, conhecida por sua segurança e desempenho.</Text>

<Text style={styles.titulo}>6. Objective-C </Text>
<Text style={styles.descricao}>O <Text style={{fontWeight:'bold'}}>Objective-C </Text> é uma linguagem orientada a objetos usada historicamente no desenvolvimento de apps para iOS e macOS, antes do Swift.</Text>

<Text style={styles.titulo}>7. C++</Text>
<Text style={styles.descricao}>O <Text style={{fontWeight:'bold'}}> C++</Text> é uma linguagem poderosa e de alto desempenho, usada em sistemas, jogos, motores gráficos e aplicações que exigem controle detalhado do hardware.</Text>

<Text style={styles.titulo}>8. Python</Text>
<Text style={styles.descricao}>O <Text style={{fontWeight:'bold'}}>Python </Text> é uma linguagem de programação versátil e fácil de aprender, usada em ciência de dados, inteligência artificial, web, automação e muito mais.</Text>

<Text style={styles.titulo}>9. Node.js</Text>
<Text style={styles.descricao}>O <Text style={{fontWeight:'bold'}}>Node.js </Text> é um ambiente que permite executar JavaScript no servidor, ideal para criar aplicações web rápidas e escaláveis.</Text>

<Text style={styles.titulo}>10. SQL</Text>
<Text style={styles.descricao}>O <Text style={{fontWeight:'bold'}}> SQL</Text> é uma linguagem usada para gerenciar e consultar bancos de dados relacionais, permitindo armazenar, acessar e manipular informações de forma estruturada.</Text>

     <Image
          source={require('./assets/tailung.png')}
          style={styles.img}
        />
    </ScrollView>

  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#d9f8f0b6',
  },

  tituloPrincipal: {
    fontSize: 30,
    fontFamily:'Poppins',
    textAlign:'center',
    top:25,
    fontWeight: 'bold',
  },

  titulo: {
    fontSize:23,
    fontFamily: 'Arial',
    paddingTop: 10,
    marginTop:45,
    marginLeft:20,
    fontWeight: 'bold',
    color:'#00a9d3',
    fontFamily:"Georgia"
  },

  descricao: {
    textAlign: 'justify',
    maxWidth: 750,
    paddingTop:10,
    marginLeft:35,
    fontSize:18,
    marginBottom:25,
  },

  img: {
    width:1500,
  }


});
