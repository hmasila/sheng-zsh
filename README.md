![image](https://cloud.githubusercontent.com/assets/20906768/19378106/87f47e88-91f3-11e6-9653-3788c27221dc.png)


## Sheng-zsh

Sheng-zsh is a [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) theme that adds emojis and sheng messages to your zsh terminal.
Sheng will display a `good` emoji and message such as 👌 <font color="green">Hapo sawa</font> on your prompt whenever commands run smoothly and `bad` emojis
such as 🙄 <font color="red">Sipendagi ujinga</font> whenever things go wrong.


Introducing _Sheng_

![sheng](http://sd.keepcalm-o-matic.co.uk/i/keep-calm-na-uache-ufala-2.png)

### Setup

To set up the theme. Ensure that you have [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) installed and setup on your terminal.

Clone the repo or download `sheng.zsh-theme` file.

    $ git clone https://github.com/andela-hmasila/sheng-zsh.git


Copy `sheng.zsh-theme` to `~/.oh-my-zsh/custom/themes/`. This is where your custom themes live.

    $ cp /path/to/sheng.zsh-theme ~/.oh-my-zsh/custom/themes/

Change your zsh theme to sheng in your `.zshrc` file.

    $ vim ~/.zshrc

    ZSH_THEME='sheng'

Restart your terminal and Voila! Sheng is gauging your inteligence 😂.

### Usage

Sheng generates random emojis and messages every time you start up your terminal.

To generate a new set of emojis and messages just run `badilisha`

    $ badilisha

You can also run `bonga` to remind yourself your emoji and messages et.

    $ bonga

### Customization

Sheng is pretty customizable.

If you prefer to have a constant set of emojis just set your `good`emoji and `bad` emoji in `.zshrc` as follows.

For good emojis, set `$POA` to one of the following: `fire muscle pointright facepunch smile sunglasses` and
your `bad` emoji to one of the following: `rollingeyes pouting confused flushed middlefinger worried`

    $POA='fire'
    $MBAYA='rollingeyes'

Then reload your zsh configuration.

    $ source ~/.zshrc

You can also add your own emojis to the supported set. Just add the emoji name to one of the arrays; `goodemojis` or `bademojis`.
Then add the emoji and message to the respective array with the name as the key and the emoji + message as the value.

### Contributing

Feel free to contribute, even if it's to add an emoji. :wink: Just fork it :fork_and_knife: and raise a pull request.

### Credits

This projects borrows from [Austin Kabiru's](https://github.com/akabiru/rafiki-zsh) theme.
Not forgetting [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) itself. :smile:
