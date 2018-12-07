// Deep copy
let cloneObject = function(obj) {
	return JSON.parse(JSON.stringify(obj))
}

let initialState = {
    something: null
};

export const reducer = (prevState = initialState, action) => {
    switch (action.type) {
        case 'SOME_ACTION':
            initialState = cloneObject(prevState);
            initialState.something = { echo: 'John Doe' };
            return initialState;
        default:
            return initialState;
    }
}