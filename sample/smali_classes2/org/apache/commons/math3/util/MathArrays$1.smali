.class final Lorg/apache/commons/math3/util/MathArrays$1;
.super Ljava/lang/Object;
.source "MathArrays.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;[[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/commons/math3/util/Pair",
        "<",
        "Ljava/lang/Double;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 729
    check-cast p1, Lorg/apache/commons/math3/util/Pair;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/commons/math3/util/Pair;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/MathArrays$1;->compare(Lorg/apache/commons/math3/util/Pair;Lorg/apache/commons/math3/util/Pair;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/commons/math3/util/Pair;Lorg/apache/commons/math3/util/Pair;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/util/Pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/commons/math3/util/Pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 732
    .local p1, "o1":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Integer;>;"
    .local p2, "o2":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {p2}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method
