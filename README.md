<img src="https://upload.wikimedia.org/wikipedia/commons/2/27/Enigma-plugboard.jpg" alt="Enigma-plugboard.jpg" width=500>

Image source<sup>[1](#footnote)</sup>

## Overview

The *Enigma* project was designed for Turing School of Software and Development to develop my skills with Ruby, OOP, Test-Driven Development, and version control using Github. It implements a simplified version of the historic Enigma machine and then cracks its encryption, as Alan Turing and his team were depicted doing in *The Imitation Game*.

## Usage

The *Enigma* program can be run from the command line. Clone the repo and navigate to the root directory. To encrypt, use the following syntax, where the first argument is the file containing the text to be encrypted and the second argument is the name of the file to create which will contain the encrypted text.

```
ruby ./lib/encrypt.rb message.txt encrypted.txt
```

To decrypt, use the following syntax, similar to the above but with a third argument which is the random five-digit number used to encrypt the message (take note of it when encrypting) and the fourth argument is the date on which the message was encrypted in DDMMYY format:

```
ruby ./lib/decrypt.rb encrypted.txt decrypted.txt 12345 140622
```

## Self-Assessment

Upon completion of this project, I was asked to assess my performance based on [this rubric](https://backend.turing.io/module1/projects/enigma/rubric).

|              | Functionality | Object Oriented Programming | Ruby Convention and Mechanics | Test Driven Development | Version Control |
| ----------- | ----------- | ----------- | ----------- | ----------- | ----------- |
| Score | 3 | 3 | 3 | 3 | 4 |
| Reason | Enigma Class with encrypt and decrypt methods successfully implemented. Encrypt/decrypt command line interfaces successfully implemented. | Project is broken into logical components that are appropriately encapsulated. No classes are unreasonably small or large, or contain knowledge/information/behavior that they shouldn’t know about. Student can articulate the single responsibilities of the various components.| Code is mostly properly indented, spaced, and lines are not excessively long. Class, method, variable, and file names follow convention. Some enumerables/data structures chosen are the most efficient tool for a given job, and students can speak as to why those enumerables/data structures were chosen. At least one hash is implemented in a way that makes logical sense. | Every method is tested at both the unit and integration level, and completely verify expected behavior (i.e., if a single method does 3 things, all 3 things are explicitly tested). Obvious edge cases are addressed. git history demonstrates students are writing tests before implementation code. Test coverage metrics show coverage at 99% or greater. | Minimum 40 commits and 4 pull requests. All pull requests include related and logical chunks of functionality, and are named and documented to clearly communicate the purpose of the pull request. No commits include multiple pieces of functionality. |

---

<sup><a name="footnote">1</a></sup> By Bob Lord - <a rel="nofollow" class="external text" href="http://www.ilord.com/enigma.html">German Enigma Machine</a>, uploaded in english wikipedia on 16. Feb. 2005 by <a href="https://en.wikipedia.org/wiki/User:Matt_Crypto" class="extiw" title="en:User:Matt Crypto">en:User:Matt Crypto</a>, <a href="http://creativecommons.org/licenses/by-sa/3.0/" title="Creative Commons Attribution-Share Alike 3.0">CC BY-SA 3.0</a>, <a href="https://commons.wikimedia.org/w/index.php?curid=258976">Link</a>
