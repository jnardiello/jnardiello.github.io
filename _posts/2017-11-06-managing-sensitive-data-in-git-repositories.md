---
layout: post
title:  Managinig sensitive data in git repositories
date:   2017-11-06 23:00:00
---

More often than not, especially if you work with operations, you end up managing sensitive data both for your projects or, more importantly, for your clients. Screwing up usually have devastating effects with your projects, infrastructures and accounts getting compromised.

While some might argue that secrets should be handled carefully and should never - ever - be committed on repositories, I find that this is almost always impossible and you end up having them (if you do a good job organizing your work and files) in some configuration file that you still need to handle.

Obviously rule number zero is to work in private repositories and avoid to expose them to the public , still I think this is not enough. Committing secrets in clear text is **really** a bad idea. What if any of your accounts gets compromised? What if any ill-intentioned individual gain access to your files? This is a situation that can be efficiently mitigated uploading your secrets **encrypted**.

For this reason, I've used in the past a nice project called [git-crypt](https://github.com/AGWA/git-crypt). This tool lets you transparently manage git encryption, meaning that locally you will have a de-crypted version of your sensitive files, while on commit they will be encrypted.

As a result, all your data will be committed and uploaded to remote repositories fully encrypted and in a worst case scenario where your private repos will be compromised, all the data sensible data will still be inaccessible. Pairing this with a team management system such as [lastpass](full://www.lastpass.com/) to share encryption passwords with your team, let's you have a very efficient and secure way to handle your secrets/

## Installing git-crypt on Fedora 26

While [installing git-crypt](://github.com/AGWA/git-crypt/blob/master/INSTALL.md) is pretty straight-forward on Mac OS X, it's a bit of a hassle on Linux.

In fedora, you must first ensure to have a few dependencies installed before compiling from source.

```bash
# Installing dependencies
sudo dnf install gcc-c++
sudo dnf install openssl-devel

# Insalling git-crypt
sudo make install PREFIX=/usr/local
chmod jnardiello:jnardiello git-crypt
```

## Using git-crypt

In order to use git-crypt, you need to add your GPG key to the trusted sources which can access the decrypted files.

```bash
# Initializing your git-crypt repo
git-crypt init

# Add your GPG credentials to unlock the repo
git-crypt add-gpg-user --trusted USER_ID

```

Once a project is initialized, you must now configure which files you want to encrypt. In order to do that, you should create a `.gitattributes` file and add your sensitive paths there (note that it does support wildcards a bit like your `.gitignore`).

```
# Example of .gitattributes
*.key filter=git-crypt diff=git-crypt
```

After this is done, the key will be added to `.git-crypt` and the user will be able to decrypt the files.

When cloning an encrypted repository, with the correct GPG key configured, you can decrypt it by issuing the command `git-crypt unlock`

## Conclusion

This is the best way I've found so far to handle secrets and sensitive data in my projects. Do you have any suggestion? If so, I'd love to hear your opinion.
