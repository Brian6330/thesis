.class Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;
.super Ljava/lang/Object;
.source "NonLinearConjugateGradientOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LineSearchFunction"
.end annotation


# instance fields
.field private final searchDirection:[D

.field final synthetic this$0:Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;[D)V
    .locals 0
    .param p2, "searchDirection"    # [D

    .prologue
    .line 287
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;->this$0:Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p2, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;->searchDirection:[D

    .line 289
    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 11
    .param p1, "x"    # D

    .prologue
    .line 294
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;->this$0:Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;

    invoke-static {v5}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->access$000(Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;)[D

    move-result-object v5

    invoke-virtual {v5}, [D->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    .line 295
    .local v4, "shiftedPoint":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 296
    aget-wide v6, v4, v3

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;->searchDirection:[D

    aget-wide v8, v5, v3

    mul-double/2addr v8, p1

    add-double/2addr v6, v8

    aput-wide v6, v4, v3

    .line 295
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 300
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;->this$0:Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;

    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->computeObjectiveGradient([D)[D

    move-result-object v2

    .line 303
    .local v2, "gradient":[D
    const-wide/16 v0, 0x0

    .line 304
    .local v0, "dotProduct":D
    const/4 v3, 0x0

    :goto_1
    array-length v5, v2

    if-ge v3, v5, :cond_1

    .line 305
    aget-wide v6, v2, v3

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;->searchDirection:[D

    aget-wide v8, v5, v3

    mul-double/2addr v6, v8

    add-double/2addr v0, v6

    .line 304
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 308
    :cond_1
    return-wide v0
.end method
