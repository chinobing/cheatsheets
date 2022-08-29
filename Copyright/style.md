---
title: 样式
category: Copyright
layout: 2017/sheet
ads: false
tags: [Featured]
updated: 2022-08-28
weight: -1
keywords: style format ys yangshi
intro: 网站页面的样式、格式sample
---

{%raw%}

Components
----------
{: .-three-column}

### Column one
{: .-prime}

```jsx
1
```
{: .-setup}

```jsx
2
```

```jsx
3
```

comment............

### Column two
{: .-prime}

```jsx
1
```
{: .-setup}

```jsx
2
```

### Column Three

```html
1
```
{: .-setup}

```jsx
2
```
{: data-line="2,3"}

3

Lifecycle
---------
{: .-two-column}

### Mounting

| Method                   | Description                                                                                          |
| ------------------------ | ---------------------------------------------------------------------------------------------------- |
| `constructor` _(props)_  | Before rendering [#](https://reactjs.org/docs/react-component.html#constructor)                      |
| `componentWillMount()`   | _Don't use this_ [#](https://reactjs.org/docs/react-component.html#componentwillmount)               |
| `render()`               | Render [#](https://reactjs.org/docs/react-component.html#render)                                     |
| `componentDidMount()`    | After rendering (DOM available) [#](https://reactjs.org/docs/react-component.html#componentdidmount) |
| ---                      | ---                                                                                                  |
| `componentWillUnmount()` | Before DOM removal [#](https://reactjs.org/docs/react-component.html#componentwillunmount)           |
| ---                      | ---                                                                                                  |
| `componentDidCatch()`    | Catch errors (16+) [#](https://reactjs.org/blog/2017/07/26/error-handling-in-react-16.html)          |

Set initial the state on `constructor()`.
Add DOM event handlers, timers (etc) on `componentDidMount()`, then remove them on `componentWillUnmount()`.

### Updating

| Method                                                  | Description                                          |
| ------------------------------------------------------- | ---------------------------------------------------- |
| `componentDidUpdate` _(prevProps, prevState, snapshot)_ | Use `setState()` here, but remember to compare props |
| `shouldComponentUpdate` _(newProps, newState)_          | Skips `render()` if returns false                    |
| `render()`                                              | Render                                               |
| `componentDidUpdate` _(prevProps, prevState)_           | Operate on the DOM here                              |

Called when parents change properties and `.setState()`. These are not called for initial renders.

See: [Component specs](http://facebook.github.io/react/docs/component-specs.html#updating-componentwillreceiveprops)

Property validation
-------------------
{: .-three-column}

### PropTypes

```js
import PropTypes from 'prop-types'
```
{: .-setup}

See: [Typechecking with PropTypes](https://reactjs.org/docs/typechecking-with-proptypes.html)

| Key   | Description |
| ----- | ----------- |
| `any` | Anything    |

#### Basic

| Key      | Description   |
| -------- | ------------- |
| `string` |               |
| `number` |               |
| `func`   | Function      |
| `bool`   | True or false |

#### Enum

| Key                       | Description |
| ------------------------- | ----------- |
| `oneOf`_(any)_            | Enum types  |
| `oneOfType`_(type array)_ | Union       |

#### Array

| Key              | Description |
| ---------------- | ----------- |
| `array`          |             |
| `arrayOf`_(...)_ |             |

#### Object

| Key                 | Description                          |
| ------------------- | ------------------------------------ |
| `object`            |                                      |
| `objectOf`_(...)_   | Object with values of a certain type |
| `instanceOf`_(...)_ | Instance of a class                  |
| `shape`_(...)_      |                                      |

#### Elements

| Key       | Description   |
| --------- | ------------- |
| `element` | React element |
| `node`    | DOM node      |

#### Required

| Key                | Description |
| ------------------ | ----------- |
| `(···).isRequired` | Required    |

### Basic types

```jsx
MyComponent.propTypes = {
  email:      PropTypes.string,
  seats:      PropTypes.number,
  callback:   PropTypes.func,
  isClosed:   PropTypes.bool,
  any:        PropTypes.any
}
```

### Required types

```jsx
MyCo.propTypes = {
  name:  PropTypes.string.isRequired
}
```

### Elements

```jsx
MyCo.propTypes = {
  // React element
  element: PropTypes.element,

  // num, string, element, or an array of those
  node: PropTypes.node
}
```

### Enumerables (oneOf)

```jsx
MyCo.propTypes = {
  direction: PropTypes.oneOf([
    'left', 'right'
  ])
}
```

### Arrays and objects

```jsx
MyCo.propTypes = {
  list: PropTypes.array,
  ages: PropTypes.arrayOf(PropTypes.number),
  user: PropTypes.object,
  user: PropTypes.objectOf(PropTypes.number),
  message: PropTypes.instanceOf(Message)
}
```

```jsx
MyCo.propTypes = {
  user: PropTypes.shape({
    name: PropTypes.string,
    age:  PropTypes.number
  })
}
```

Use `.array[Of]`, `.object[Of]`, `.instanceOf`, `.shape`.

### Custom validation

```jsx
MyCo.propTypes = {
  customProp: (props, key, componentName) => {
    if (!/matchme/.test(props[key])) {
      return new Error('Validation failed!')
    }
  }
}
```

Also see
--------

* [React website](https://reactjs.org) _(reactjs.org)_
* [React cheatsheet](https://reactcheatsheet.com/) _(reactcheatsheet.com)_
* [Awesome React](https://github.com/enaqx/awesome-react) _(github.com)_
* [React v0.14 cheatsheet](react@0.14) _Legacy version_

{%endraw%}
