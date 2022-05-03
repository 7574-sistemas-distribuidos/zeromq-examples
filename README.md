# zeromq-examples

## zguide
The following examples are a dockerization of the [zguide](https://zguide.zeromq.org/): the zeromq patterns and examples.

### Prerequisites
* Go to **base-images**
* Execute the script **build.sh**

### Examples
The examples were coded mainly in Python, including:
* **pair**
* **request-reply**
* **pub-sub**
* **request-reply-broker**
* **pipeline**
* **xpub-xsub**

Each example can be executed using **run.sh** and stopped using **stop.sh**. The exception are the **request-reply** examples which requires starting the server via **run.sh** and then jump into the client container via **exec.sh** in order to launch it.


