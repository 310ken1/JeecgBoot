import { genMessage } from '../helper';
import antdLocale from 'ant-design-vue/es/locale/ja_JP';
//import momentLocale from 'moment/dist/locale/eu';

const modules = import.meta.glob('./ja_JP/**/*.ts', { eager: true });
export default {
  message: {
    ...genMessage(modules as Recordable<Recordable>, 'ja_JP'),
    antdLocale,
  },
  dateLocale: null,
  dateLocaleName: 'ja_JP',
};
