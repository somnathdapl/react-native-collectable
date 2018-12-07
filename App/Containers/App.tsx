import React from 'react';
import {Component} from 'react'
import {Platform, StyleSheet, Text, SafeAreaView} from 'react-native';
import { Provider } from 'react-redux';

// store instance
import store from '../Redux';
const Store = store();

// for Google Maps (v3+)
//import MapView, { PROVIDER_GOOGLE } from 'react-native-maps';

const instructions = Platform.select({
  ios: 'Press Cmd+R to reload,\n' + 'Cmd+D or shake for dev menu',
  android:
    'Double tap R on your keyboard to reload,\n' +
    'Shake or press menu button for dev menu',
});

interface Props {};
interface State {};

export default class App extends Component<Props, State> {
  render() {
    return (
      <Provider store={Store}>
        <SafeAreaView style={styles.container}>
          <Text style={styles.welcome}>Welcome to React Native!</Text>
          <Text style={styles.instructions}>To get started, edit App.js</Text>
          <Text style={styles.instructions}>{instructions}</Text>
          {/* <MapView
            provider={PROVIDER_GOOGLE}
            style={styles.map}
          /> */}
        </SafeAreaView>
      </Provider>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
  map: {
    ...StyleSheet.absoluteFillObject,
  }
});
