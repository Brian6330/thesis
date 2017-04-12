.class public Lorg/apache/commons/math3/linear/SparseFieldVector;
.super Ljava/lang/Object;
.source "SparseFieldVector.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/FieldVector;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/linear/FieldVector",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6cd1a82275f9f232L


# instance fields
.field private final entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final virtualSize:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/linear/SparseFieldVector;-><init>(Lorg/apache/commons/math3/Field;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;I)V
    .locals 1
    .param p2, "dimension"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 79
    iput p2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    .line 80
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/Field;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;II)V
    .locals 1
    .param p2, "dimension"    # I
    .param p3, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 105
    iput p2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    .line 106
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {v0, p1, p3}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/Field;I)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p2, "values":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 119
    iput-object p1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 120
    array-length v2, p2

    iput v2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    .line 121
    new-instance v2, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {v2, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/Field;)V

    iput-object v2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    .line 122
    const/4 v0, 0x0

    .local v0, "key":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 123
    aget-object v1, p2, v0

    .line 124
    .local v1, "value":Lorg/apache/commons/math3/FieldElement;, "TT;"
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->put(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "value":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/SparseFieldVector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/SparseFieldVector",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iget-object v0, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 135
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    .line 136
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    .line 137
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/linear/SparseFieldVector;I)V
    .locals 2
    .param p2, "resize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/SparseFieldVector",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iget-object v0, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 91
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    .line 92
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    iget-object v1, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    .line 93
    return-void
.end method

.method private checkIndex(I)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 512
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 513
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 515
    :cond_1
    return-void
.end method

.method private checkIndices(II)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    const/4 v5, 0x0

    .line 528
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v0

    .line 529
    .local v0, "dim":I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 530
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 533
    :cond_1
    if-ltz p2, :cond_2

    if-lt p2, v0, :cond_3

    .line 534
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 537
    :cond_3
    if-ge p2, p1, :cond_4

    .line 538
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INITIAL_ROW_AFTER_FINAL_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 541
    :cond_4
    return-void
.end method

