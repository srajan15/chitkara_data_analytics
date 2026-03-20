# Complete NumPy Course Syllabus (Beginner → Advanced)

## Module 1 — Introduction to NumPy

- What is NumPy
- Why NumPy is faster than Python lists
- History of NumPy
- Installing NumPy
- Importing NumPy
- NumPy vs Python List
- Applications of NumPy in
  - Data Science
  - Machine Learning
  - Deep Learning
  - Image Processing
  - Scientific Computing

Example

```python
import numpy as np
a = np.array([1,2,3,4])
print(a)
```

---

# Module 2 — NumPy Array Basics

- What is ndarray
- Creating arrays
- Array attributes
  - shape
  - size
  - ndim
  - dtype
  - itemsize

- Indexing
- Slicing

Functions

```
np.array()
np.zeros()
np.ones()
np.empty()
np.arange()
np.linspace()
```

Example

```python
a = np.arange(1,10)
print(a.shape)
print(a.ndim)
```

---

# Module 3 — Data Types in NumPy

- NumPy Data Types
- Difference between Python dtype vs NumPy dtype
- Common dtypes
  - int32
  - int64
  - float32
  - float64
  - bool
  - complex

- Type conversion

Example

```python
a = np.array([1,2,3], dtype="float32")
```

---

# Module 4 — Array Operations

- Arithmetic operations
- Broadcasting
- Element-wise operations
- Mathematical functions

Functions

```
np.add()
np.subtract()
np.multiply()
np.divide()
np.power()
np.sqrt()
np.exp()
np.log()
```

Example

```python
a = np.array([1,2,3])
b = np.array([4,5,6])

print(a+b)
```

---

# Module 5 — Indexing and Slicing

- 1D array indexing
- 2D array indexing
- 3D array indexing
- Boolean indexing
- Fancy indexing

Example

```python
a = np.array([[1,2,3],[4,5,6]])
print(a[0,1])
```

---

# Module 6 — Reshaping Arrays

- reshape()
- flatten()
- ravel()
- transpose
- resize
- squeeze
- expand_dims

Example

```python
a = np.arange(6)
b = a.reshape(2,3)
```

---

# Module 7 — Array Manipulation

Joining arrays

- concatenate
- stack
- hstack
- vstack
- dstack

Splitting arrays

- split
- hsplit
- vsplit
- dsplit

Example

```python
np.concatenate((a,b))
```

---

# Module 8 — Broadcasting

- What is broadcasting
- Broadcasting rules
- Broadcasting in different dimensions

Example

```python
a = np.array([1,2,3])
b = 5

print(a+b)
```

---

# Module 9 — Mathematical Functions

Aggregation functions

- sum
- mean
- median
- std
- var
- min
- max
- argmax
- argmin

Example

```python
a = np.array([10,20,30])
print(np.mean(a))
```

---

# Module 10 — Random Module

Random number generation

Functions

```
np.random.rand()
np.random.randn()
np.random.randint()
np.random.choice()
np.random.shuffle()
np.random.seed()
```

Example

```python
np.random.randint(1,100,5)
```

---

# Module 11 — Linear Algebra

Important for **Machine Learning**

Functions

```
np.dot()
np.matmul()
np.linalg.inv()
np.linalg.det()
np.linalg.eig()
np.linalg.solve()
```

Example

```python
a = np.array([[1,2],[3,4]])
print(np.linalg.det(a))
```

---

# Module 12 — Statistical Operations

- Mean
- Median
- Standard deviation
- Variance
- Correlation
- Percentiles

Example

```python
np.percentile(a,50)
```

---

# Module 13 — Sorting and Searching

Sorting

```
np.sort()
np.argsort()
```

Searching

```
np.where()
np.argmax()
np.argmin()
np.searchsorted()
```

Example

```python
np.where(a>10)
```

---

# Module 14 — File Handling in NumPy

Saving arrays

```
np.save()
np.load()
np.savetxt()
np.loadtxt()
```

Example

```python
np.save("data.npy",a)
```

---

# Module 15 — Memory Optimization

- Memory layout
- Views vs Copies
- Strides
- Contiguous arrays

Important for **large datasets**

Example

```python
a = np.arange(10)
b = a.view()
```

---

# Module 16 — Advanced Indexing

- Boolean masks
- Conditional filtering
- Fancy indexing with arrays
- Multi-dimensional indexing

Example

```python
a[a>5]
```

---

# Module 17 — Vectorization

- What is vectorization
- Why vectorization is faster
- Loop vs vectorization

Example

Python loop

```python
for i in range(len(a)):
    a[i] = a[i]*2
```

Vectorized

```python
a = a*2
```

---

# Module 18 — Performance Optimization

- NumPy vs Python speed
- Broadcasting optimization
- Memory efficient operations
- Avoiding loops

---

# Module 19 — NumPy with Pandas

- Converting NumPy → Pandas
- Pandas → NumPy

Example

```python
df.values
np.array(df)
```

---

# Module 20 — NumPy for Machine Learning

- Vector operations
- Matrix multiplication
- Gradient calculations
- Feature scaling
- Normalization

Example

```python
X = np.array([[1,2],[3,4]])
w = np.array([0.5,1])

y = np.dot(X,w)
```

---

# Module 21 — NumPy for Image Processing

- Images as arrays
- Pixel manipulation
- Image transformations

Example

```python
image[:,:,0] = 0
```

---

# Module 22 — NumPy Internals (Advanced)

- How NumPy stores data
- C implementation
- Memory blocks
- Strides
- Buffer protocol

---

# Module 23 — Real World Projects

Projects

1. **Data Analysis with NumPy**
2. **Image Processing with NumPy**
3. **Building Linear Regression from Scratch**
4. **Matrix Calculator**
5. **Stock Data Analysis**
6. **Neural Network Forward Propagation**

---

# Module 24 — Interview Preparation

Common Interview Questions

- Why NumPy is faster than Python list?
- What is broadcasting?
- Difference between reshape and resize
- ravel vs flatten
- view vs copy
- vectorization
- memory layout
- fancy indexing
