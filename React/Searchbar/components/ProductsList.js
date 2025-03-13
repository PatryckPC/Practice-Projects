import React from 'react';
import { FlatList , StyleSheet} from 'react-native';
import ProductsItems from './ProductsItems';

const ProductsList = ({products}) => {
    return (
        <FlatList
            data = {products}
            renderItem = {({item}) => <ProductsItems product={item} />}
            keyExtractor = {item => item.id.toString()}
            style = {styles.FlatList}
        />
    );
}

const styles = StyleSheet.create({
    FlatList: {
        backgroundColor: '#B2FFFD',
    }
});

export default ProductsList;