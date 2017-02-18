# PreferencesManager
A thread-safe alternative to NSUserDefaults to persist application settings/data.

#### Usage

        let prefs = Prefs()        
        
        let value = "Hello"
        let key = "StringPrimitive"        
        
        prefs.setValue(value, key: key)

#### Installation

1. Download demo project. 
2. Copy and add /FileUtils and /Prefs folders to your project.
3. That's it.

#### Things to Remember

1. Thread-safe
2. Keys have to be strings
3. Values can be

    * a. Primitives: 
        
        * String, Int, Double, Float, Bool

    * b. Collections: 
       
        * Array`<Primitive>`
        * Set`<Primitive>`
        * Dictionary`<Primitive, Primitive>`
        * Dictionary`<Primitive, Array<Primitive>>`
        * Dictionary`<Primitive, Set<Primitive>>`
    
4. Look through tests for more usage samples.
