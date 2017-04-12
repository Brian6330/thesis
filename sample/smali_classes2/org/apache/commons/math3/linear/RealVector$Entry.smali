.class public Lorg/apache/commons/math3/linear/RealVector$Entry;
.super Ljava/lang/Object;
.source "RealVector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/RealVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Entry"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lorg/apache/commons/math3/linear/RealVector;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 1

    .prologue
    .line 1030
    iput-object p1, p0, Lorg/apache/commons/math3/linear/RealVector$Entry;->this$0:Lorg/apache/commons/math3/linear/RealVector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1031
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/RealVector$Entry;->setIndex(I)V

    .line 1032
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 1058
    iget v0, p0, Lorg/apache/commons/math3/linear/RealVector$Entry;->index:I

    return v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 1040
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$Entry;->this$0:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1067
    iput p1, p0, Lorg/apache/commons/math3/linear/RealVector$Entry;->index:I

    .line 1068
    return-void
.end method

.method public setValue(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 1049
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$Entry;->this$0:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 1050
    return-void
.end method
