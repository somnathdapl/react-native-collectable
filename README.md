![Repo Image](https://i.ibb.co/2qfVZjr/rnfnts.png)

## React Native + Firebase + React Navigation + TypeScript

### This is a React Native starter kit using Typescript that saves time for other developers.The projects includes the following integration out of the box:

- React Native Firebase (v5)
- React Navigation (v3)
- React Redux
- Redux Saga
- Redux Thunk
- Redux Sauce (Infinite Red)
- MobX


## The kit uses the following React Version as of yet:

- React 16.6.3
- React Native 0.57.5


## Installed Add ons:

- React Native Maps (AirBnb)
- React Native Google SignIn (```react-native-google-signin``` package is finally fixed all the previous Build issues. So, no need to use the package ```react-native-google-sign-in```)
- React Native Facebook SignIn SDK (```react-native-fbsdk``` package)


## Integration TODO:

- React Native Wix Native Navigation (on separate branch)
- Selector integration
- Theme support in Application level structure
- GraphQL / Relay client integration
- Integartion with Ignite CLI as a plugin / starter kit
- CI / CD support (Travis / CircleCi, CodeShip)
- AWS Mobile Hub configurable
- Docker / Kubernetes support
- Google Assistant SDK


## Project Description:

This is a ```react-native init``` project. You should use ```react-native-rename yourProjectName``` to rename your project. Just use ```npm install -g react-native-rename``` if this is not installed. Currently lot of things are configured on iOS only. So expected to not work everything in Android.


## Running the project:

1. ```yarn install```
2. ```cd ios && pod install```
3. ```open *.xcworkspace```


## Project Motivation:

The purpose of this project is not to waste time for other fellow React Native developers who doesn't have any knowledge in native platforms (iOS, Android) like myself and faces many challenges in especially set up and running plugins in the app. Some of the plugins that are very popular yet they have such a confusing setup and installation documentation that you sometime either end up finding something in GitHub or SOF articles instead that did the trick or worse - end up in frustration to learn Flutter or Swift may be.

The repo is actively maintained now by myself and I will continue to support it as long as I can.


## Integration Guide:

### Google SignIn:

This kit uses the ```react-native-google-signin``` package and all the configuration and setup is already baked in. So, you don't need to repeat the process. However, you need to use your own bundle identifier and reversed client id in the ```Info -> URL Types``` section in XCode. The kit uses the Automatic linking and uses Google SDK through the pod (```GoogleSignIn```).

### Facebook SignIn:

This kit uses the ```react-native-fbsdk``` package and all the configuration and set up is already baked in. You just need to replace your actual Facebook App ID and stuffs into ```Info.plist``` file.


### Required System Framewoks and Dynamic Libraries:

The following XCode Frameworks are required in this project as part of the Google Signin SDK. You need to copy-paste it from your system to the XCode project's ```Frameworks``` section (Just drag and drop instead of add files). The location is provided below.

#### Frameworks

```Application (in Finder) -> XCode -> Show Package Contents -> Contents -> Developer -> Platforms -> iPhoneOS.platform -> Developer -> SDKs -> iPhoneOS.sdk -> System -> Library -> Frameworks```

- AddressBook.framework
- Accelerate.framework
- CoreData.framework
- CoreGraphics.framwork
- CoreImage.framework
- CoreLocation.framework
- CoreTelephony.framework
- CoreText.framework
- GLKit.framework
- ImageIO.framework
- OpenGLES.framework
- QuartzCore.framework
- SafariServices.framework
- SystemConfiguration.framework
- UIKit.framework

The following dynamic libraries are linked in this project.

```Application (in Finder) -> XCode -> Show Package Contents -> Contents -> Developer -> Platforms -> iPhoneOS.platform -> Developer -> SDKs -> iPhoneOS.sdk -> usr -> lib```

- libc++.tbd
- libz.tbd