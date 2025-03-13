import { StyleSheet, Text, View } from 'react-native';
import React,{useState} from 'react';
import SearchBar from './components/SearchBar';
import ProductsList from './components/ProductsList';
import products  from './data';

export default function App() {

  const [search, setSearch] = useState('');
  const [productsFiltered, setProductsFiltered] = useState('');

  handleSearch = (search) => {
    setSearch(search);
    setProductsFiltered(products.filter(product => product.name.toLowerCase().includes(search.toLowerCase())));
  }

  return (
    <View style={styles.container}>
      <SearchBar value={search} onChangeText={handleSearch}/>
      <ProductsList products={productsFiltered}/>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
