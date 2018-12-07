import { combineReducers } from 'redux';

// import store
import ConfigureStore from './Store';

// Assemble the reducers
export const RootReducer = combineReducers({
    sampleReducer: require('./SampleRedux').reducer
});

// now, inject the root reducer and export default the store
export default () => {
    const { store } = ConfigureStore(RootReducer);

    return store;
}