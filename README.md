# mvc-vs-react

Modifications of 


I'm a React developer, have little experience with native development myself. With that in mind, here is a small implementation of how I would envision how developing a native app with React's always rendering in mind: 
Notice every UI action results in a call to a model method, immediately follows by render. The whole model-view syncronization is centralized in a render method, so it is not allowed to modify view manually in UIAction methods, you just set model methods and then render.
What React does is to make this seamless, that is you call setState which in turn triggers render automatically. This way, the data flows from your model to your view.
Of course this doesn't take into account how this flow goes when child views are involved, normally you would want to call render in each childview as well, and that's where virtual DOM comes into play with React.
