.class public Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
.super Ljava/lang/Object;
.source "EnclosingBall.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        "P::",
        "Lorg/apache/commons/math3/geometry/Point",
        "<TS;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133505eL


# instance fields
.field private final center:Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private final radius:D

.field private final support:[Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TP;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V
    .locals 2
    .param p2, "radius"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;D[TP;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<TS;TP;>;"
    .local p1, "center":Lorg/apache/commons/math3/geometry/Point;, "TP;"
    .local p4, "support":[Lorg/apache/commons/math3/geometry/Point;, "[TP;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->center:Lorg/apache/commons/math3/geometry/Point;

    .line 53
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->radius:D

    .line 54
    invoke-virtual {p4}, [Lorg/apache/commons/math3/geometry/Point;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/geometry/Point;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->support:[Lorg/apache/commons/math3/geometry/Point;

    .line 55
    return-void
.end method


# virtual methods
.method public contains(Lorg/apache/commons/math3/geometry/Point;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)Z"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<TS;TP;>;"
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "TP;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->center:Lorg/apache/commons/math3/geometry/Point;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/Point;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->radius:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lorg/apache/commons/math3/geometry/Point;D)Z
    .locals 4
    .param p2, "margin"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;D)Z"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<TS;TP;>;"
    .local p1, "point":Lorg/apache/commons/math3/geometry/Point;, "TP;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->center:Lorg/apache/commons/math3/geometry/Point;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/Point;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->radius:D

    add-double/2addr v2, p2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCenter()Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<TS;TP;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->center:Lorg/apache/commons/math3/geometry/Point;

    return-object v0
.end method

.method public getRadius()D
    .locals 2

    .prologue
    .line 68
    .local p0, "this":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<TS;TP;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->radius:D

    return-wide v0
.end method

.method public getSupport()[Lorg/apache/commons/math3/geometry/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TP;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<TS;TP;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->support:[Lorg/apache/commons/math3/geometry/Point;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/geometry/Point;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/geometry/Point;

    return-object v0
.end method

.method public getSupportSize()I
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;, "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<TS;TP;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->support:[Lorg/apache/commons/math3/geometry/Point;

    array-length v0, v0

    return v0
.end method
