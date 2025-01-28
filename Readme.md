# Tiny AsciidoctorJ

Build HTML and PDF asciidoc documentation using [AsciidoctorJ and Gradle](https://docs.asciidoctor.org/gradle-plugin/latest/).
Minimal example for rapid sandboxed testing.

## Usage

`gradle asciidoctor asciidoctorPdf`

You'll need all dependencies installed for this to work, e.g. Java 17 and Gradle.

You can also run it from Docker with `./build.sh` (no Windows batch script yet).
This is useful for using/testing specific dependencies.

## Notes

Created to quickly test ideas while working with `fineract-doc` module in [Fineract](https://github.com/apache/fineract).
This one takes seconds rather than minutes.

[Azul Zulu](https://www.azul.com/) vs. [OpenJDK](https://openjdk.org/) Java didn't seem to make a difference so I opted for the one that is already in the Debian & Ubuntu repositories.
To use Azul Zulu instead, either use Gradle directly with your own dependencies, or add this to the `Dockerfile` if you're using Docker:

```Dockerfile
RUN apt-get update \
 && apt-get --assume-yes --no-install-recommends install curl ca-certificates gpg \
 && curl -s https://repos.azul.com/azul-repo.key | gpg --dearmor -o /usr/share/keyrings/azul.gpg \
 && echo "deb [signed-by=/usr/share/keyrings/azul.gpg] https://repos.azul.com/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list \
 && apt-get update \
 && apt-get --assume-yes --no-install-recommends install zulu17-jdk
```

The first idea I tested was upgrading AsciidoctorJ.
I couldn't get the upgrade to work, see <https://github.com/meonkeys/apache-fineract/blob/upgrade-asciidoctorj/README.md>.
