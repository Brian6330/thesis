.class public Lorg/apache/commons/math3/util/Combinations;
.super Ljava/lang/Object;
.source "Combinations.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/Combinations$1;,
        Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;,
        Lorg/apache/commons/math3/util/Combinations$SingletonIterator;,
        Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;,
        Lorg/apache/commons/math3/util/Combinations$IterationOrder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<[I>;"
    }
.end annotation


# instance fields
.field private final iterationOrder:Lorg/apache/commons/math3/util/Combinations$IterationOrder;

.field private final k:I

.field private final n:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "k"    # I

    .prologue
    .line 76
    sget-object v0, Lorg/apache/commons/math3/util/Combinations$IterationOrder;->LEXICOGRAPHIC:Lorg/apache/commons/math3/util/Combinations$IterationOrder;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/Combinations;-><init>(IILorg/apache/commons/math3/util/Combinations$IterationOrder;)V

    .line 77
    return-void
.end method

.method private constructor <init>(IILorg/apache/commons/math3/util/Combinations$IterationOrder;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "k"    # I
    .param p3, "iterationOrder"    # Lorg/apache/commons/math3/util/Combinations$IterationOrder;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->checkBinomial(II)V

    .line 107
    iput p1, p0, Lorg/apache/commons/math3/util/Combinations;->n:I

    .line 108
    iput p2, p0, Lorg/apache/commons/math3/util/Combinations;->k:I

    .line 109
    iput-object p3, p0, Lorg/apache/commons/math3/util/Combinations;->iterationOrder:Lorg/apache/commons/math3/util/Combinations$IterationOrder;

    .line 110
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;

    iget v1, p0, Lorg/apache/commons/math3/util/Combinations;->n:I

    iget v2, p0, Lorg/apache/commons/math3/util/Combinations;->k:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;-><init>(II)V

    return-object v0
.end method

.method public getK()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lorg/apache/commons/math3/util/Combinations;->k:I

    return v0
.end method

.method public getN()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lorg/apache/commons/math3/util/Combinations;->n:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 132
    iget v0, p0, Lorg/apache/commons/math3/util/Combinations;->k:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/util/Combinations;->k:I

    iget v1, p0, Lorg/apache/commons/math3/util/Combinations;->n:I

    if-ne v0, v1, :cond_1

    .line 134
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/util/Combinations$SingletonIterator;

    iget v1, p0, Lorg/apache/commons/math3/util/Combinations;->k:I

    invoke-static {v1}, Lorg/apache/commons/math3/util/MathArrays;->natural(I)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/Combinations$SingletonIterator;-><init>([I)V

    .line 139
    :goto_0
    return-object v0

    .line 137
    :cond_1
    sget-object v0, Lorg/apache/commons/math3/util/Combinations$1;->$SwitchMap$org$apache$commons$math3$util$Combinations$IterationOrder:[I

    iget-object v1, p0, Lorg/apache/commons/math3/util/Combinations;->iterationOrder:Lorg/apache/commons/math3/util/Combinations$IterationOrder;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Combinations$IterationOrder;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 141
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    .line 139
    :pswitch_0
    new-instance v0, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;

    iget v1, p0, Lorg/apache/commons/math3/util/Combinations;->n:I

    iget v2, p0, Lorg/apache/commons/math3/util/Combinations;->k:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Combinations$LexicographicIterator;-><init>(II)V

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
