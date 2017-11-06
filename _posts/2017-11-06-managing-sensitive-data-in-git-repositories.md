---
layout: post
title:  Managinig sensitive data in git repositories
date:   2017-11-06 23:00:00
---

More often than not, especially if you work with operations, you end up managing sensitive data both for your projects and, more importantly, for your clients. Screwing up usually have devastating consequences.

While some might argue that secrets should be handled carefully and should never **ever** be committed to repositories, I find that this is almost always impossible. Almost every project at some point will have keys, password, configuration, etc that you will need to handle.

While many considers private repositories to be secure enough, what if any of your accounts gets compromised? What if an ill-intentioned individual gain access to your private repositories? This is a situation that can be effectively mitigated by simply uploading your secrets **encrypted**. Gaining access to a repo won't be enough, they will also need to have access to your GPG keys.

For this specific purpose, I've used in the past [git-crypt](https://github.com/AGWA/git-crypt). This tool lets you transparently encrypt your sensitive data. Locally you will have a decrypted version of your files, while on commit they will be encrypted and then pushed. Pairing this with a team management system such as [lastpass](full://www.lastpass.com/) to share encryption passwords with your team, let's you have a battle-tested way of handling your secrets.

## Installing git-crypt on Fedora 26

While [installing git-crypt](://github.com/AGWA/git-crypt/blob/master/INSTALL.md) is pretty straight-forward on Mac OS X, it's a bit of a hassle on Linux.

In fedora, you must first ensure to have a few dependencies installed before compiling from source.

{% highlight bash %}
# Installing dependencies
sudo dnf install gcc-c++
sudo dnf install openssl-devel

# Insalling git-crypt
sudo make install PREFIX=/usr/local
chmod jnardiello:jnardiello git-crypt
{% endhighlight %}

## Using git-crypt

In order to use git-crypt, you need to add your GPG key to the trusted sources which can access the decrypted files.

{% highlight bash %}
# Initializing your git-crypt repo
git-crypt init

# Add your GPG credentials to unlock the repo
git-crypt add-gpg-user --trusted <USER_ID or gpg email>
{% endhighlight %}

Once a project is initialized, you must now configure which files you want to encrypt. In order to do that, you should create a `.gitattributes` file and add your sensitive paths there (note that it does support wildcards a bit like your `.gitignore`).


{% highlight bash %}
# Example of .gitattributes
*.key filter=git-crypt diff=git-crypt
{% endhighlight %}

After this is done, the key will be added to `.git-crypt` and the user will be able to decrypt the files.

When cloning an encrypted repository, with the correct GPG key configured, you can decrypt it by issuing the command `git-crypt unlock`

## Conclusion

This is the best way I've found so far. Do you have any suggestion? If so, I'd love to hear your opinion.
