![logo](https://user-images.githubusercontent.com/6185447/140605235-74dafd4f-77ce-4282-a38f-bdbcd46742da.png)

# Front-end Test Elemes
## Build Setup

```bash
# install dependencies
$ npm install

# serve with hot reload at localhost:5050
$ npm run dev

# build for production and launch server
$ npm run build
$ npm run start

# generate static project
$ npm run generate
```

For detailed explanation on how things work, check out the [documentation](https://nuxtjs.org).

## Special Directories

You can create the following extra directories, some of which have special behaviors. Only `pages` is required; you can delete them if you don't want to use their functionality.

### `assets`

The assets directory contains your uncompiled assets such as Stylus or Sass files, images, or fonts.

More information about the usage of this directory in [the documentation](https://nuxtjs.org/docs/2.x/directory-structure/assets).

### `components`

The components directory contains your Vue.js components. Components make up the different parts of your page and can be reused and imported into your pages, layouts and even other components.

More information about the usage of this directory in [the documentation](https://nuxtjs.org/docs/2.x/directory-structure/components).

### `layouts`

Layouts are a great help when you want to change the look and feel of your Nuxt app, whether you want to include a sidebar or have distinct layouts for mobile and desktop.

More information about the usage of this directory in [the documentation](https://nuxtjs.org/docs/2.x/directory-structure/layouts).


### `pages`

This directory contains your application views and routes. Nuxt will read all the `*.vue` files inside this directory and setup Vue Router automatically.

More information about the usage of this directory in [the documentation](https://nuxtjs.org/docs/2.x/get-started/routing).

### `plugins`

The plugins directory contains JavaScript plugins that you want to run before instantiating the root Vue.js Application. This is the place to add Vue plugins and to inject functions or constants. Every time you need to use `Vue.use()`, you should create a file in `plugins/` and add its path to plugins in `nuxt.config.js`.

More information about the usage of this directory in [the documentation](https://nuxtjs.org/docs/2.x/directory-structure/plugins).

### `static`

This directory contains your static files. Each file inside this directory is mapped to `/`.

Example: `/static/robots.txt` is mapped as `/robots.txt`.

More information about the usage of this directory in [the documentation](https://nuxtjs.org/docs/2.x/directory-structure/static).

# Deploy Nuxt on Heroku
## How to deploy Nuxt on Heroku?

We recommend you read the [Heroku documentation for Node.js](https://devcenter.heroku.com/articles/nodejs-support).

Watch a free lesson on [How to deploy Nuxt to Heroku on Vue School](https://vueschool.io/lessons/how-to-deploy-nuxtjs-to-heroku?friend=nuxt)

You can set up and configure your app via the [Heroku dashboard](https://devcenter.heroku.com/articles/heroku-dashboard) or the [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli).

First, we create our app. Then we add the Node.js [buildpack](https://devcenter.heroku.com/articles/buildpacks) and configure the app to listen on the host `0.0.0.0`:

``` bash
heroku create elemes-id-test
heroku buildpacks:set heroku/nodejs
heroku config:set HOST=0.0.0.0
```
Your app's Settings section on the Heroku dashboard should contain this:
![0ab263](https://user-images.githubusercontent.com/6185447/140265110-d068dae8-2767-4f01-8427-b1904f438e20.png)

Finally, we can push the app on Heroku with:

``` bash 
git push heroku master
```
To deploy a non-master branch to Heroku use:
``` bash 
git push heroku develop:master
```
where `develop` is the name of your branch.
You can optionally configure automatic deploys from a selected branch of your app's GitHub repository in the Deploy section of your app in the Heroku dashboard.

Hura! Your Nuxt application is now hosted on Heroku!
