import React, { useState } from 'react'; //Importa React e o hook useState
import { View, Text, TextInput, Button, StyleSheet } from 'react-native'; // importa

//Funcao principal do aplicativo
const App = () => {
  //Estados para armazenar o nome de usuario e a senha
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');

  //Função que é chamada quando o botão login é pressionado
  const handleLogin = () => {
    //Aqui você poderia adicionar a lógica para autenticar o usuário
    alert(`Usuário: ${username}\nSenha: ${password} `); //Exibe um alerta com o nome do usuario e a senha
  }

  return (
    //Container principal que centraliza o conteudo
    <View style = {styles.container}>
      <Text style ={styles.title}>Tela Login</Text>
      <TextInput
        style = {styles.input}
        placeholder = "Nome de usuário"
        value = {username}
        onChangeText = {setUsername} //Atualiza o estado do nome de usuário
        />
        <TextInput
        style = {styles.input}
        placeholder = "Senha"
        scureTextEntry = {true} //Esconde o texto digitado
        value = {password}
        onChangeText={setPassword} //Atualiza o estado da senha
        />
        <Button title="Entrar" onPress={handleLogin}/> {/*Botão de login*/}
    </View>
  );
};

//Definição de estilos
const styles = StyleSheet.create({
  container: {
    flex: 1, //Ocupar toda a altura da tela
    justifyContent: 'center', //Centraliza os itens verticalmente
    alignItems: 'center', //Centraliza os itens horizontamente
    backgroundColor: '#f5f5f5', //Cor fundo cinza claro
  },
  title: {
    fontSize: 24, //Tamanho da fonte do titulo
    fontWeight: 'bold', //Texto em negrito
    marginBottom: 20, //Espaço abaixo do título
  },
  input: {
    height: 40, //Altur\a do campo de entrada
    borderColor: '#ccc', //Cor da borda do campo de entrada
    borderWidth: 1, //Largura da borda
    marginBottom: 15, //Espaço abaixo do campo de entrada
    paddingHorizontal: 10, //Espaço interno do campo de entrada
    width: '80%', //Largura do campo de entrada
  },
});

export default App;
