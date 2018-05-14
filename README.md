# ALVB React Native Starter

A boilerplate and reference implementation for mobile applications built with React, Redux, and React Native.

## Preview

* [Android](https://appetize.io/app/3xvgukkq4gqjyjn1ztrzq6czwr?device=nexus5&scale=75&orientation=portrait&osVersion=7.1)
* [iOS](https://appetize.io/app/nkn34mhpchnx172e67ptmjypdm?device=iphone6s&scale=75&orientation=portrait&osVersion=11.1)

## Technology

* [React](https://reactjs.org/) + [Redux](https://redux.js.org/) + [React Native](https://facebook.github.io/react-native/)
* [NativeBase](https://nativebase.io/)
* [React Navigation](https://reactnavigation.org/)

## References

* [`Guidelines`](https://github.com/astalavistababy/alvb-docs/).
* [API Specifications/Documentation](https://starterspecapi.docs.apiary.io/)

## Usage

```sh
# install dependencies
yarn install

# run bundler
yarn start

# run on Android device/emulator
yarn android

# run on iOS device/simulator
yarn ios

# run tests
yarn test

# lint code for critical issues
yarn lint:critical

# lint code
yarn lint

# format code
yarn format
```

## Debugging

From DevTools

```javascript
// use logger
Logger.debug('Hello World!');

// check if there is an authenticated session
AuthService.isAuthenticated();

// get state from Redux store
$store.getState().MyModule.myField;

// dispatch action from Redux store
$store.dispatch($state.MyModule.$myAction(/* args */));
```

## Using the Template

Assuming target application with following properties:

* code name is `MyApp`
* display name is `My App`
* id in stores is `com.myapp.client`

1.  Initialize your application `react-native init`

    ```sh
    react-native init MyApp --skip-jest --template 'https://github.com/astalavistababy/alvb-starter-react-native'
    ```

1.  Run post-init routine

    ```sh
    cd ./MyApp
    ./scripts/postinit.sh 'MyApp' 'My App' 'com.myapp.client'
    ```

1.  Make sure to replace placeholders (look for `@@`) with appropriate values
