.class public Lorg/apache/commons/math3/optim/MaxEval;
.super Ljava/lang/Object;
.source "MaxEval.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# instance fields
.field private final maxEval:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-gtz p1, :cond_0

    .line 36
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 39
    :cond_0
    iput p1, p0, Lorg/apache/commons/math3/optim/MaxEval;->maxEval:I

    .line 40
    return-void
.end method

.method public static unlimited()Lorg/apache/commons/math3/optim/MaxEval;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lorg/apache/commons/math3/optim/MaxEval;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optim/MaxEval;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getMaxEval()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lorg/apache/commons/math3/optim/MaxEval;->maxEval:I

    return v0
.end method
