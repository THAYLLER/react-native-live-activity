import { NativeModules } from 'react-native';

const { LiveActivity } = NativeModules;

interface LiveActivityInterface {
  startActivity(name: string): Promise<string>;
}

export default LiveActivity as LiveActivityInterface;
