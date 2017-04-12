.class Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;
.super Ljava/lang/Object;
.source "CMAESOptimizer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;",
        ">;"
    }
.end annotation


# instance fields
.field private final index:I

.field private final value:D


# direct methods
.method constructor <init>(DI)V
    .locals 1
    .param p1, "value"    # D
    .param p3, "index"    # I

    .prologue
    .line 967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;->value:D

    .line 969
    iput p3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;->index:I

    .line 970
    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;

    .prologue
    .line 957
    iget v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;->index:I

    return v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 957
    check-cast p1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;->compareTo(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;)I
    .locals 4
    .param p1, "o"    # Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;

    .prologue
    .line 974
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;->value:D

    iget-wide v2, p1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;->value:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 981
    if-ne p0, p1, :cond_1

    .line 989
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 985
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;

    if-eqz v2, :cond_2

    .line 986
    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;->value:D

    check-cast p1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;

    .end local p1    # "other":Ljava/lang/Object;
    iget-wide v4, p1, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;->value:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_2
    move v0, v1

    .line 989
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 995
    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$DoubleIndex;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 996
    .local v0, "bits":J
    const-wide/32 v2, 0x15f34e

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    xor-long/2addr v2, v4

    xor-long/2addr v2, v0

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    long-to-int v2, v2

    return v2
.end method
