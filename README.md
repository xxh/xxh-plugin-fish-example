## Create your fish xxh plugin
1. Fork this repo
2. Edit the plugin files:
    * `pluginrc.fish` -  this script will be executed on the host when you connect to the host. Put here your functions, environment variables, aliases and whatever you need.
    * `build.sh` - this script should be executed to prepare the plugin on local xxh. It will be executed automatically if `build` directory is not exists.
3. Replace this list to description of your xxh plugin (review other xxh plugins)
4. Push your commits and rename your repo to `xxh-plugin-fish-yourtitle`
5. Install the plugin to your xxh home:
```
xxh +I xxh-plugin-fish-yourtitle+git+https://github.com/yourname/xxh-plugin-fish-yourtitle
```
6. Try connect in update mode: `xxh [user@]host[:port] +s fish +if`

## Examples

🔎 [Search xxh plugins on Github](https://github.com/search?q=xxh-plugin-fish&type=Repositories) or [Bitbucket](https://bitbucket.org/repo/all?name=xxh-plugin-fish)
