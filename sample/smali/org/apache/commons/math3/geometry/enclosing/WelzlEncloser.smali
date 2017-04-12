.class public Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;
.super Ljava/lang/Object;
.source "WelzlEncloser.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/enclosing/Encloser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        "P::",
        "Lorg/apache/commons/math3/geometry/Point",
        "<TS;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/enclosing/Encloser",
        "<TS;TP;>;"
    }
.end annotation


# instance fields
.field private final generator:Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator",
            "<TS;TP;>;"
        }
    .end annotation
.end field

.field private final tolerance:D


# direct methods
.method public constructor <init>(DLorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;)V
    .locals 1
    .param p1, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator",
            "<TS;TP;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;, "Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser<TS;TP;>;"
    .local p3, "generator":Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;, "Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator<TS;TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->tolerance:D

    .line 57
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->generator:Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;

    .line 58
    return-void
.end method

.method private moveToFrontBall(Ljava/util/List;ILjava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
    .locals 6
    .param p2, "nbExtreme"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TP;>;I",
            "Ljava/util/List",
            "<TP;>;)",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall",
            "<TS;TP;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;, "Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser<TS;TP;>;"
    .local p1, "extreme":Ljava/util/List;, "Ljava/util/List<TP;>;"
    .local p3, "support":Ljava/util/List;, "Ljava/util/List<TP;>;"
    iget-object v4, p0, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->generator:Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;

    invoke-interface {v4, p3}, Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;->ballOnSupport(Ljava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object v0

    .line 130
    .local v0, "ball":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<TS;TP;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getSupportSize()I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getCenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/geometry/Point;->getSpace()Lorg/apache/commons/math3/geometry/Space;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/geometry/Space;->getDimension()I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 132
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 133
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/Point;

    .line 134
    .local v3, "pi":Lorg/apache/commons/math3/geometry/Point;, "TP;"
    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->tolerance:D

    invoke-virtual {v0, v3, v4, v5}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->contains(Lorg/apache/commons/math3/geometry/Point;D)Z

    move-result v4

    if-nez v4, :cond_1

    .line 138
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-direct {p0, p1, v1, p3}, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->moveToFrontBall(Ljava/util/List;ILjava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object v0

    .line 140
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 144
    move v2, v1

    .local v2, "j":I
    :goto_1
    if-lez v2, :cond_0

    .line 145
    add-int/lit8 v4, v2, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 144
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 147
    :cond_0
    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v1    # "i":I
    .end local v3    # "pi":Lorg/apache/commons/math3/geometry/Point;, "TP;"
    :cond_2
    return-object v0
.end method

.method private pivotingBall(Ljava/lang/Iterable;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TP;>;)",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall",
            "<TS;TP;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;, "Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser<TS;TP;>;"
    .local p1, "points":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TP;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/Point;

    .line 80
    .local v3, "first":Lorg/apache/commons/math3/geometry/Point;, "TP;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v3}, Lorg/apache/commons/math3/geometry/Point;->getSpace()Lorg/apache/commons/math3/geometry/Space;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/geometry/Space;->getDimension()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .local v1, "extreme":Ljava/util/List;, "Ljava/util/List<TP;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Lorg/apache/commons/math3/geometry/Point;->getSpace()Lorg/apache/commons/math3/geometry/Space;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/geometry/Space;->getDimension()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .local v5, "support":Ljava/util/List;, "Ljava/util/List<TP;>;"
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {p0, v1, v6, v5}, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->moveToFrontBall(Ljava/util/List;ILjava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object v0

    .line 90
    .local v0, "ball":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<TS;TP;>;"
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->selectFarthest(Ljava/lang/Iterable;Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;)Lorg/apache/commons/math3/geometry/Point;

    move-result-object v2

    .line 92
    .local v2, "farthest":Lorg/apache/commons/math3/geometry/Point;, "TP;"
    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->tolerance:D

    invoke-virtual {v0, v2, v6, v7}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->contains(Lorg/apache/commons/math3/geometry/Point;D)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 94
    return-object v0

    .line 98
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 99
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    move-object v4, v0

    .line 101
    .local v4, "savedBall":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<TS;TP;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {p0, v1, v6, v5}, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->moveToFrontBall(Ljava/util/List;ILjava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getRadius()D

    move-result-wide v6

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getRadius()D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 104
    new-instance v6, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v6}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v6

    .line 109
    :cond_1
    const/4 v6, 0x0

    invoke-interface {v1, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 112
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getSupportSize()I

    move-result v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v1, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public enclose(Ljava/lang/Iterable;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TP;>;)",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall",
            "<TS;TP;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;, "Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser<TS;TP;>;"
    .local p1, "points":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TP;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->generator:Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;->ballOnSupport(Ljava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->pivotingBall(Ljava/lang/Iterable;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object v0

    goto :goto_0
.end method

.method public selectFarthest(Ljava/lang/Iterable;Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;)Lorg/apache/commons/math3/geometry/Point;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TP;>;",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall",
            "<TS;TP;>;)TP;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;, "Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser<TS;TP;>;"
    .local p1, "points":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TP;>;"
    .local p2, "ball":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<TS;TP;>;"
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getCenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v0

    .line 166
    .local v0, "center":Lorg/apache/commons/math3/geometry/Point;, "TP;"
    const/4 v1, 0x0

    .line 167
    .local v1, "farthest":Lorg/apache/commons/math3/geometry/Point;, "TP;"
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 169
    .local v4, "dMax":D
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/Point;

    .line 170
    .local v7, "point":Lorg/apache/commons/math3/geometry/Point;, "TP;"
    invoke-interface {v7, v0}, Lorg/apache/commons/math3/geometry/Point;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v2

    .line 171
    .local v2, "d":D
    cmpl-double v8, v2, v4

    if-lez v8, :cond_0

    .line 172
    move-object v1, v7

    .line 173
    move-wide v4, v2

    goto :goto_0

    .line 177
    .end local v2    # "d":D
    .end local v7    # "point":Lorg/apache/commons/math3/geometry/Point;, "TP;"
    :cond_1
    return-object v1
.end method
