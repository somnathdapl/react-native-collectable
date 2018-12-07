import { createStore, applyMiddleware, compose } from 'redux';

// List of middlewares to be used
import ReduxThunk from 'redux-thunk';

// create the store
export default (rootReducer) => {
    const middlewares = [];
    const enhancers = [];

    // Push middlewares into an array
    middlewares.push(ReduxThunk);

    // Now, assemble all the middlewares together
    enhancers.push(applyMiddleware(...middlewares));

    // Now, create the store object
    const store = createStore(rootReducer, compose(...enhancers));

    // export the store object so that the store index can inject root reducer
    return { store }
}