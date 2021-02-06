import React from 'react';
import {Dimensions, requireNativeComponent} from 'react-native';

const TableView =
  global['TableView'] ||
  (global['TableView'] = requireNativeComponent('TableView'));

const App: () => React$Node = () => (
  <TableView
    style={{
      flex: 1,
    }}
  />
);

export default App;
