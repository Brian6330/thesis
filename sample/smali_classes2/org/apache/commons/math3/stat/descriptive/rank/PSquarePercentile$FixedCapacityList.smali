.class Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$FixedCapacityList;
.super Ljava/util/ArrayList;
.source "PSquarePercentile.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedCapacityList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1fb23a5193bdf8a7L


# instance fields
.field private final capacity:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "fixedCapacity"    # I

    .prologue
    .line 903
    .local p0, "this":Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$FixedCapacityList;, "Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$FixedCapacityList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 904
    iput p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$FixedCapacityList;->capacity:I

    .line 905
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 916
    .local p0, "this":Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$FixedCapacityList;, "Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$FixedCapacityList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$FixedCapacityList;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$FixedCapacityList;->capacity:I

    if-ge v0, v1, :cond_0

    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$FixedCapacityList;, "Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$FixedCapacityList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v1, 0x0

    .line 929
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$FixedCapacityList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$FixedCapacityList;->capacity:I

    if-gt v2, v3, :cond_1

    const/4 v0, 0x1

    .line 932
    .local v0, "isCollectionLess":Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v1

    :cond_0
    return v1

    .end local v0    # "isCollectionLess":Z
    :cond_1
    move v0, v1

    .line 929
    goto :goto_0
.end method
