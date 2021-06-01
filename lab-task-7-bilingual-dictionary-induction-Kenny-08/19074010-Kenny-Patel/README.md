# Lab Task 7: Bilingual Dictionary Induction from Comparable Corpora



## Introduction

The topic of the task is bilingual lexicon induction from comparable corpora. Its aim is to extract for each given source word, its target translations.
To extract bilingual lexicons from comparable corpora, a well-known word embedding approach that maps source words in a target space has been used.

## Task

Work on one language pair in both directions (English-German and German-English):
1. Using Word2Vec(Skip-gram) embedding and the VecMap library, generate a bilingual dictionary.
2. Using fastText embedding and the VecMap library, again do the same and compare the results with the above implementation.

## Directory Structure

The main folder of this repo contains two Jupiter Notebooks, which holds the entire implementation of the task.

The Corpora, Embeddings and Models are quite huge so attaching the drive link where I have uploaded them all.

**Datasets:** (in the outer folder - lab_task_7(contains 8 files)
[attach link]
- fastText embeddings of English and German
- word2vec (SkipGram) embeddings of English and German
- Train data for English-German and German-English
- Test data for English-German and German-English

**Models:** (generated inside the inner folder - vecmap(contains 8 files)
[attach link]
- Source Mapped Embedding for English-German and German-English (fastText and word2vec)
- Target Mapped Embedding for English-German and German-English (fastText and word2vec)


## Result

**1. Using SkipGram**

| Language Pair | Accuracy (%) | Coverage (%) | 
|:---:|:---:|:---:|
| German-English | 63.90 | 81.30 | 
| English-German | 28.74 | 90.30 | 

**2. Using fastText**

| Language Pair | Accuracy (%) | Coverage (%) | 
|:---:|:---:|:---:|
| German-English | 69.94 | 100.00 | 
| English-German | 75.56 | 94.10 |
