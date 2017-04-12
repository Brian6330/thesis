.class Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;
.super Ljava/lang/Object;
.source "FiniteDifferencesDifferentiator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableMatrixFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->differentiate(Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableMatrixFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

.field final synthetic val$function:Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->val$function:Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)[[D
    .locals 1
    .param p1, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->val$function:Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;->value(D)[[D

    move-result-object v0

    return-object v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 14
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v8

    iget-object v9, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I
    invoke-static {v9}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v9

    if-lt v8, v9, :cond_0

    .line 348
    new-instance v8, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I
    invoke-static {v10}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v8

    .line 352
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v8

    iget-object v10, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->tMax:D
    invoke-static {v10}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$100(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v8

    iget-object v10, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->tMin:D
    invoke-static {v10}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$200(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v8

    iget-object v10, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->halfSampleSpan:D
    invoke-static {v10}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$300(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v10

    sub-double v4, v8, v10

    .line 355
    .local v4, "t0":D
    const/4 v7, 0x0

    check-cast v7, [[[D

    .line 356
    .local v7, "y":[[[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I
    invoke-static {v8}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 357
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->val$function:Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;

    int-to-double v10, v0

    iget-object v9, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D
    invoke-static {v9}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$400(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v10, v4

    invoke-interface {v8, v10, v11}, Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;->value(D)[[D

    move-result-object v3

    .line 358
    .local v3, "v":[[D
    if-nez v0, :cond_1

    .line 359
    array-length v8, v3

    const/4 v9, 0x0

    aget-object v9, v3, v9

    array-length v9, v9

    iget-object v10, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I
    invoke-static {v10}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v10

    filled-new-array {v8, v9, v10}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "y":[[[D
    check-cast v7, [[[D

    .line 361
    .restart local v7    # "y":[[[D
    :cond_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v8, v3

    if-ge v1, v8, :cond_3

    .line 362
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    aget-object v8, v3, v1

    array-length v8, v8

    if-ge v2, v8, :cond_2

    .line 363
    aget-object v8, v7, v1

    aget-object v8, v8, v2

    aget-object v9, v3, v1

    aget-wide v10, v9, v2

    aput-wide v10, v8, v0

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 361
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 356
    .end local v2    # "k":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    .end local v1    # "j":I
    .end local v3    # "v":[[D
    :cond_4
    array-length v8, v7

    const/4 v9, 0x0

    aget-object v9, v7, v9

    array-length v9, v9

    filled-new-array {v8, v9}, [I

    move-result-object v8

    const-class v9, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 370
    .local v6, "value":[[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_3
    array-length v8, v6

    if-ge v1, v8, :cond_6

    .line 371
    const/4 v2, 0x0

    .restart local v2    # "k":I
    :goto_4
    aget-object v8, v7, v1

    array-length v8, v8

    if-ge v2, v8, :cond_5

    .line 372
    aget-object v8, v6, v1

    iget-object v9, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$3;->this$0:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    aget-object v10, v7, v1

    aget-object v10, v10, v2

    # invokes: Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->evaluate(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    invoke-static {v9, p1, v4, v5, v10}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$500(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v9

    aput-object v9, v8, v2

    .line 371
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 370
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 376
    .end local v2    # "k":I
    :cond_6
    return-object v6
.end method
