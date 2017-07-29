// Import Parent Compontents
import homeMain from './components/parent-templates/home.vue';

// Export routes as named constant array.
// Routes consist of desired path + bound parent component
export const routes = [
  {
    path: '',
    component: homeMain
  }
];
