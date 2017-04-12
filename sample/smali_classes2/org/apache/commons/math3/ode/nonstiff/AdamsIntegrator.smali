.class public abstract Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;
.super Lorg/apache/commons/math3/ode/MultistepIntegrator;
.source "AdamsIntegrator.java"


# instance fields
.field private final transformer:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIDDDD)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nSteps"    # I
    .param p3, "order"    # I
    .param p4, "minStep"    # D
    .param p6, "maxStep"    # D
    .param p8, "scalAbsoluteTolerance"    # D
    .param p10, "scalRelativeTolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct/range {p0 .. p11}, Lorg/apache/commons/math3/ode/MultistepIntegrator;-><init>(Ljava/lang/String;IIDDDD)V

    .line 60
    invoke-static {p2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->getInstance(I)Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;->transformer:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIDD[D[D)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nSteps"    # I
    .param p3, "order"    # I
    .param p4, "minStep"    # D
    .param p6, "maxStep"    # D
    .param p8, "vecAbsoluteTolerance"    # [D
    .param p9, "vecRelativeTolerance"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct/range {p0 .. p9}, Lorg/apache/commons/math3/ode/MultistepIntegrator;-><init>(Ljava/lang/String;IIDD[D[D)V

    .line 85
    invoke-static {p2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->getInstance(I)Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;->transformer:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    .line 86
    return-void
.end method


# virtual methods
.method protected initializeHighOrderDerivatives(D[D[[D[[D)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 7
    .param p1, "h"    # D
    .param p3, "t"    # [D
    .param p4, "y"    # [[D
    .param p5, "yDot"    # [[D

    .prologue
    .line 99
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;->transformer:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->initializeHighOrderDerivatives(D[D[[D[[D)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public abstract integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation
.end method

.method public updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 1
    .param p1, "highOrder"    # Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;->transformer:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V
    .locals 1
    .param p1, "start"    # [D
    .param p2, "end"    # [D
    .param p3, "highOrder"    # Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;->transformer:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 134
    return-void
.end method
