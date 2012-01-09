hastable\_dump()
================

A Zend Extension to dump HashTable data structure on Zend Engine.

Synopsis
--------

```php
hashtable_dump(array(1, 2, 3, 4, 5, 6, 7, 8));
/*
nTableSize:       8
nTableMask:       7
nNumOfElements:   8
nNextFreeElement: 8
pListHead:        0
pListTail:        7
**arBuckets:
  0 => [0, NULL]
  1 => [1, NULL]
  2 => [2, NULL]
  3 => [3, NULL]
  4 => [4, NULL]
  5 => [5, NULL]
  6 => [6, NULL]
  7 => [7, NULL]
*/
```

Author
------

Yuya Takeyama
