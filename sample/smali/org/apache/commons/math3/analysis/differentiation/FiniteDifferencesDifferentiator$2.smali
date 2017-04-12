.class Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;
.super Ljava/lang/Object;
.source "FiniteDifferencesDifferentiator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableVectorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->differentiate(Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableVectorFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

.field final synthetic val$function:Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->val$function:Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)[D
    .locals 1
    .param p1, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->val$function:Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;->value(D)[D

    move-result-object v0

    return-object v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 12
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v7

    iget-object v8, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I
    invoke-static {v8}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v8

    if-lt v7, v8, :cond_0

    .line 297
    new-instance v7, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I
    invoke-static {v9}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v7

    .line 301
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v8

    iget-object v7, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->tMax:D
    invoke-static {v7}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$100(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v8

    iget-object v7, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->tMin:D
    invoke-static {v7}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$200(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v8

    iget-object v7, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->halfSampleSpan:D
    invoke-static {v7}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$300(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v10

    sub-double v2, v8, v10

    .line 304
    .local v2, "t0":D
    const/4 v6, 0x0

    check-cast v6, [[D

    .line 305
    .local v6, "y":[[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I
    invoke-static {v7}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 306
    iget-object v7, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->val$function:Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;

    int-to-double v8, v0

    iget-object v10, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D
    invoke-static {v10}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$400(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v8, v2

    invoke-interface {v7, v8, v9}, Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;->value(D)[D

    move-result-object v4

    .line 307
    .local v4, "v":[D
    if-nez v0, :cond_1

    .line 308
    array-length v7, v4

    iget-object v8, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I
    invoke-static {v8}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v8

    filled-new-array {v7, v8}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "y":[[D
    check-cast v6, [[D

    .line 310
    .restart local v6    # "y":[[D
    :cond_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v7, v4

    if-ge v1, v7, :cond_2

    .line 311
    aget-object v7, v6, v1

    aget-wide v8, v4, v1

    aput-wide v8, v7, v0

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 305
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    .end local v1    # "j":I
    .end local v4    # "v":[D
    :cond_3
    array-length v7, v6

    new-array v5, v7, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 317
    .local v5, "value":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_2
    array-length v7, v5

    if-ge v1, v7, :cond_4

    .line 318
    iget-object v7, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$2;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    aget-object v8, v6, v1

    # invokes: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->evaluate(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    invoke-static {v7, p1, v2, v3, v8}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$500(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v7

    aput-object v7, v5, v1

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 321
    :cond_4
    return-object v5
.end method
