.class public Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapEntry;
.super Lorg/apache/commons/math3/linear/RealVector$Entry;
.source "OpenMapRealVector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/OpenMapRealVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OpenMapEntry"
.end annotation


# instance fields
.field private final iter:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

.field final synthetic this$0:Lorg/apache/commons/math3/linear/OpenMapRealVector;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;)V
    .locals 0
    .param p2, "iter"    # Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    .prologue
    .line 775
    iput-object p1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapEntry;->this$0:Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/RealVector$Entry;-><init>(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 776
    iput-object p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapEntry;->iter:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    .line 777
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapEntry;->iter:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v0

    return v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapEntry;->iter:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v0

    return-wide v0
.end method

.method public setValue(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 788
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapEntry;->this$0:Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-static {v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->access$000(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapEntry;->iter:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    .line 789
    return-void
.end method
