.class Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;
.super Ljava/lang/Object;
.source "Combinations.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/Combinations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LexicographicComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[I>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1332c5aL


# instance fields
.field private final k:I

.field private final n:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "k"    # I

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput p1, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->n:I

    .line 342
    iput p2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->k:I

    .line 343
    return-void
.end method

.method private lexNorm([I)J
    .locals 8
    .param p1, "c"    # [I

    .prologue
    .line 393
    const-wide/16 v2, 0x0

    .line 394
    .local v2, "ret":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 395
    aget v0, p1, v1

    .line 396
    .local v0, "digit":I
    if-ltz v0, :cond_0

    iget v4, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->n:I

    if-lt v0, v4, :cond_1

    .line 398
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->n:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v4

    .line 401
    :cond_1
    aget v4, p1, v1

    iget v5, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->n:I

    invoke-static {v5, v1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(II)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    .end local v0    # "digit":I
    :cond_2
    return-wide v2
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 326
    check-cast p1, [I

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [I

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->compare([I[I)I

    move-result v0

    return v0
.end method

.method public compare([I[I)I
    .locals 9
    .param p1, "c1"    # [I
    .param p2, "c2"    # [I

    .prologue
    .line 355
    array-length v6, p1

    iget v7, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->k:I

    if-eq v6, v7, :cond_0

    .line 356
    new-instance v6, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v7, p1

    iget v8, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->k:I

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v6

    .line 358
    :cond_0
    array-length v6, p2

    iget v7, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->k:I

    if-eq v6, v7, :cond_1

    .line 359
    new-instance v6, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v7, p2

    iget v8, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->k:I

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v6

    .line 363
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([I)[I

    move-result-object v0

    .line 364
    .local v0, "c1s":[I
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 365
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([I)[I

    move-result-object v1

    .line 366
    .local v1, "c2s":[I
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 368
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->lexNorm([I)J

    move-result-wide v2

    .line 369
    .local v2, "v1":J
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->lexNorm([I)J

    move-result-wide v4

    .line 371
    .local v4, "v2":J
    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    .line 372
    const/4 v6, -0x1

    .line 376
    :goto_0
    return v6

    .line 373
    :cond_2
    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    .line 374
    const/4 v6, 0x1

    goto :goto_0

    .line 376
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method
