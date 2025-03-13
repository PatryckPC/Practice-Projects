import React from 'react';
import { View, TextInput, StyleSheet } from 'react-native';

export default SearchBar = ({value, onChangeText}) => {
    return (
        <View style={styles.container}>
            <TextInput
                style = {styles.input}
                placeholder = 'Buscar'
                multiline = {false} // No permite saltos de línea
                value = {value}
                onChangeText = {onChangeText}
            />
        </View>
    );
}

const styles = StyleSheet.create({
    container: {
        backgroundColor: '#f0f0f0',
        padding: 10,
        margin: 10,
        borderRadius: 10,
    },
    input: {
        backgroundColor: '#fff',
        padding: 10,
        borderRadius: 10,
    }
});