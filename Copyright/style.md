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

## One-column
{: .-one-column}
One column

## Two-column
{: .-two-column}
### Column one
Column one

### Column two
Column two

## Three-column
{: .-three-column}

### Column one
{: .-prime}

```
1
```
{: .-setup}

```
2
```

```
3
```

line with comment..

### Column two
{: .-prime}

```
1
```
{: .-setup}

```
2
```

### Column Three

```
1
```
{: .-setup}

```
1
2 line with highlight
3 line with highlight
4
```
{: data-line="2,3"}

line with comment..

two column with table
---------------------
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
| `any` | "Anything"    |

#### Basic

| Key      | Description   |
| -------- | ------------- |
| `string` |               |
| `number` |    11         |
| `func`   | Function      |
| `bool`   | True or false |

#### Enum

| Key                       | Description |
| ------------------------- | ----------- |
| `oneOf`_(any)_            | Enum types  |
| `oneOfType`_(type array)_ | Union       |


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




Also see
--------

* [ThePapers.cn](https://thepapers.cn) _(thepapers)_
