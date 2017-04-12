.class Lorg/apache/commons/math3/linear/RealVector$2$UnmodifiableEntry;
.super Lorg/apache/commons/math3/linear/RealVector$Entry;
.source "RealVector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/RealVector$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmodifiableEntry"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/linear/RealVector$2;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/linear/RealVector$2;)V
    .locals 0

    .prologue
    .line 1596
    iput-object p1, p0, Lorg/apache/commons/math3/linear/RealVector$2$UnmodifiableEntry;->this$0:Lorg/apache/commons/math3/linear/RealVector$2;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/RealVector$Entry;-><init>(Lorg/apache/commons/math3/linear/RealVector;)V

    return-void
.end method


# virtual methods
.method public getValue()D
    .locals 2

    .prologue
    .line 1600
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2$UnmodifiableEntry;->this$0:Lorg/apache/commons/math3/linear/RealVector$2;

    iget-object v0, v0, Lorg/apache/commons/math3/linear/RealVector$2;->val$v:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector$2$UnmodifiableEntry;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public setValue(D)V
    .locals 1
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1612
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method
