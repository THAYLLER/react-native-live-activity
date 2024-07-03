import React from 'react';
import { Button, View } from 'react-native';
import LiveActivity from './LiveActivity';

const App = () => {
  const startLiveActivity = () => {
    LiveActivity.startActivity('exampleActivity')
      .then((response: any) => console.log('Activity ID:', response))
      .catch((error: any) => console.error('Error:', error));
  };

  return (
    <View style={{ justifyContent: 'center', alignContent: 'center', flex: 1 }}>
      <Button title="Start Live Activity" onPress={startLiveActivity} />
    </View>
  );
};

export default App;
