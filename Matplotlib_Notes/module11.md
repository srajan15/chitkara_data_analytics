# Module 11: Real-Time Visualization (Matplotlib)

**Goal:** Learn how to create **dynamic charts that update automatically with new data**.

This module is **very useful for your weather visualization project**, where you continuously receive **live temperature, humidity, and wind speed data** and update the graph in real time.

---

# 1. Updating Plots in Real Time

## 1️⃣ Simple Explanation

Normally, Matplotlib plots are **static** (they show one fixed graph).

But sometimes we want the graph to **update continuously as new data arrives**.

Example:

- Temperature updates every minute
- Stock prices change every second
- Sensor data streams continuously

Real-time plotting **updates the graph automatically without restarting the program**.

---

## 2️⃣ Example

Weather monitoring system:

Every 5 seconds:

```
Temperature = 28°C
Temperature = 29°C
Temperature = 30°C
```

The graph keeps updating as **new data points are added**.

---

## 3️⃣ Use Cases

Real-time visualization is used in:

- Weather monitoring systems
- Stock market dashboards
- IoT sensor data monitoring
- Network traffic monitoring
- Industrial machine monitoring

---

## 4️⃣ Step-by-Step Understanding

Step 1
Create a plot.

Step 2
Add new data continuously.

Step 3
Clear the previous graph.

Step 4
Redraw the updated graph.

---

## 5️⃣ Code Example

```python
import matplotlib.pyplot as plt
import time
import random

x = []
y = []

plt.ion()

for i in range(10):
    x.append(i)
    y.append(random.randint(20,30))

    plt.clf()
    plt.plot(x,y)

    plt.title("Real-Time Temperature")
    plt.xlabel("Time")
    plt.ylabel("Temperature")

    plt.pause(1)

plt.show()
```

### Code Explanation

`plt.ion()` → enables interactive plotting
`plt.clf()` → clears the previous graph
`plt.pause()` → updates the graph every second

---

# 2. Animation

## 1️⃣ Simple Explanation

Matplotlib provides a special module called:

```
matplotlib.animation
```

This allows graphs to **animate automatically** as data changes.

Instead of manually updating the graph, Matplotlib **refreshes it continuously**.

---

## 2️⃣ Example

A **live temperature graph** that updates every second.

---

## 3️⃣ Use Cases

Animation is used in:

- Real-time dashboards
- Scientific simulations
- Financial market visualization
- Weather tracking systems

---

## 4️⃣ Code Example

```python
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation
import random

x = []
y = []

fig, ax = plt.subplots()

def update(frame):
    x.append(frame)
    y.append(random.randint(20,30))

    ax.clear()
    ax.plot(x,y)

    ax.set_title("Animated Temperature Graph")

ani = FuncAnimation(fig, update, interval=1000)

plt.show()
```

---

## Explanation

`FuncAnimation()` → continuously updates the plot
`interval=1000` → updates every 1000 ms (1 second)

---

# 3. Live Data Visualization

## 1️⃣ Simple Explanation

Live data visualization means plotting **data coming from external sources**.

Example sources:

- Weather APIs
- IoT sensors
- Stock market APIs
- Database updates

The graph **updates automatically whenever new data arrives**.

---

## 2️⃣ Example

Weather API provides:

```
Temperature = 28
Humidity = 60
Wind Speed = 12
```

The dashboard graph updates **every minute**.

---

## 3️⃣ Use Cases

Live data visualization is used in:

- Weather monitoring dashboards
- Smart city sensors
- Traffic monitoring
- Server performance monitoring

---

## 4️⃣ Example Code (Simulated API)

```python
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation
import random

x = []
temperature = []

fig, ax = plt.subplots()

def update(frame):
    x.append(frame)
    temperature.append(random.randint(25,35))

    ax.clear()
    ax.plot(x, temperature)

    ax.set_title("Live Temperature Data")

ani = FuncAnimation(fig, update, interval=2000)

plt.show()
```

---

# 4. Streaming Data Plots

## 1️⃣ Simple Explanation

Streaming data means **continuous flow of data**.

Example:

- IoT sensors sending data every second
- Stock market price streaming
- Website traffic updates

Streaming plots **display data as it arrives**.

---

## 2️⃣ Example

Temperature sensor sends data like:

```
Time → Temperature
1 → 28
2 → 29
3 → 30
4 → 31
```

The graph keeps growing as new data streams.

---

## 3️⃣ Code Example

```python
import matplotlib.pyplot as plt
import random
import time

x = []
y = []

plt.ion()

for i in range(20):
    x.append(i)
    y.append(random.randint(20,35))

    plt.cla()
    plt.plot(x,y)

    plt.title("Streaming Temperature Data")

    plt.pause(1)

plt.show()
```

---

## 4️⃣ Use Cases

Streaming plots are used in:

- Real-time weather monitoring
- Financial trading platforms
- IoT device dashboards
- Network traffic monitoring

---

# Key Points to Remember

- Real-time visualization allows **graphs to update automatically**.
- `plt.ion()` enables **interactive plotting**.
- `plt.pause()` refreshes the graph.
- `FuncAnimation()` is used for **animated plots**.
- Streaming plots display **continuous incoming data**.

---
