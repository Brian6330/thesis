.class Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation$1;
.super Ljava/lang/Object;
.source "KendallsCorrelation.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->correlation([D[D)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
        "Ljava/lang/Double;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation$1;->this$0:Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 170
    check-cast p1, Lorg/apache/commons/math3/util/Pair;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/commons/math3/util/Pair;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation$1;->compare(Lorg/apache/commons/math3/util/Pair;Lorg/apache/commons/math3/util/Pair;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/commons/math3/util/Pair;Lorg/apache/commons/math3/util/Pair;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/util/Pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;",
            "Lorg/apache/commons/math3/util/Pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "pair1":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    .local p2, "pair2":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {p2}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    .line 173
    .local v0, "compareFirst":I
    if-eqz v0, :cond_0

    .end local v0    # "compareFirst":I
    :goto_0
    return v0

    .restart local v0    # "compareFirst":I
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {p2}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    goto :goto_0
.end method
