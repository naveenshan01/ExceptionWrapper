# ExceptionWrapper
To wrap the objC method execution in try catch to throw the exception.

When we try to wrap the objc method in swift `try-catch` block, swift tells us now throwable block. 

This class helps to achieve a throwable block for objC exception and throw as swift exception.

### Usage
```swift
do {
    try ExceptionWrapper.catchExceptions {
    /// Method to wrap.
    }
} catch let error {
    print("Exception : \(error)")
}
```
