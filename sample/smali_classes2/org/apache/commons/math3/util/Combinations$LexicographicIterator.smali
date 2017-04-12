.class Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;
.super Ljava/lang/Object;
.source "Combinations.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/Combinations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LexicographicIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<[I>;"
    }
.end annotation


# instance fields
.field private final c:[I

.field private j:I

.field private final k:I

.field private more:Z


# direct methods
.method public constructor <init>(II)V
    .locals 4
    .param p1, "n"    # I
    .param p2, "k"    # I

    .prologue
    const/4 v3, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->more:Z

    .line 207
    iput p2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->k:I

    .line 208
    add-int/lit8 v1, p2, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    .line 209
    if-eqz p2, :cond_0

    if-lt p2, p1, :cond_1

    .line 210
    :cond_0
    iput-boolean v3, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->more:Z

    .line 221
    :goto_0
    return-void

    .line 214
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-gt v0, p2, :cond_2

    .line 215
    iget-object v1, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    add-int/lit8 v2, v0, -0x1

    aput v2, v1, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 218
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    add-int/lit8 v2, p2, 0x1

    aput p1, v1, v2

    .line 219
    iget-object v1, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    add-int/lit8 v2, p2, 0x2

    aput v3, v1, v2

    .line 220
    iput p2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->more:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->next()[I

    move-result-object v0

    return-object v0
.end method

.method public next()[I
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 234
    iget-boolean v3, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->more:Z

    if-nez v3, :cond_0

    .line 235
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 238
    :cond_0
    iget v3, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->k:I

    new-array v0, v3, [I

    .line 239
    .local v0, "ret":[I
    iget-object v3, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    iget v4, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->k:I

    invoke-static {v3, v5, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    const/4 v2, 0x0

    .line 244
    .local v2, "x":I
    iget v3, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    if-lez v3, :cond_1

    .line 245
    iget v2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    .line 246
    iget-object v3, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    iget v4, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    aput v2, v3, v4

    .line 247
    iget v3, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    .line 276
    :goto_0
    return-object v0

    .line 251
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    aget v3, v3, v5

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    aget v4, v4, v7

    if-ge v3, v4, :cond_2

    .line 252
    iget-object v3, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    aget v4, v3, v5

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v5

    goto :goto_0

    .line 255
    :cond_2
    iput v7, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    .line 258
    const/4 v1, 0x0

    .line 259
    .local v1, "stepDone":Z
    :goto_1
    if-nez v1, :cond_4

    .line 260
    iget-object v3, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    iget v4, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    add-int/lit8 v5, v5, -0x2

    aput v5, v3, v4

    .line 261
    iget-object v3, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    iget v4, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    aget v3, v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 262
    iget-object v3, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    iget v4, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    if-ne v2, v3, :cond_3

    .line 263
    iget v3, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    goto :goto_1

    .line 265
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 269
    :cond_4
    iget v3, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    iget v4, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->k:I

    if-le v3, v4, :cond_5

    .line 270
    iput-boolean v6, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->more:Z

    goto :goto_0

    .line 274
    :cond_5
    iget-object v3, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->c:[I

    iget v4, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    aput v2, v3, v4

    .line 275
    iget v3, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;->j:I

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 283
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
