Router.map ->
  @route "home",
    path: "/"
    layoutTemplate: "homeLayout"

  @route "dashboard",
    path: "/dashboard"
    waitOn: ->
      [
        subs.subscribe 'fixtures'
      ]
    data: ->
      posts: Fixtures.find({},{sort: {createdAt: -1}}).fetch()