.method private getEntries()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 558
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    instance-of v3, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    if-eqz v3, :cond_1

    .line 559
    check-cast p1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    .end local p1    # "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->add(Lorg/apache/commons/math3/linear/SparseFieldVector;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v2

    .line 568
    :cond_0
    return-object v2

    .line 561
    .restart local p1    # "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v1

    .line 562
    .local v1, "n":I
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkVectorDimensions(I)V

    .line 563
    new-instance v2, Lorg/apache/commons/math3/linear/SparseFieldVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/linear/SparseFieldVector;-><init>(Lorg/apache/commons/math3/Field;I)V

    .line 565
    .local v2, "res":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 566
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public add(Lorg/apache/commons/math3/linear/SparseFieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/SparseFieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkVectorDimensions(I)V

    .line 159
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->copy()Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/linear/SparseFieldVector;

    .line 160
    .local v2, "res":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    invoke-direct {p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object v0

    .line 161
    .local v0, "iter":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    .line 163
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v1

    .line 164
    .local v1, "key":I
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    .line 165
    .local v3, "value":Lorg/apache/commons/math3/FieldElement;, "TT;"
    iget-object v4, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->containsKey(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    iget-object v4, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->get(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v2, v1, v4}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    goto :goto_0

    .line 171
    .end local v1    # "key":I
    .end local v3    # "value":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_1
    return-object v2
.end method

.method public append(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 210
    new-instance v0, Lorg/apache/commons/math3/linear/SparseFieldVector;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/SparseFieldVector;-><init>(Lorg/apache/commons/math3/linear/SparseFieldVector;I)V

    .line 211
    .local v0, "res":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    iget v1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/math3/linear/FieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    .line 212
    return-object v0
.end method

.method public append(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    instance-of v3, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    if-eqz v3, :cond_1

    .line 194
    check-cast p1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    .end local p1    # "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->append(Lorg/apache/commons/math3/linear/SparseFieldVector;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v2

    .line 201
    :cond_0
    return-object v2

    .line 196
    .restart local p1    # "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v1

    .line 197
    .local v1, "n":I
    new-instance v2, Lorg/apache/commons/math3/linear/SparseFieldVector;

    invoke-direct {v2, p0, v1}, Lorg/apache/commons/math3/linear/SparseFieldVector;-><init>(Lorg/apache/commons/math3/linear/SparseFieldVector;I)V

    .line 198
    .local v2, "res":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 199
    iget v3, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    add-int/2addr v3, v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/linear/FieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append(Lorg/apache/commons/math3/linear/SparseFieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/SparseFieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    new-instance v1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/math3/linear/SparseFieldVector;-><init>(Lorg/apache/commons/math3/linear/SparseFieldVector;I)V

    .line 183
    .local v1, "res":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    iget-object v2, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object v0

    .line 184
    .local v0, "iter":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    .line 186
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v2

    iget v3, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    goto :goto_0

    .line 188
    :cond_0
    return-object v1
.end method

.method protected checkVectorDimensions(I)V
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 551
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 552
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 554
    :cond_0
    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/FieldVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/linear/SparseFieldVector;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;-><init>(Lorg/apache/commons/math3/linear/SparseFieldVector;)V

    return-object v0
.end method

.method public dotProduct(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/FieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkVectorDimensions(I)V

    .line 223
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    .line 224
    .local v1, "res":Lorg/apache/commons/math3/FieldElement;, "TT;"
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object v0

    .line 225
    .local v0, "iter":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    .line 227
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "res":Lorg/apache/commons/math3/FieldElement;, "TT;"
    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    .restart local v1    # "res":Lorg/apache/commons/math3/FieldElement;, "TT;"
    goto :goto_0

    .line 229
    :cond_0
    return-object v1
.end method

.method public ebeDivide(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkVectorDimensions(I)V

    .line 236
    new-instance v1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    invoke-direct {v1, p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;-><init>(Lorg/apache/commons/math3/linear/SparseFieldVector;)V

    .line 237
    .local v1, "res":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    iget-object v2, v1, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object v0

    .line 238
    .local v0, "iter":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    .line 240
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v4

    invoke-interface {p1, v4}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v1, v3, v2}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    goto :goto_0

    .line 242
    :cond_0
    return-object v1
.end method

.method public ebeMultiply(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkVectorDimensions(I)V

    .line 249
    new-instance v1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    invoke-direct {v1, p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;-><init>(Lorg/apache/commons/math3/linear/SparseFieldVector;)V

    .line 250
    .local v1, "res":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    iget-object v2, v1, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object v0

    .line 251
    .local v0, "iter":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    .line 253
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v4

    invoke-interface {p1, v4}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v1, v3, v2}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    goto :goto_0

    .line 255
    :cond_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 753
    if-ne p0, p1, :cond_1

    .line 791
    :cond_0
    :goto_0
    return v3

    .line 757
    :cond_1
    instance-of v5, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    if-nez v5, :cond_2

    move v3, v4

    .line 758
    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 763
    check-cast v1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    .line 764
    .local v1, "other":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    iget-object v5, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    if-nez v5, :cond_3

    .line 765
    iget-object v5, v1, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    if-eqz v5, :cond_4

    move v3, v4

    .line 766
    goto :goto_0

    .line 768
    :cond_3
    iget-object v5, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v6, v1, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v3, v4

    .line 769
    goto :goto_0

    .line 771
    :cond_4
    iget v5, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    iget v6, v1, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    if-eq v5, v6, :cond_5

    move v3, v4

    .line 772
    goto :goto_0

    .line 775
    :cond_5
    iget-object v5, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v5}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object v0

    .line 776
    .local v0, "iter":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    :cond_6
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 777
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    .line 778
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    .line 779
    .local v2, "test":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    move v3, v4

    .line 780
    goto :goto_0

    .line 783
    .end local v2    # "test":Lorg/apache/commons/math3/FieldElement;, "TT;"
    :cond_7
    invoke-direct {v1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object v0

    .line 784
    :cond_8
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 785
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    .line 786
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    .line 787
    .restart local v2    # "test":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    move v3, v4

    .line 788
    goto :goto_0
.end method

.method public getData()[Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->toArray()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 270
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    return v0
.end method

.method public getEntry(I)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkIndex(I)V

    .line 276
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->get(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/apache/commons/math3/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    return-object v0
.end method

.method public getSubVector(II)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 7
    .param p1, "index"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    if-gez p2, :cond_0

    .line 288
    new-instance v4, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_ELEMENTS_SHOULD_BE_POSITIVE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v4

    .line 290
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkIndex(I)V

    .line 291
    add-int v4, p1, p2

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkIndex(I)V

    .line 292
    new-instance v3, Lorg/apache/commons/math3/linear/SparseFieldVector;

    iget-object v4, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v3, v4, p2}, Lorg/apache/commons/math3/linear/SparseFieldVector;-><init>(Lorg/apache/commons/math3/Field;I)V

    .line 293
    .local v3, "res":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    add-int v0, p1, p2

    .line 294
    .local v0, "end":I
    iget-object v4, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object v1

    .line 295
    .local v1, "iter":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 296
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    .line 297
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v2

    .line 298
    .local v2, "key":I
    if-lt v2, p1, :cond_1

    if-ge v2, v0, :cond_1

    .line 299
    sub-int v4, v2, p1

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    goto :goto_0

    .line 302
    .end local v2    # "key":I
    :cond_2
    return-object v3
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 735
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    const/16 v1, 0x1f

    .line 736
    .local v1, "prime":I
    const/4 v2, 0x1

    .line 737
    .local v2, "result":I
    iget-object v4, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v2, v4, 0x1f

    .line 738
    mul-int/lit8 v4, v2, 0x1f

    iget v5, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    add-int v2, v4, v5

    .line 739
    iget-object v4, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object v0

    .line 740
    .local v0, "iter":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    :goto_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 741
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    .line 742
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 743
    .local v3, "temp":I
    mul-int/lit8 v4, v2, 0x1f

    add-int v2, v4, v3

    .line 744
    goto :goto_1

    .line 737
    .end local v0    # "iter":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    .end local v3    # "temp":I
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_0

    .line 745
    .restart local v0    # "iter":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    :cond_1
    return v2
.end method

.method public mapAdd(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->copy()Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/linear/FieldVector;->mapAddToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v0

    return-object v0
.end method

.method public mapAddToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    if-ge v0, v1, :cond_0

    .line 313
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_0
    return-object p0
.end method

.method public mapDivide(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->copy()Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/linear/FieldVector;->mapDivideToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v0

    return-object v0
.end method

.method public mapDivideToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 327
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    iget-object v1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object v0

    .line 328
    .local v0, "iter":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    .line 330
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v2, v3, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->put(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    goto :goto_0

    .line 332
    :cond_0
    return-object p0
.end method

.method public mapInv()Lorg/apache/commons/math3/linear/FieldVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->copy()Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/FieldVector;->mapInvToSelf()Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v0

    return-object v0
.end method

.method public mapInvToSelf()Lorg/apache/commons/math3/linear/FieldVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    if-ge v0, v1, :cond_0

    .line 343
    iget-object v1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_0
    return-object p0
.end method

.method public mapMultiply(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->copy()Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/linear/FieldVector;->mapMultiplyToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v0

    return-object v0
.end method

.method public mapMultiplyToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    iget-object v1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object v0

    .line 356
    .local v0, "iter":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    .line 358
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v2, v3, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->put(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    goto :goto_0

    .line 360
    :cond_0
    return-object p0
.end method

.method public mapSubtract(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->copy()Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/linear/FieldVector;->mapSubtractToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v0

    return-object v0
.end method

.method public mapSubtractToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "d":Lorg/apache/commons/math3/FieldElement;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->mapAddToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v0

    return-object v0
.end method

.method public outerProduct(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    instance-of v6, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    if-eqz v6, :cond_1

    .line 396
    check-cast p1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    .end local p1    # "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->outerProduct(Lorg/apache/commons/math3/linear/SparseFieldVector;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v3

    .line 409
    :cond_0
    return-object v3

    .line 398
    .restart local p1    # "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v2

    .line 399
    .local v2, "n":I
    new-instance v3, Lorg/apache/commons/math3/linear/SparseFieldMatrix;

    iget-object v6, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget v7, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    invoke-direct {v3, v6, v7, v2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 400
    .local v3, "res":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    iget-object v6, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v6}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object v1

    .line 401
    .local v1, "iter":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 402
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    .line 403
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v4

    .line 404
    .local v4, "row":I
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    .line 405
    .local v5, "value":Lorg/apache/commons/math3/FieldElement;, "Lorg/apache/commons/math3/FieldElement<TT;>;"
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 406
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v3, v4, v0, v6}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public outerProduct(Lorg/apache/commons/math3/linear/SparseFieldVector;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/SparseFieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v2

    .line 380
    .local v2, "n":I
    new-instance v3, Lorg/apache/commons/math3/linear/SparseFieldMatrix;

    iget-object v4, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget v5, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    invoke-direct {v3, v4, v5, v2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 381
    .local v3, "res":Lorg/apache/commons/math3/linear/SparseFieldMatrix;, "Lorg/apache/commons/math3/linear/SparseFieldMatrix<TT;>;"
    iget-object v4, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object v0

    .line 382
    .local v0, "iter":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 383
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    .line 384
    iget-object v4, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v4}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object v1

    .line 385
    .local v1, "iter2":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 386
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    .line 387
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v5

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v6

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v3, v5, v6, v4}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    goto :goto_0

    .line 390
    .end local v1    # "iter2":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    :cond_1
    return-object v3
.end method

.method public projection(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 416
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkVectorDimensions(I)V

    .line 417
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->dotProduct(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    invoke-interface {p1, p1}, Lorg/apache/commons/math3/linear/FieldVector;->dotProduct(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/FieldVector;->mapMultiply(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v0

    return-object v0
.end method

.method public set(Lorg/apache/commons/math3/FieldElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "value":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 425
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    if-ge v0, v1, :cond_0

    .line 426
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_0
    return-void
.end method

.method public setEntry(ILorg/apache/commons/math3/FieldElement;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p2, "value":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 435
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkIndex(I)V

    .line 436
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->put(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    .line 437
    return-void
.end method

.method public setSubVector(ILorg/apache/commons/math3/linear/FieldVector;)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p2, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkIndex(I)V

    .line 443
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v2

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkIndex(I)V

    .line 444
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v1

    .line 445
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 446
    add-int v2, v0, p1

    invoke-interface {p2, v0}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    :cond_0
    return-void
.end method

.method public subtract(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 477
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    instance-of v3, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    if-eqz v3, :cond_1

    .line 478
    check-cast p1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    .end local p1    # "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->subtract(Lorg/apache/commons/math3/linear/SparseFieldVector;)Lorg/apache/commons/math3/linear/SparseFieldVector;

    move-result-object v2

    .line 490
    :cond_0
    return-object v2

    .line 480
    .restart local p1    # "v":Lorg/apache/commons/math3/linear/FieldVector;, "Lorg/apache/commons/math3/linear/FieldVector<TT;>;"
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v1

    .line 481
    .local v1, "n":I
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkVectorDimensions(I)V

    .line 482
    new-instance v2, Lorg/apache/commons/math3/linear/SparseFieldVector;

    invoke-direct {v2, p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;-><init>(Lorg/apache/commons/math3/linear/SparseFieldVector;)V

    .line 483
    .local v2, "res":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 484
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 485
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->get(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    .line 483
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    goto :goto_1
.end method

.method public subtract(Lorg/apache/commons/math3/linear/SparseFieldVector;)Lorg/apache/commons/math3/linear/SparseFieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/SparseFieldVector",
            "<TT;>;)",
            "Lorg/apache/commons/math3/linear/SparseFieldVector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 459
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "v":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkVectorDimensions(I)V

    .line 460
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->copy()Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/linear/SparseFieldVector;

    .line 461
    .local v2, "res":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    invoke-direct {p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object v0

    .line 462
    .local v0, "iter":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 463
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    .line 464
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v1

    .line 465
    .local v1, "key":I
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 466
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->get(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    goto :goto_0

    .line 468
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    goto :goto_0

    .line 471
    .end local v1    # "key":I
    :cond_1
    return-object v2
.end method

.method public toArray()[Lorg/apache/commons/math3/FieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 496
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget v3, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    .line 497
    .local v1, "res":[Lorg/apache/commons/math3/FieldElement;, "[TT;"
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object v0

    .line 498
    .local v0, "iter":Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;, "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<TT;>.Iterator;"
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    .line 500
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0

    .line 502
    :cond_0
    return-object v1
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 663
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v0

    .line 664
    .local v0, "dim":I
    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p1, v0, v2, v3}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->start(III)V

    .line 665
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 666
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->visit(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    .line 665
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 668
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    return-object v2
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;II)Lorg/apache/commons/math3/FieldElement;
    .locals 2
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor",
            "<TT;>;II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 687
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<TT;>;"
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkIndices(II)V

    .line 688
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v1

    invoke-interface {p1, v1, p2, p3}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->start(III)V

    .line 689
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-gt v0, p3, :cond_0

    .line 690
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->visit(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    return-object v1
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 583
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v0

    .line 584
    .local v0, "dim":I
    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p1, v0, v2, v3}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->start(III)V

    .line 585
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 586
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->visit(ILorg/apache/commons/math3/FieldElement;)V

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 588
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    return-object v2
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;II)Lorg/apache/commons/math3/FieldElement;
    .locals 2
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor",
            "<TT;>;II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 607
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<TT;>;"
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkIndices(II)V

    .line 608
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v1

    invoke-interface {p1, v1, p2, p3}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->start(III)V

    .line 609
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-gt v0, p3, :cond_0

    .line 610
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->visit(ILorg/apache/commons/math3/FieldElement;)V

    .line 609
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 612
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    return-object v1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 708
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;II)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor",
            "<TT;>;II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 729
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 628
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;II)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor",
            "<TT;>;II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 649
    .local p0, "this":Lorg/apache/commons/math3/linear/SparseFieldVector;, "Lorg/apache/commons/math3/linear/SparseFieldVector<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;, "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method
