# mvc-vs-react

Adapted the react style to MVC.

o Real CounterModel with complete and self-contained API.  Removed second counter that is derived from first, simply provide access methods that compute derived values on-the-fly.

o Self-contained CounterView that knows how to draw itself (including some drawing delegated to sub-widgets).

o Model sends a 'ModelDidChange' notification whenever it is modified.  That is the only communication towards the view.

o View listens to 'ModelDidChange' notification, updates itself as necessary.

o ViewController has been largely eliminated.


# Observations

o There are fewer entities, and their interactions are simpler.  

o 20 lines less code

o String drawing APIs are sub-optimal

o Hard-coded values for rectangles suck


# Original Readme

I'm a React developer, have little experience with native development myself. With that in mind, here is a small implementation of how I would envision how developing a native app with React's always rendering in mind: 
Notice every UI action results in a call to a model method, immediately follows by render. The whole model-view syncronization is centralized in a render method, so it is not allowed to modify view manually in UIAction methods, you just set model methods and then render.
What React does is to make this seamless, that is you call setState which in turn triggers render automatically. This way, the data flows from your model to your view.
Of course this doesn't take into account how this flow goes when child views are involved, normally you would want to call render in each childview as well, and that's where virtual DOM comes into play with React.
