.class Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser$1;
.super Ljava/lang/Object;
.source "GaussianFitter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;->sortObservations([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
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
        "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser$1;->this$0:Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 185
    check-cast p1, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/fitting/GaussianFitter$ParameterGuesser$1;->compare(Lorg/apache/commons/math3/fitting/WeightedObservedPoint;Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/commons/math3/fitting/WeightedObservedPoint;Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)I
    .locals 8
    .param p1, "p1"    # Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .param p2, "p2"    # Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 188
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 192
    goto :goto_0

    .line 194
    :cond_2
    if-nez p2, :cond_3

    move v0, v2

    .line 195
    goto :goto_0

    .line 197
    :cond_3
    invoke-virtual {p1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v4

    invoke-virtual {p2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v6

    cmpg-double v3, v4, v6

    if-gez v3, :cond_4

    move v0, v1

    .line 198
    goto :goto_0

    .line 200
    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v4

    invoke-virtual {p2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-lez v3, :cond_5

    move v0, v2

    .line 201
    goto :goto_0

    .line 203
    :cond_5
    invoke-virtual {p1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v4

    invoke-virtual {p2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v6

    cmpg-double v3, v4, v6

    if-gez v3, :cond_6

    move v0, v1

    .line 204
    goto :goto_0

    .line 206
    :cond_6
    invoke-virtual {p1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v4

    invoke-virtual {p2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-lez v3, :cond_7

    move v0, v2

    .line 207
    goto :goto_0

    .line 209
    :cond_7
    invoke-virtual {p1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v4

    invoke-virtual {p2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v6

    cmpg-double v3, v4, v6

    if-gez v3, :cond_8

    move v0, v1

    .line 210
    goto :goto_0

    .line 212
    :cond_8
    invoke-virtual {p1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v4

    invoke-virtual {p2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v6

    cmpl-double v1, v4, v6

    if-lez v1, :cond_0

    move v0, v2

    .line 213
    goto :goto_0
.end method