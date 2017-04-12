.class public Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;
.super Ljava/lang/Object;
.source "SubHyperplane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitSubHyperplane"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final minus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TU;>;"
        }
    .end annotation
.end field

.field private final plus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TU;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TU;>;"
    .local p1, "plus":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TU;>;"
    .local p2, "minus":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->plus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 112
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->minus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 113
    return-void
.end method


# virtual methods
.method public getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TU;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->minus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    return-object v0
.end method

.method public getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;, "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<TU;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->plus:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    return-object v0
.end method
