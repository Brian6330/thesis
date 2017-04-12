.class public Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
.super Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
.source "NonPositiveDefiniteMatrixException.java"


# static fields
.field private static final serialVersionUID:J = 0x16c82f168f228d4dL


# instance fields
.field private final index:I

.field private final threshold:D


# direct methods
.method public constructor <init>(DID)V
    .locals 5
    .param p1, "wrong"    # D
    .param p3, "index"    # I
    .param p4, "threshold"    # D

    .prologue
    const/4 v4, 0x0

    .line 46
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v1, v2, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    .line 47
    iput p3, p0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;->index:I

    .line 48
    iput-wide p4, p0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;->threshold:D

    .line 50
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v0

    .line 51
    .local v0, "context":Lorg/apache/commons/math3/exception/util/ExceptionContext;
    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POSITIVE_DEFINITE_MATRIX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 52
    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARRAY_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;->index:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;->index:I

    return v0
.end method

.method public getThreshold()D
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;->threshold:D

    return-wide v0
.end method
