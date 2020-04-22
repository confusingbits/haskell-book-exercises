4.3
# Mood Swing
1. Mood
2. Blah or Woot
3. The return type should be of type Mood since it could return Blah or Woot as a 'negation'
4. ...
5. ...
```haskell
changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood Woot = Blah
```

4.4