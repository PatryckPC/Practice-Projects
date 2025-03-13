import React, { useState } from 'react';
import { View, Text, TextInput, Button, StyleSheet, Alert } from 'react-native';

export default function App() {
  const [expediente, setExpediente] = useState('');
  const [password, setPassword] = useState('');

  function perfiles(expediente, password) {
    this.expediente = expediente;
    this.password = password;
  }

  const perfil1 = new perfiles("307036", "1234abcd");
  const perfil2 = new perfiles("123456", "87654321");

  const handleSubmit = () => {
    if (password.length < 8) {
      Alert.alert('La contraseña debe tener al menos 8 caracteres');
    } else {
      if (expediente !== '' && password !== '') {
        console.log(perfil1.expediente, perfil1.password);
        if (expediente === perfil1.expediente && password === perfil1.password) {
          Alert.alert('Usuario autenticado: \n' + perfil1.expediente + ' \n' + perfil1.password);
        } else if (expediente === perfil2.expediente && password === perfil2.password) {
          Alert.alert('Usuario autenticado: ' + perfil2.expediente + ' ' + perfil2.password);
        } else {
          Alert.alert('Usuario no autenticado');
        }
      }
    }
  };

  return (
    <View style={styles.container}>
      <Text style={styles.title}>Login</Text>
      <View style={styles.inputContainer}>
        <TextInput
          style={styles.TextInput} 
          placeholder="Expediente"
          maxLength={6}
          keyboardType="numeric"
          onChangeText={expediente => setExpediente(expediente)}
          value={expediente}
        />
        <TextInput 
          style={styles.TextInput}
          placeholder="Password"
          maxLength={10}
          secureTextEntry={true}
          onChangeText={password => setPassword(password)}
          value={password}
        />
      </View> 
      <View style={styles.buttonContainer}>
        <Button
          style={styles.button}
          title="Iniciar sesión" 
          onPress={handleSubmit}
        />
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: 'black',
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
  },
  inputContainer: {
    width: '80%',
    marginVertical: 10,
    borderBlockColor: 'white',
    borderRadius: 5,
    margin: '10px',
    padding: '10px',
    color: 'white',
  },
  buttonContainer: {
    width: '80%',
    justifyContent: 'center',
    alignContent: 'center',
  },
  button: {
    backgroundColor: 'blue',
    color: 'white',
  },
  TextInput: {
    color: 'black',
    backgroundColor: 'white',
  },
});