.class Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$1;
.super Ljava/lang/Object;
.source "FiniteDifferencesDifferentiator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->differentiate(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

.field final synthetic val$function:Lorg/apache/commons/math3/analysis/UnivariateFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/UnivariateFunction;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$1;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$1;->val$function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 3
    .param p1, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$1;->val$function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 10
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$1;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I
    invoke-static {v5}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 257
    new-instance v4, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$1;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I
    invoke-static {v6}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v4

    .line 261
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$1;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->tMax:D
    invoke-static {v6}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$100(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$1;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->tMin:D
    invoke-static {v6}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$200(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$1;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->halfSampleSpan:D
    invoke-static {v6}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$300(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v6

    sub-double v2, v4, v6

    .line 264
    .local v2, "t0":D
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$1;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I
    invoke-static {v4}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v4

    new-array v1, v4, [D

    .line 265
    .local v1, "y":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$1;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I
    invoke-static {v4}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 266
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$1;->val$function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    int-to-double v6, v0

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$1;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D
    invoke-static {v5}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$400(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v6, v2

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$1;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # invokes: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->evaluate(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    invoke-static {v4, p1, v2, v3, v1}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$500(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v4

    return-object v4
.end method
