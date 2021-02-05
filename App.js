import React from 'react';
import {requireNativeComponent} from 'react-native';

const TableView =
  global['TableView'] ||
  (global['TableView'] = requireNativeComponent('TableView'));

const App: () => React$Node = () => (
  <TableView style={{width: 375, height: 800}} />
);

export default App;
