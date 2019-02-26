---
title: React Hooks
subtitle: Make stateless function components stateful
author: Jan Baer
institute: 
lang: de
date: \today
theme: metropolis
colortheme: metropolis #seahorse
linkcolor: blue
---

# React Hooks - What is it

- React Hooks make it possible to take a functional component and add a state to it, or hook into lifecycle methods like **componentDidMount** and **componentDidUpdate**.
- React Hooks can be used since v16.8.
- With React Hooks you can use functional components for more use cases and prevent to write bloated classes.

# React Hooks - Which hooks comes out of the box

- Basic Hooks
  - useState
  - useEffect
  - useContext
- Additional Hooks
  - useReducer
  - useRef
  - useCallback
  - useMemo
  - ...
  
  [More information](https://reactjs.org/docs/hooks-reference.html)

# useState

- Returns a stateful value, and a function to update it. During the initial render, the returned state (state) is the same as the value passed as the first argument (initialState). The setState function is used to update the state. It accepts a new state value and enqueues a re-render of the component.\pause
- Is perfect for managing a state on a single component. But it isn't for shared states.\pause
- You can use a state object but also only a single value as a state\pause
- You can use **useState** multiple times in the same component\pause
- **useState** takes an inital state value or a function as parameter to lazy initialize the value\pause

# useState

```javascript
const [{state}, set{State}] = useState(initialState);
```
\pause

```javascript
setCounter(counter + 1);
```
\pause

```javascript
const [state, setState] = useState(() => {
  const initialState = someExpensiveComputation(props);
  return initialState;
});
```

# useEffect

- The Effect Hook lets you perform side effects in function components. If you’re familiar with React class lifecycle methods, you can think of useEffect Hook as componentDidMount, componentDidUpdate, and componentWillUnmount combined. \pause
- useEffect let you control how often it should be called \pause
- When you return a cleanup function then it will be called when the component will be unmounted

---

# useEffect

```javascript
useEffect(() => {
  document.title = 'The will happen after the first' +
    'render cycle was finished';

  return function cleanup() {
    // Here you can unsubscribe any eventhandlers
  };
}, []);
```

# useEffect

- [Demo](https://codesandbox.io/s/2352937qzp)

# useContext

- Accepts a context object (the value returned from React.createContext) and returns the current context value, as given by the nearest context provider for the given context. \pause
- When the provider updates, this Hook will trigger a rerender with the latest context value.

# useContext

- [Demo](https://codesandbox.io/s/kk740xzrj7)

---

# Rules of Hooks

- Only call hooks at the top level of your function. Don’t put them in loops, conditionals, or nested functions. In order for React to keep track of your hooks, the same ones need to be called in the same order every single time. \pause
- Only call hooks from React function components, or from custom hooks. Don’t call them from outside a component. Keeping all the calls inside components and custom hooks makes your code easier to follow too, because all the related logic is grouped together. \pause
- The names of hooks must start with “use”. Like useState or useEffect.



# Write your own hooks

- Custom hooks are using mostly the original React hooks like **useState** and **useEffect** together to prevent duplicated code.

# External hooks

- [mobx-react-lite](https://github.com/mobxjs/mobx-react-lite)

