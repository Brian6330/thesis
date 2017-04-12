.class public Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
.super Ljava/lang/Object;
.source "DSCompiler.java"


# static fields
.field private static compilers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[[",
            "Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final compIndirection:[[[I

.field private final derivativesIndirection:[[I

.field private final lowerIndirection:[I

.field private final multIndirection:[[[I

.field private final order:I

.field private final parameters:I

.field private final sizes:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compilers:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V
    .locals 6
    .param p1, "parameters"    # I
    .param p2, "order"    # I
    .param p3, "valueCompiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .param p4, "derivativeCompiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput p1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    .line 166
    iput p2, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    .line 167
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compileSizes(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->sizes:[[I

    .line 168
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compileDerivativesIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    .line 171
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compileLowerIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->lowerIndirection:[I

    .line 174
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->lowerIndirection:[I

    invoke-static {p1, p2, p3, p4, v0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compileMultiplicationIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;[I)[[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    .line 177
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->sizes:[[I

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    move v0, p1

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compileCompositionIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;[[I[[I)[[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    .line 182
    return-void
.end method

.method private static compileCompositionIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;[[I[[I)[[[I
    .locals 29
    .param p0, "parameters"    # I
    .param p1, "order"    # I
    .param p2, "valueCompiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .param p3, "derivativeCompiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .param p4, "sizes"    # [[I
    .param p5, "derivativesIndirection"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 417
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 418
    :cond_0
    const/4 v4, 0x1

    new-array v12, v4, [[[I

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [[I

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    aput-object v7, v5, v6

    aput-object v5, v12, v4

    .line 505
    :cond_1
    return-object v12

    .line 421
    :cond_2
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    array-length v0, v4

    move/from16 v28, v0

    .line 422
    .local v28, "vSize":I
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    array-length v13, v4

    .line 423
    .local v13, "dSize":I
    add-int v4, v28, v13

    new-array v12, v4, [[[I

    .line 426
    .local v12, "compIndirection":[[[I
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v28

    invoke-static {v4, v5, v12, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v13, :cond_1

    .line 433
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v24, "row":Ljava/util/List;, "Ljava/util/List<[I>;"
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    aget-object v10, v4, v17

    .local v10, "arr$":[[I
    array-length v0, v10

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    aget-object v25, v10, v18

    .line 439
    .local v25, "term":[I
    move-object/from16 v0, v25

    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    new-array v14, v4, [I

    .line 440
    .local v14, "derivedTermF":[I
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v25, v5

    aput v5, v14, v4

    .line 441
    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v25, v5

    add-int/lit8 v5, v5, 0x1

    aput v5, v14, v4

    .line 442
    move/from16 v0, p0

    new-array v0, v0, [I

    move-object/from16 v23, v0

    .line 443
    .local v23, "orders":[I
    add-int/lit8 v4, p0, -0x1

    const/4 v5, 0x1

    aput v5, v23, v4

    .line 444
    move-object/from16 v0, v25

    array-length v4, v0

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getPartialDerivativeIndex(II[[I[I)I

    move-result v5

    aput v5, v14, v4

    .line 445
    const/16 v19, 0x2

    .local v19, "j":I
    :goto_2
    move-object/from16 v0, v25

    array-length v4, v0

    move/from16 v0, v19

    if-ge v0, v4, :cond_3

    .line 448
    aget v4, v25, v19

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    move/from16 v5, p0

    move/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p4

    invoke-static/range {v4 .. v9}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->convertIndex(II[[III[[I)I

    move-result v4

    aput v4, v14, v19

    .line 445
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 452
    :cond_3
    const/4 v4, 0x2

    array-length v5, v14

    invoke-static {v14, v4, v5}, Ljava/util/Arrays;->sort([III)V

    .line 453
    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    const/16 v21, 0x2

    .local v21, "l":I
    :goto_3
    move-object/from16 v0, v25

    array-length v4, v0

    move/from16 v0, v21

    if-ge v0, v4, :cond_6

    .line 457
    move-object/from16 v0, v25

    array-length v4, v0

    new-array v15, v4, [I

    .line 458
    .local v15, "derivedTermG":[I
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v25, v5

    aput v5, v15, v4

    .line 459
    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v25, v5

    aput v5, v15, v4

    .line 460
    const/16 v19, 0x2

    :goto_4
    move-object/from16 v0, v25

    array-length v4, v0

    move/from16 v0, v19

    if-ge v0, v4, :cond_5

    .line 463
    aget v4, v25, v19

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    move/from16 v5, p0

    move/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p4

    invoke-static/range {v4 .. v9}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->convertIndex(II[[III[[I)I

    move-result v4

    aput v4, v15, v19

    .line 466
    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 468
    aget v4, v15, v19

    aget-object v4, p5, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    move/from16 v1, p0

    invoke-static {v4, v5, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    add-int/lit8 v4, p0, -0x1

    aget v5, v23, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v23, v4

    .line 470
    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getPartialDerivativeIndex(II[[I[I)I

    move-result v4

    aput v4, v15, v19

    .line 460
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 473
    :cond_5
    const/4 v4, 0x2

    array-length v5, v15

    invoke-static {v15, v4, v5}, Ljava/util/Arrays;->sort([III)V

    .line 474
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 434
    .end local v15    # "derivedTermG":[I
    :cond_6
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 480
    .end local v14    # "derivedTermF":[I
    .end local v19    # "j":I
    .end local v21    # "l":I
    .end local v23    # "orders":[I
    .end local v25    # "term":[I
    :cond_7
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 481
    .local v11, "combined":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/16 v19, 0x0

    .restart local v19    # "j":I
    :goto_5
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_e

    .line 482
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [I

    .line 483
    .local v26, "termJ":[I
    const/4 v4, 0x0

    aget v4, v26, v4

    if-lez v4, :cond_d

    .line 484
    add-int/lit8 v20, v19, 0x1

    .local v20, "k":I
    :goto_6
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_c

    .line 485
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [I

    .line 486
    .local v27, "termK":[I
    move-object/from16 v0, v26

    array-length v4, v0

    move-object/from16 v0, v27

    array-length v5, v0

    if-ne v4, v5, :cond_8

    const/16 v16, 0x1

    .line 487
    .local v16, "equals":Z
    :goto_7
    const/16 v21, 0x1

    .restart local v21    # "l":I
    :goto_8
    if-eqz v16, :cond_a

    move-object/from16 v0, v26

    array-length v4, v0

    move/from16 v0, v21

    if-ge v0, v4, :cond_a

    .line 488
    aget v4, v26, v21

    aget v5, v27, v21

    if-ne v4, v5, :cond_9

    const/4 v4, 0x1

    :goto_9
    and-int v16, v16, v4

    .line 487
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 486
    .end local v16    # "equals":Z
    .end local v21    # "l":I
    :cond_8
    const/16 v16, 0x0

    goto :goto_7

    .line 488
    .restart local v16    # "equals":Z
    .restart local v21    # "l":I
    :cond_9
    const/4 v4, 0x0

    goto :goto_9

    .line 490
    :cond_a
    if-eqz v16, :cond_b

    .line 492
    const/4 v4, 0x0

    aget v5, v26, v4

    const/4 v6, 0x0

    aget v6, v27, v6

    add-int/2addr v5, v6

    aput v5, v26, v4

    .line 494
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v27, v4

    .line 484
    :cond_b
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 497
    .end local v16    # "equals":Z
    .end local v21    # "l":I
    .end local v27    # "termK":[I
    :cond_c
    move-object/from16 v0, v26

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    .end local v20    # "k":I
    :cond_d
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 501
    .end local v26    # "termJ":[I
    :cond_e
    add-int v5, v28, v17

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [[I

    invoke-interface {v11, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    aput-object v4, v12, v5

    .line 432
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 418
    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method private static compileDerivativesIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[[I
    .locals 8
    .param p0, "parameters"    # I
    .param p1, "order"    # I
    .param p2, "valueCompiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .param p3, "derivativeCompiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    .prologue
    const/4 v7, 0x0

    .line 267
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 268
    :cond_0
    const/4 v4, 0x1

    filled-new-array {v4, p0}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    move-object v1, v4

    .line 296
    :cond_1
    return-object v1

    .line 271
    :cond_2
    iget-object v4, p2, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    array-length v3, v4

    .line 272
    .local v3, "vSize":I
    iget-object v4, p3, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    array-length v0, v4

    .line 273
    .local v0, "dSize":I
    add-int v4, v3, v0

    filled-new-array {v4, p0}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 276
    .local v1, "derivativesIndirection":[[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 278
    iget-object v4, p2, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    aget-object v4, v4, v2

    aget-object v5, v1, v2

    add-int/lit8 v6, p0, -0x1

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 287
    iget-object v4, p3, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    aget-object v4, v4, v2

    add-int v5, v3, v2

    aget-object v5, v1, v5

    invoke-static {v4, v7, v5, v7, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    add-int v4, v3, v2

    aget-object v4, v1, v4

    add-int/lit8 v5, p0, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static compileLowerIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[I
    .locals 7
    .param p0, "parameters"    # I
    .param p1, "order"    # I
    .param p2, "valueCompiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .param p3, "derivativeCompiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 315
    if-eqz p0, :cond_0

    if-gt p1, v4, :cond_2

    .line 316
    :cond_0
    new-array v2, v4, [I

    aput v5, v2, v5

    .line 328
    :cond_1
    return-object v2

    .line 320
    :cond_2
    iget-object v4, p2, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->lowerIndirection:[I

    array-length v3, v4

    .line 321
    .local v3, "vSize":I
    iget-object v4, p3, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->lowerIndirection:[I

    array-length v0, v4

    .line 322
    .local v0, "dSize":I
    add-int v4, v3, v0

    new-array v2, v4, [I

    .line 323
    .local v2, "lowerIndirection":[I
    iget-object v4, p2, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->lowerIndirection:[I

    invoke-static {v4, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 325
    add-int v4, v3, v1

    invoke-virtual {p2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v5

    iget-object v6, p3, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->lowerIndirection:[I

    aget v6, v6, v1

    add-int/2addr v5, v6

    aput v5, v2, v4

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static compileMultiplicationIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;[I)[[[I
    .locals 16
    .param p0, "parameters"    # I
    .param p1, "order"    # I
    .param p2, "valueCompiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .param p3, "derivativeCompiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .param p4, "lowerIndirection"    # [I

    .prologue
    .line 350
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 351
    :cond_0
    const/4 v12, 0x1

    new-array v7, v12, [[[I

    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [[I

    const/4 v14, 0x0

    const/4 v15, 0x3

    new-array v15, v15, [I

    fill-array-data v15, :array_0

    aput-object v15, v13, v14

    aput-object v13, v7, v12

    .line 391
    :cond_1
    return-object v7

    .line 355
    :cond_2
    move-object/from16 v0, p2

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    array-length v11, v12

    .line 356
    .local v11, "vSize":I
    move-object/from16 v0, p3

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    array-length v3, v12

    .line 357
    .local v3, "dSize":I
    add-int v12, v11, v3

    new-array v7, v12, [[[I

    .line 359
    .local v7, "multIndirection":[[[I
    move-object/from16 v0, p2

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v7, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 362
    move-object/from16 v0, p3

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    aget-object v2, v12, v4

    .line 363
    .local v2, "dRow":[[I
    new-instance v8, Ljava/util/ArrayList;

    array-length v12, v2

    mul-int/lit8 v12, v12, 0x2

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 364
    .local v8, "row":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v12, v2

    if-ge v5, v12, :cond_3

    .line 365
    const/4 v12, 0x3

    new-array v12, v12, [I

    const/4 v13, 0x0

    aget-object v14, v2, v5

    const/4 v15, 0x0

    aget v14, v14, v15

    aput v14, v12, v13

    const/4 v13, 0x1

    aget-object v14, v2, v5

    const/4 v15, 0x1

    aget v14, v14, v15

    aget v14, p4, v14

    aput v14, v12, v13

    const/4 v13, 0x2

    aget-object v14, v2, v5

    const/4 v15, 0x2

    aget v14, v14, v15

    add-int/2addr v14, v11

    aput v14, v12, v13

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    const/4 v12, 0x3

    new-array v12, v12, [I

    const/4 v13, 0x0

    aget-object v14, v2, v5

    const/4 v15, 0x0

    aget v14, v14, v15

    aput v14, v12, v13

    const/4 v13, 0x1

    aget-object v14, v2, v5

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v14, v11

    aput v14, v12, v13

    const/4 v13, 0x2

    aget-object v14, v2, v5

    const/4 v15, 0x2

    aget v14, v14, v15

    aget v14, p4, v14

    aput v14, v12, v13

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 370
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v1, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 371
    .local v1, "combined":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v5, 0x0

    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_7

    .line 372
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .line 373
    .local v9, "termJ":[I
    const/4 v12, 0x0

    aget v12, v9, v12

    if-lez v12, :cond_6

    .line 374
    add-int/lit8 v6, v5, 0x1

    .local v6, "k":I
    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v6, v12, :cond_5

    .line 375
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .line 376
    .local v10, "termK":[I
    const/4 v12, 0x1

    aget v12, v9, v12

    const/4 v13, 0x1

    aget v13, v10, v13

    if-ne v12, v13, :cond_4

    const/4 v12, 0x2

    aget v12, v9, v12

    const/4 v13, 0x2

    aget v13, v10, v13

    if-ne v12, v13, :cond_4

    .line 378
    const/4 v12, 0x0

    aget v13, v9, v12

    const/4 v14, 0x0

    aget v14, v10, v14

    add-int/2addr v13, v14

    aput v13, v9, v12

    .line 380
    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v10, v12

    .line 374
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 383
    .end local v10    # "termK":[I
    :cond_5
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    .end local v6    # "k":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 387
    .end local v9    # "termJ":[I
    :cond_7
    add-int v13, v11, v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [[I

    invoke-interface {v1, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[I

    aput-object v12, v7, v13

    .line 361
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 351
    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data
.end method

.method private static compileSizes(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[[I
    .locals 7
    .param p0, "parameters"    # I
    .param p1, "order"    # I
    .param p2, "valueCompiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 241
    add-int/lit8 v2, p0, 0x1

    add-int/lit8 v3, p1, 0x1

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 242
    .local v1, "sizes":[[I
    if-nez p0, :cond_1

    .line 243
    aget-object v2, v1, v4

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([II)V

    .line 252
    :cond_0
    return-object v1

    .line 245
    :cond_1
    iget-object v2, p2, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->sizes:[[I

    invoke-static {v2, v4, v1, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    aget-object v2, v1, p0

    aput v5, v2, v4

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 248
    aget-object v2, v1, p0

    add-int/lit8 v3, v0, 0x1

    aget-object v4, v1, p0

    aget v4, v4, v0

    add-int/lit8 v5, p0, -0x1

    aget-object v5, v1, v5

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    add-int/2addr v4, v5

    aput v4, v2, v3

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static convertIndex(II[[III[[I)I
    .locals 4
    .param p0, "index"    # I
    .param p1, "srcP"    # I
    .param p2, "srcDerivativesIndirection"    # [[I
    .param p3, "destP"    # I
    .param p4, "destO"    # I
    .param p5, "destSizes"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 612
    new-array v0, p3, [I

    .line 613
    .local v0, "orders":[I
    aget-object v1, p2, p0

    invoke-static {p1, p3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 614
    invoke-static {p3, p4, p5, v0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getPartialDerivativeIndex(II[[I[I)I

    move-result v1

    return v1
.end method

.method public static getCompiler(II)Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .locals 16
    .param p0, "parameters"    # I
    .param p1, "order"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 194
    sget-object v11, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compilers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    .line 195
    .local v1, "cache":[[Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    if-eqz v1, :cond_0

    array-length v11, v1

    move/from16 v0, p0

    if-le v11, v0, :cond_0

    aget-object v11, v1, p0

    array-length v11, v11

    move/from16 v0, p1

    if-le v11, v0, :cond_0

    aget-object v11, v1, p0

    aget-object v11, v11, p1

    if-eqz v11, :cond_0

    .line 198
    aget-object v11, v1, p0

    aget-object v11, v11, p1

    .line 228
    :goto_0
    return-object v11

    .line 202
    :cond_0
    if-nez v1, :cond_1

    const/4 v11, 0x0

    :goto_1
    move/from16 v0, p0

    invoke-static {v0, v11}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v6

    .line 203
    .local v6, "maxParameters":I
    if-nez v1, :cond_2

    const/4 v11, 0x0

    :goto_2
    move/from16 v0, p1

    invoke-static {v0, v11}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v5

    .line 204
    .local v5, "maxOrder":I
    add-int/lit8 v11, v6, 0x1

    add-int/lit8 v12, v5, 0x1

    filled-new-array {v11, v12}, [I

    move-result-object v11

    const-class v12, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    .line 206
    .local v7, "newCache":[[Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    if-eqz v1, :cond_3

    .line 208
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v11, v1

    if-ge v4, v11, :cond_3

    .line 209
    aget-object v11, v1, v4

    const/4 v12, 0x0

    aget-object v13, v7, v4

    const/4 v14, 0x0

    aget-object v15, v1, v4

    array-length v15, v15

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 202
    .end local v4    # "i":I
    .end local v5    # "maxOrder":I
    .end local v6    # "maxParameters":I
    .end local v7    # "newCache":[[Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    :cond_1
    array-length v11, v1

    goto :goto_1

    .line 203
    .restart local v6    # "maxParameters":I
    :cond_2
    const/4 v11, 0x0

    aget-object v11, v1, v11

    array-length v11, v11

    goto :goto_2

    .line 214
    .restart local v5    # "maxOrder":I
    .restart local v7    # "newCache":[[Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    :cond_3
    const/4 v3, 0x0

    .local v3, "diag":I
    :goto_4
    add-int v11, p0, p1

    if-gt v3, v11, :cond_8

    .line 215
    const/4 v11, 0x0

    sub-int v12, v3, p0

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v8

    .local v8, "o":I
    :goto_5
    move/from16 v0, p1

    invoke-static {v0, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    if-gt v8, v11, :cond_7

    .line 216
    sub-int v9, v3, v8

    .line 217
    .local v9, "p":I
    aget-object v11, v7, v9

    aget-object v11, v11, v8

    if-nez v11, :cond_4

    .line 218
    if-nez v9, :cond_5

    const/4 v10, 0x0

    .line 219
    .local v10, "valueCompiler":Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    :goto_6
    if-nez v8, :cond_6

    const/4 v2, 0x0

    .line 220
    .local v2, "derivativeCompiler":Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    :goto_7
    aget-object v11, v7, v9

    new-instance v12, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v12, v9, v8, v10, v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;-><init>(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    aput-object v12, v11, v8

    .line 215
    .end local v2    # "derivativeCompiler":Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .end local v10    # "valueCompiler":Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 218
    :cond_5
    add-int/lit8 v11, v9, -0x1

    aget-object v11, v7, v11

    aget-object v10, v11, v8

    goto :goto_6

    .line 219
    .restart local v10    # "valueCompiler":Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    :cond_6
    aget-object v11, v7, v9

    add-int/lit8 v12, v8, -0x1

    aget-object v2, v11, v12

    goto :goto_7

    .line 214
    .end local v9    # "p":I
    .end local v10    # "valueCompiler":Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 226
    .end local v8    # "o":I
    :cond_8
    sget-object v11, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compilers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v11, v1, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    aget-object v11, v7, p0

    aget-object v11, v11, p1

    goto/16 :goto_0
.end method

.method private static varargs getPartialDerivativeIndex(II[[I[I)I
    .locals 11
    .param p0, "parameters"    # I
    .param p1, "order"    # I
    .param p2, "sizes"    # [[I
    .param p3, "orders"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 569
    const/4 v3, 0x0

    .line 570
    .local v3, "index":I
    move v4, p1

    .line 571
    .local v4, "m":I
    const/4 v6, 0x0

    .line 572
    .local v6, "ordersSum":I
    add-int/lit8 v2, p0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 575
    aget v0, p3, v2

    .line 578
    .local v0, "derivativeOrder":I
    add-int/2addr v6, v0

    .line 579
    if-le v6, p1, :cond_2

    .line 580
    new-instance v7, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v7

    .line 583
    .end local v0    # "derivativeOrder":I
    .end local v4    # "m":I
    .local v1, "derivativeOrder":I
    .local v5, "m":I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "derivativeOrder":I
    .restart local v0    # "derivativeOrder":I
    if-lez v1, :cond_0

    .line 587
    aget-object v7, p2, v2

    add-int/lit8 v4, v5, -0x1

    .end local v5    # "m":I
    .restart local v4    # "m":I
    aget v7, v7, v5

    add-int/2addr v3, v7

    move v1, v0

    .end local v0    # "derivativeOrder":I
    .restart local v1    # "derivativeOrder":I
    move v5, v4

    .end local v4    # "m":I
    .restart local v5    # "m":I
    goto :goto_1

    .line 572
    .end local v1    # "derivativeOrder":I
    .restart local v0    # "derivativeOrder":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    move v4, v5

    .end local v5    # "m":I
    .restart local v4    # "m":I
    goto :goto_0

    .line 592
    .end local v0    # "derivativeOrder":I
    :cond_1
    return v3

    .restart local v0    # "derivativeOrder":I
    :cond_2
    move v1, v0

    .end local v0    # "derivativeOrder":I
    .restart local v1    # "derivativeOrder":I
    move v5, v4

    .end local v4    # "m":I
    .restart local v5    # "m":I
    goto :goto_1
.end method


# virtual methods
.method public acos([DI[DI)V
    .locals 26
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .prologue
    .line 1264
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v2, v2, 0x1

    new-array v5, v2, [D

    .line 1265
    .local v5, "function":[D
    aget-wide v18, p1, p2

    .line 1266
    .local v18, "x":D
    const/4 v2, 0x0

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v6

    aput-wide v6, v5, v2

    .line 1267
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v2, :cond_4

    .line 1275
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    new-array v14, v2, [D

    .line 1276
    .local v14, "p":[D
    const/4 v2, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    aput-wide v6, v14, v2

    .line 1277
    mul-double v20, v18, v18

    .line 1278
    .local v20, "x2":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, v6, v20

    div-double v10, v2, v6

    .line 1279
    .local v10, "f":D
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    .line 1280
    .local v8, "coeff":D
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-wide v6, v14, v3

    mul-double/2addr v6, v8

    aput-wide v6, v5, v2

    .line 1281
    const/4 v13, 0x2

    .local v13, "n":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v13, v2, :cond_4

    .line 1284
    const-wide/16 v16, 0x0

    .line 1285
    .local v16, "v":D
    add-int/lit8 v2, v13, -0x1

    add-int/lit8 v3, v13, -0x1

    int-to-double v6, v3

    add-int/lit8 v3, v13, -0x2

    aget-wide v22, v14, v3

    mul-double v6, v6, v22

    aput-wide v6, v14, v2

    .line 1286
    add-int/lit8 v12, v13, -0x1

    .local v12, "k":I
    :goto_1
    if-ltz v12, :cond_2

    .line 1287
    mul-double v2, v16, v20

    aget-wide v6, v14, v12

    add-double v16, v2, v6

    .line 1288
    const/4 v2, 0x2

    if-le v12, v2, :cond_1

    .line 1289
    add-int/lit8 v2, v12, -0x2

    add-int/lit8 v3, v12, -0x1

    int-to-double v6, v3

    add-int/lit8 v3, v12, -0x1

    aget-wide v22, v14, v3

    mul-double v6, v6, v22

    mul-int/lit8 v3, v13, 0x2

    sub-int/2addr v3, v12

    int-to-double v0, v3

    move-wide/from16 v22, v0

    add-int/lit8 v3, v12, -0x3

    aget-wide v24, v14, v3

    mul-double v22, v22, v24

    add-double v6, v6, v22

    aput-wide v6, v14, v2

    .line 1286
    :cond_0
    :goto_2
    add-int/lit8 v12, v12, -0x2

    goto :goto_1

    .line 1290
    :cond_1
    const/4 v2, 0x2

    if-ne v12, v2, :cond_0

    .line 1291
    const/4 v2, 0x0

    const/4 v3, 0x1

    aget-wide v6, v14, v3

    aput-wide v6, v14, v2

    goto :goto_2

    .line 1294
    :cond_2
    and-int/lit8 v2, v13, 0x1

    if-nez v2, :cond_3

    .line 1295
    mul-double v16, v16, v18

    .line 1298
    :cond_3
    mul-double/2addr v8, v10

    .line 1299
    mul-double v2, v8, v16

    aput-wide v2, v5, v13

    .line 1281
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .end local v8    # "coeff":D
    .end local v10    # "f":D
    .end local v12    # "k":I
    .end local v13    # "n":I
    .end local v14    # "p":[D
    .end local v16    # "v":D
    .end local v20    # "x2":D
    :cond_4
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    .line 1305
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1307
    return-void
.end method

.method public acosh([DI[DI)V
    .locals 26
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .prologue
    .line 1593
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v2, v2, 0x1

    new-array v5, v2, [D

    .line 1594
    .local v5, "function":[D
    aget-wide v18, p1, p2

    .line 1595
    .local v18, "x":D
    const/4 v2, 0x0

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->acosh(D)D

    move-result-wide v6

    aput-wide v6, v5, v2

    .line 1596
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v2, :cond_4

    .line 1604
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    new-array v14, v2, [D

    .line 1605
    .local v14, "p":[D
    const/4 v2, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v14, v2

    .line 1606
    mul-double v20, v18, v18

    .line 1607
    .local v20, "x2":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, v20, v6

    div-double v10, v2, v6

    .line 1608
    .local v10, "f":D
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    .line 1609
    .local v8, "coeff":D
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-wide v6, v14, v3

    mul-double/2addr v6, v8

    aput-wide v6, v5, v2

    .line 1610
    const/4 v13, 0x2

    .local v13, "n":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v13, v2, :cond_4

    .line 1613
    const-wide/16 v16, 0x0

    .line 1614
    .local v16, "v":D
    add-int/lit8 v2, v13, -0x1

    rsub-int/lit8 v3, v13, 0x1

    int-to-double v6, v3

    add-int/lit8 v3, v13, -0x2

    aget-wide v22, v14, v3

    mul-double v6, v6, v22

    aput-wide v6, v14, v2

    .line 1615
    add-int/lit8 v12, v13, -0x1

    .local v12, "k":I
    :goto_1
    if-ltz v12, :cond_2

    .line 1616
    mul-double v2, v16, v20

    aget-wide v6, v14, v12

    add-double v16, v2, v6

    .line 1617
    const/4 v2, 0x2

    if-le v12, v2, :cond_1

    .line 1618
    add-int/lit8 v2, v12, -0x2

    rsub-int/lit8 v3, v12, 0x1

    int-to-double v6, v3

    add-int/lit8 v3, v12, -0x1

    aget-wide v22, v14, v3

    mul-double v6, v6, v22

    mul-int/lit8 v3, v13, 0x2

    sub-int v3, v12, v3

    int-to-double v0, v3

    move-wide/from16 v22, v0

    add-int/lit8 v3, v12, -0x3

    aget-wide v24, v14, v3

    mul-double v22, v22, v24

    add-double v6, v6, v22

    aput-wide v6, v14, v2

    .line 1615
    :cond_0
    :goto_2
    add-int/lit8 v12, v12, -0x2

    goto :goto_1

    .line 1619
    :cond_1
    const/4 v2, 0x2

    if-ne v12, v2, :cond_0

    .line 1620
    const/4 v2, 0x0

    const/4 v3, 0x1

    aget-wide v6, v14, v3

    neg-double v6, v6

    aput-wide v6, v14, v2

    goto :goto_2

    .line 1623
    :cond_2
    and-int/lit8 v2, v13, 0x1

    if-nez v2, :cond_3

    .line 1624
    mul-double v16, v16, v18

    .line 1627
    :cond_3
    mul-double/2addr v8, v10

    .line 1628
    mul-double v2, v8, v16

    aput-wide v2, v5, v13

    .line 1610
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .end local v8    # "coeff":D
    .end local v10    # "f":D
    .end local v12    # "k":I
    .end local v13    # "n":I
    .end local v14    # "p":[D
    .end local v16    # "v":D
    .end local v20    # "x2":D
    :cond_4
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    .line 1634
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1636
    return-void
.end method

.method public add([DI[DI[DI)V
    .locals 6
    .param p1, "lhs"    # [D
    .param p2, "lhsOffset"    # I
    .param p3, "rhs"    # [D
    .param p4, "rhsOffset"    # I
    .param p5, "result"    # [D
    .param p6, "resultOffset"    # I

    .prologue
    .line 746
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 747
    add-int v1, p6, v0

    add-int v2, p2, v0

    aget-wide v2, p1, v2

    add-int v4, p4, v0

    aget-wide v4, p3, v4

    add-double/2addr v2, v4

    aput-wide v2, p5, v1

    .line 746
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 749
    :cond_0
    return-void
.end method

.method public asin([DI[DI)V
    .locals 26
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .prologue
    .line 1321
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v2, v2, 0x1

    new-array v5, v2, [D

    .line 1322
    .local v5, "function":[D
    aget-wide v18, p1, p2

    .line 1323
    .local v18, "x":D
    const/4 v2, 0x0

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v6

    aput-wide v6, v5, v2

    .line 1324
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v2, :cond_4

    .line 1332
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    new-array v14, v2, [D

    .line 1333
    .local v14, "p":[D
    const/4 v2, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v14, v2

    .line 1334
    mul-double v20, v18, v18

    .line 1335
    .local v20, "x2":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, v6, v20

    div-double v10, v2, v6

    .line 1336
    .local v10, "f":D
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    .line 1337
    .local v8, "coeff":D
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-wide v6, v14, v3

    mul-double/2addr v6, v8

    aput-wide v6, v5, v2

    .line 1338
    const/4 v13, 0x2

    .local v13, "n":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v13, v2, :cond_4

    .line 1341
    const-wide/16 v16, 0x0

    .line 1342
    .local v16, "v":D
    add-int/lit8 v2, v13, -0x1

    add-int/lit8 v3, v13, -0x1

    int-to-double v6, v3

    add-int/lit8 v3, v13, -0x2

    aget-wide v22, v14, v3

    mul-double v6, v6, v22

    aput-wide v6, v14, v2

    .line 1343
    add-int/lit8 v12, v13, -0x1

    .local v12, "k":I
    :goto_1
    if-ltz v12, :cond_2

    .line 1344
    mul-double v2, v16, v20

    aget-wide v6, v14, v12

    add-double v16, v2, v6

    .line 1345
    const/4 v2, 0x2

    if-le v12, v2, :cond_1

    .line 1346
    add-int/lit8 v2, v12, -0x2

    add-int/lit8 v3, v12, -0x1

    int-to-double v6, v3

    add-int/lit8 v3, v12, -0x1

    aget-wide v22, v14, v3

    mul-double v6, v6, v22

    mul-int/lit8 v3, v13, 0x2

    sub-int/2addr v3, v12

    int-to-double v0, v3

    move-wide/from16 v22, v0

    add-int/lit8 v3, v12, -0x3

    aget-wide v24, v14, v3

    mul-double v22, v22, v24

    add-double v6, v6, v22

    aput-wide v6, v14, v2

    .line 1343
    :cond_0
    :goto_2
    add-int/lit8 v12, v12, -0x2

    goto :goto_1

    .line 1347
    :cond_1
    const/4 v2, 0x2

    if-ne v12, v2, :cond_0

    .line 1348
    const/4 v2, 0x0

    const/4 v3, 0x1

    aget-wide v6, v14, v3

    aput-wide v6, v14, v2

    goto :goto_2

    .line 1351
    :cond_2
    and-int/lit8 v2, v13, 0x1

    if-nez v2, :cond_3

    .line 1352
    mul-double v16, v16, v18

    .line 1355
    :cond_3
    mul-double/2addr v8, v10

    .line 1356
    mul-double v2, v8, v16

    aput-wide v2, v5, v13

    .line 1338
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .end local v8    # "coeff":D
    .end local v10    # "f":D
    .end local v12    # "k":I
    .end local v13    # "n":I
    .end local v14    # "p":[D
    .end local v16    # "v":D
    .end local v20    # "x2":D
    :cond_4
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    .line 1362
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1364
    return-void
.end method

.method public asinh([DI[DI)V
    .locals 26
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .prologue
    .line 1650
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v2, v2, 0x1

    new-array v5, v2, [D

    .line 1651
    .local v5, "function":[D
    aget-wide v18, p1, p2

    .line 1652
    .local v18, "x":D
    const/4 v2, 0x0

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->asinh(D)D

    move-result-wide v6

    aput-wide v6, v5, v2

    .line 1653
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v2, :cond_4

    .line 1661
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    new-array v14, v2, [D

    .line 1662
    .local v14, "p":[D
    const/4 v2, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v14, v2

    .line 1663
    mul-double v20, v18, v18

    .line 1664
    .local v20, "x2":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v6, v6, v20

    div-double v10, v2, v6

    .line 1665
    .local v10, "f":D
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    .line 1666
    .local v8, "coeff":D
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-wide v6, v14, v3

    mul-double/2addr v6, v8

    aput-wide v6, v5, v2

    .line 1667
    const/4 v13, 0x2

    .local v13, "n":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v13, v2, :cond_4

    .line 1670
    const-wide/16 v16, 0x0

    .line 1671
    .local v16, "v":D
    add-int/lit8 v2, v13, -0x1

    rsub-int/lit8 v3, v13, 0x1

    int-to-double v6, v3

    add-int/lit8 v3, v13, -0x2

    aget-wide v22, v14, v3

    mul-double v6, v6, v22

    aput-wide v6, v14, v2

    .line 1672
    add-int/lit8 v12, v13, -0x1

    .local v12, "k":I
    :goto_1
    if-ltz v12, :cond_2

    .line 1673
    mul-double v2, v16, v20

    aget-wide v6, v14, v12

    add-double v16, v2, v6

    .line 1674
    const/4 v2, 0x2

    if-le v12, v2, :cond_1

    .line 1675
    add-int/lit8 v2, v12, -0x2

    add-int/lit8 v3, v12, -0x1

    int-to-double v6, v3

    add-int/lit8 v3, v12, -0x1

    aget-wide v22, v14, v3

    mul-double v6, v6, v22

    mul-int/lit8 v3, v13, 0x2

    sub-int v3, v12, v3

    int-to-double v0, v3

    move-wide/from16 v22, v0

    add-int/lit8 v3, v12, -0x3

    aget-wide v24, v14, v3

    mul-double v22, v22, v24

    add-double v6, v6, v22

    aput-wide v6, v14, v2

    .line 1672
    :cond_0
    :goto_2
    add-int/lit8 v12, v12, -0x2

    goto :goto_1

    .line 1676
    :cond_1
    const/4 v2, 0x2

    if-ne v12, v2, :cond_0

    .line 1677
    const/4 v2, 0x0

    const/4 v3, 0x1

    aget-wide v6, v14, v3

    aput-wide v6, v14, v2

    goto :goto_2

    .line 1680
    :cond_2
    and-int/lit8 v2, v13, 0x1

    if-nez v2, :cond_3

    .line 1681
    mul-double v16, v16, v18

    .line 1684
    :cond_3
    mul-double/2addr v8, v10

    .line 1685
    mul-double v2, v8, v16

    aput-wide v2, v5, v13

    .line 1667
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .end local v8    # "coeff":D
    .end local v10    # "f":D
    .end local v12    # "k":I
    .end local v13    # "n":I
    .end local v14    # "p":[D
    .end local v16    # "v":D
    .end local v20    # "x2":D
    :cond_4
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    .line 1691
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1693
    return-void
.end method

.method public atan([DI[DI)V
    .locals 26
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .prologue
    .line 1378
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v2, v2, 0x1

    new-array v5, v2, [D

    .line 1379
    .local v5, "function":[D
    aget-wide v18, p1, p2

    .line 1380
    .local v18, "x":D
    const/4 v2, 0x0

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->atan(D)D

    move-result-wide v6

    aput-wide v6, v5, v2

    .line 1381
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v2, :cond_4

    .line 1389
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    new-array v14, v2, [D

    .line 1390
    .local v14, "q":[D
    const/4 v2, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v14, v2

    .line 1391
    mul-double v20, v18, v18

    .line 1392
    .local v20, "x2":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v6, v6, v20

    div-double v10, v2, v6

    .line 1393
    .local v10, "f":D
    move-wide v8, v10

    .line 1394
    .local v8, "coeff":D
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-wide v6, v14, v3

    mul-double/2addr v6, v8

    aput-wide v6, v5, v2

    .line 1395
    const/4 v13, 0x2

    .local v13, "n":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v13, v2, :cond_4

    .line 1398
    const-wide/16 v16, 0x0

    .line 1399
    .local v16, "v":D
    add-int/lit8 v2, v13, -0x1

    neg-int v3, v13

    int-to-double v6, v3

    add-int/lit8 v3, v13, -0x2

    aget-wide v22, v14, v3

    mul-double v6, v6, v22

    aput-wide v6, v14, v2

    .line 1400
    add-int/lit8 v12, v13, -0x1

    .local v12, "k":I
    :goto_1
    if-ltz v12, :cond_2

    .line 1401
    mul-double v2, v16, v20

    aget-wide v6, v14, v12

    add-double v16, v2, v6

    .line 1402
    const/4 v2, 0x2

    if-le v12, v2, :cond_1

    .line 1403
    add-int/lit8 v2, v12, -0x2

    add-int/lit8 v3, v12, -0x1

    int-to-double v6, v3

    add-int/lit8 v3, v12, -0x1

    aget-wide v22, v14, v3

    mul-double v6, v6, v22

    add-int/lit8 v3, v12, -0x1

    mul-int/lit8 v4, v13, 0x2

    sub-int/2addr v3, v4

    int-to-double v0, v3

    move-wide/from16 v22, v0

    add-int/lit8 v3, v12, -0x3

    aget-wide v24, v14, v3

    mul-double v22, v22, v24

    add-double v6, v6, v22

    aput-wide v6, v14, v2

    .line 1400
    :cond_0
    :goto_2
    add-int/lit8 v12, v12, -0x2

    goto :goto_1

    .line 1404
    :cond_1
    const/4 v2, 0x2

    if-ne v12, v2, :cond_0

    .line 1405
    const/4 v2, 0x0

    const/4 v3, 0x1

    aget-wide v6, v14, v3

    aput-wide v6, v14, v2

    goto :goto_2

    .line 1408
    :cond_2
    and-int/lit8 v2, v13, 0x1

    if-nez v2, :cond_3

    .line 1409
    mul-double v16, v16, v18

    .line 1412
    :cond_3
    mul-double/2addr v8, v10

    .line 1413
    mul-double v2, v8, v16

    aput-wide v2, v5, v13

    .line 1395
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .end local v8    # "coeff":D
    .end local v10    # "f":D
    .end local v12    # "k":I
    .end local v13    # "n":I
    .end local v14    # "q":[D
    .end local v16    # "v":D
    .end local v20    # "x2":D
    :cond_4
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    .line 1419
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1421
    return-void
.end method

.method public atan2([DI[DI[DI)V
    .locals 19
    .param p1, "y"    # [D
    .param p2, "yOffset"    # I
    .param p3, "x"    # [D
    .param p4, "xOffset"    # I
    .param p5, "result"    # [D
    .param p6, "resultOffset"    # I

    .prologue
    .line 1438
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v2

    new-array v7, v2, [D

    .line 1439
    .local v7, "tmp1":[D
    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multiply([DI[DI[DI)V

    .line 1440
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v2

    new-array v13, v2, [D

    .line 1441
    .local v13, "tmp2":[D
    const/4 v14, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p1

    move/from16 v12, p2

    invoke-virtual/range {v8 .. v14}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multiply([DI[DI[DI)V

    .line 1442
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object v9, v13

    move-object v11, v13

    invoke-virtual/range {v6 .. v12}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->add([DI[DI[DI)V

    .line 1443
    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v17, 0x0

    move-object/from16 v12, p0

    move-object/from16 v16, v7

    invoke-virtual/range {v12 .. v17}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->rootN([DII[DI)V

    .line 1445
    aget-wide v2, p3, p4

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 1448
    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object v11, v13

    invoke-virtual/range {v6 .. v12}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->add([DI[DI[DI)V

    .line 1449
    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object v15, v7

    invoke-virtual/range {v10 .. v16}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->divide([DI[DI[DI)V

    .line 1450
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2, v13, v3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->atan([DI[DI)V

    .line 1451
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    array-length v2, v13

    move/from16 v0, v18

    if-ge v0, v2, :cond_2

    .line 1452
    add-int v2, p6, v18

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    aget-wide v8, v13, v18

    mul-double/2addr v4, v8

    aput-wide v4, p5, v2

    .line 1451
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1458
    .end local v18    # "i":I
    :cond_0
    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object v11, v13

    invoke-virtual/range {v6 .. v12}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->subtract([DI[DI[DI)V

    .line 1459
    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object v15, v7

    invoke-virtual/range {v10 .. v16}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->divide([DI[DI[DI)V

    .line 1460
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2, v13, v3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->atan([DI[DI)V

    .line 1461
    const/4 v2, 0x0

    aget-wide v2, v13, v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    const-wide v2, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    :goto_1
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/4 v6, 0x0

    aget-wide v8, v13, v6

    mul-double/2addr v4, v8

    sub-double/2addr v2, v4

    aput-wide v2, p5, p6

    .line 1463
    const/16 v18, 0x1

    .restart local v18    # "i":I
    :goto_2
    array-length v2, v13

    move/from16 v0, v18

    if-ge v0, v2, :cond_2

    .line 1464
    add-int v2, p6, v18

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    aget-wide v8, v13, v18

    mul-double/2addr v4, v8

    aput-wide v4, p5, v2

    .line 1463
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1461
    .end local v18    # "i":I
    :cond_1
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    goto :goto_1

    .line 1470
    .restart local v18    # "i":I
    :cond_2
    aget-wide v2, p1, p2

    aget-wide v4, p3, p4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    aput-wide v2, p5, p6

    .line 1472
    return-void
.end method

.method public atanh([DI[DI)V
    .locals 26
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .prologue
    .line 1707
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v2, v2, 0x1

    new-array v5, v2, [D

    .line 1708
    .local v5, "function":[D
    aget-wide v18, p1, p2

    .line 1709
    .local v18, "x":D
    const/4 v2, 0x0

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->atanh(D)D

    move-result-wide v6

    aput-wide v6, v5, v2

    .line 1710
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v2, :cond_4

    .line 1718
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    new-array v14, v2, [D

    .line 1719
    .local v14, "q":[D
    const/4 v2, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v14, v2

    .line 1720
    mul-double v20, v18, v18

    .line 1721
    .local v20, "x2":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, v6, v20

    div-double v10, v2, v6

    .line 1722
    .local v10, "f":D
    move-wide v8, v10

    .line 1723
    .local v8, "coeff":D
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-wide v6, v14, v3

    mul-double/2addr v6, v8

    aput-wide v6, v5, v2

    .line 1724
    const/4 v13, 0x2

    .local v13, "n":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v13, v2, :cond_4

    .line 1727
    const-wide/16 v16, 0x0

    .line 1728
    .local v16, "v":D
    add-int/lit8 v2, v13, -0x1

    int-to-double v6, v13

    add-int/lit8 v3, v13, -0x2

    aget-wide v22, v14, v3

    mul-double v6, v6, v22

    aput-wide v6, v14, v2

    .line 1729
    add-int/lit8 v12, v13, -0x1

    .local v12, "k":I
    :goto_1
    if-ltz v12, :cond_2

    .line 1730
    mul-double v2, v16, v20

    aget-wide v6, v14, v12

    add-double v16, v2, v6

    .line 1731
    const/4 v2, 0x2

    if-le v12, v2, :cond_1

    .line 1732
    add-int/lit8 v2, v12, -0x2

    add-int/lit8 v3, v12, -0x1

    int-to-double v6, v3

    add-int/lit8 v3, v12, -0x1

    aget-wide v22, v14, v3

    mul-double v6, v6, v22

    mul-int/lit8 v3, v13, 0x2

    sub-int/2addr v3, v12

    add-int/lit8 v3, v3, 0x1

    int-to-double v0, v3

    move-wide/from16 v22, v0

    add-int/lit8 v3, v12, -0x3

    aget-wide v24, v14, v3

    mul-double v22, v22, v24

    add-double v6, v6, v22

    aput-wide v6, v14, v2

    .line 1729
    :cond_0
    :goto_2
    add-int/lit8 v12, v12, -0x2

    goto :goto_1

    .line 1733
    :cond_1
    const/4 v2, 0x2

    if-ne v12, v2, :cond_0

    .line 1734
    const/4 v2, 0x0

    const/4 v3, 0x1

    aget-wide v6, v14, v3

    aput-wide v6, v14, v2

    goto :goto_2

    .line 1737
    :cond_2
    and-int/lit8 v2, v13, 0x1

    if-nez v2, :cond_3

    .line 1738
    mul-double v16, v16, v18

    .line 1741
    :cond_3
    mul-double/2addr v8, v10

    .line 1742
    mul-double v2, v8, v16

    aput-wide v2, v5, v13

    .line 1724
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .end local v8    # "coeff":D
    .end local v10    # "f":D
    .end local v12    # "k":I
    .end local v13    # "n":I
    .end local v14    # "q":[D
    .end local v16    # "v":D
    .end local v20    # "x2":D
    :cond_4
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    .line 1748
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1750
    return-void
.end method

.method public checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V
    .locals 3
    .param p1, "compiler"    # Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 1814
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    iget v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    if-eq v0, v1, :cond_0

    .line 1815
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    iget v2, p1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 1817
    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    iget v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-eq v0, v1, :cond_1

    .line 1818
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    iget v2, p1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 1820
    :cond_1
    return-void
.end method

.method public compose([DI[D[DI)V
    .locals 14
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "f"    # [D
    .param p4, "result"    # [D
    .param p5, "resultOffset"    # I

    .prologue
    .line 1764
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 1765
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    aget-object v3, v5, v0

    .line 1766
    .local v3, "mappingI":[[I
    const-wide/16 v8, 0x0

    .line 1767
    .local v8, "r":D
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 1768
    aget-object v4, v3, v1

    .line 1769
    .local v4, "mappingIJ":[I
    const/4 v5, 0x0

    aget v5, v4, v5

    int-to-double v10, v5

    const/4 v5, 0x1

    aget v5, v4, v5

    aget-wide v12, p3, v5

    mul-double v6, v10, v12

    .line 1770
    .local v6, "product":D
    const/4 v2, 0x2

    .local v2, "k":I
    :goto_2
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 1771
    aget v5, v4, v2

    add-int v5, v5, p2

    aget-wide v10, p1, v5

    mul-double/2addr v6, v10

    .line 1770
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1773
    :cond_0
    add-double/2addr v8, v6

    .line 1767
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1775
    .end local v2    # "k":I
    .end local v4    # "mappingIJ":[I
    .end local v6    # "product":D
    :cond_1
    add-int v5, p5, v0

    aput-wide v8, p4, v5

    .line 1764
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1777
    .end local v1    # "j":I
    .end local v3    # "mappingI":[[I
    .end local v8    # "r":D
    :cond_2
    return-void
.end method

.method public cos([DI[DI)V
    .locals 7
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .prologue
    .line 1157
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [D

    .line 1158
    .local v3, "function":[D
    const/4 v0, 0x0

    aget-wide v4, p1, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1159
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1160
    const/4 v0, 0x1

    aget-wide v4, p1, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    neg-double v4, v4

    aput-wide v4, v3, v0

    .line 1161
    const/4 v6, 0x2

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v6, v0, :cond_0

    .line 1162
    add-int/lit8 v0, v6, -0x2

    aget-wide v0, v3, v0

    neg-double v0, v0

    aput-wide v0, v3, v6

    .line 1161
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v6    # "i":I
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .line 1167
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1169
    return-void
.end method

.method public cosh([DI[DI)V
    .locals 7
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .prologue
    .line 1486
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [D

    .line 1487
    .local v3, "function":[D
    const/4 v0, 0x0

    aget-wide v4, p1, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1488
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1489
    const/4 v0, 0x1

    aget-wide v4, p1, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1490
    const/4 v6, 0x2

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v6, v0, :cond_0

    .line 1491
    add-int/lit8 v0, v6, -0x2

    aget-wide v0, v3, v0

    aput-wide v0, v3, v6

    .line 1490
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v6    # "i":I
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .line 1496
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1498
    return-void
.end method

.method public divide([DI[DI[DI)V
    .locals 8
    .param p1, "lhs"    # [D
    .param p2, "lhsOffset"    # I
    .param p3, "rhs"    # [D
    .param p4, "rhsOffset"    # I
    .param p5, "result"    # [D
    .param p6, "resultOffset"    # I

    .prologue
    const/4 v5, 0x0

    .line 805
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v0

    new-array v4, v0, [D

    .line 806
    .local v4, "reciprocal":[D
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p3

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->pow([DII[DI)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p5

    move v7, p6

    .line 807
    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multiply([DI[DI[DI)V

    .line 808
    return-void
.end method

.method public exp([DI[DI)V
    .locals 6
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .prologue
    .line 1034
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [D

    .line 1035
    .local v3, "function":[D
    aget-wide v0, p1, p2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    invoke-static {v3, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .line 1038
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1040
    return-void
.end method

.method public expm1([DI[DI)V
    .locals 6
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .prologue
    .line 1054
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [D

    .line 1055
    .local v3, "function":[D
    const/4 v0, 0x0

    aget-wide v4, p1, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->expm1(D)D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1056
    const/4 v0, 0x1

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v1, v1, 0x1

    aget-wide v4, p1, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v4

    invoke-static {v3, v0, v1, v4, v5}, Ljava/util/Arrays;->fill([DIID)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .line 1059
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1061
    return-void
.end method

.method public getFreeParameters()I
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    return v0
.end method

.method public varargs getPartialDerivativeIndex([I)I
    .locals 3
    .param p1, "orders"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    .line 545
    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 546
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 549
    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->sizes:[[I

    invoke-static {v0, v1, v2, p1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getPartialDerivativeIndex(II[[I[I)I

    move-result v0

    return v0
.end method

.method public getPartialDerivativeOrders(I)[I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 626
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->sizes:[[I

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    aget-object v0, v0, v1

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    aget v0, v0, v1

    return v0
.end method

.method public linearCombination(D[DID[DID[DID[DI[DI)V
    .locals 21
    .param p1, "a1"    # D
    .param p3, "c1"    # [D
    .param p4, "offset1"    # I
    .param p5, "a2"    # D
    .param p7, "c2"    # [D
    .param p8, "offset2"    # I
    .param p9, "a3"    # D
    .param p11, "c3"    # [D
    .param p12, "offset3"    # I
    .param p13, "a4"    # D
    .param p15, "c4"    # [D
    .param p16, "offset4"    # I
    .param p17, "result"    # [D
    .param p18, "resultOffset"    # I

    .prologue
    .line 725
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_0

    .line 726
    add-int v19, p18, v18

    add-int v2, p4, v18

    aget-wide v4, p3, v2

    add-int v2, p8, v18

    aget-wide v8, p7, v2

    add-int v2, p12, v18

    aget-wide v12, p11, v2

    add-int v2, p16, v18

    aget-wide v16, p15, v2

    move-wide/from16 v2, p1

    move-wide/from16 v6, p5

    move-wide/from16 v10, p9

    move-wide/from16 v14, p13

    invoke-static/range {v2 .. v17}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v2

    aput-wide v2, p17, v19

    .line 725
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 732
    :cond_0
    return-void
.end method

.method public linearCombination(D[DID[DID[DI[DI)V
    .locals 15
    .param p1, "a1"    # D
    .param p3, "c1"    # [D
    .param p4, "offset1"    # I
    .param p5, "a2"    # D
    .param p7, "c2"    # [D
    .param p8, "offset2"    # I
    .param p9, "a3"    # D
    .param p11, "c3"    # [D
    .param p12, "offset3"    # I
    .param p13, "result"    # [D
    .param p14, "resultOffset"    # I

    .prologue
    .line 694
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v0

    if-ge v12, v0, :cond_0

    .line 695
    add-int v13, p14, v12

    add-int v0, p4, v12

    aget-wide v2, p3, v0

    add-int v0, p8, v12

    aget-wide v6, p7, v0

    add-int v0, p12, v12

    aget-wide v10, p11, v0

    move-wide/from16 v0, p1

    move-wide/from16 v4, p5

    move-wide/from16 v8, p9

    invoke-static/range {v0 .. v11}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v0

    aput-wide v0, p13, v13

    .line 694
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 700
    :cond_0
    return-void
.end method

.method public linearCombination(D[DID[DI[DI)V
    .locals 11
    .param p1, "a1"    # D
    .param p3, "c1"    # [D
    .param p4, "offset1"    # I
    .param p5, "a2"    # D
    .param p7, "c2"    # [D
    .param p8, "offset2"    # I
    .param p9, "result"    # [D
    .param p10, "resultOffset"    # I

    .prologue
    .line 669
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 670
    add-int v9, p10, v8

    add-int v0, p4, v8

    aget-wide v2, p3, v0

    add-int v0, p8, v8

    aget-wide v6, p7, v0

    move-wide v0, p1

    move-wide/from16 v4, p5

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    aput-wide v0, p9, v9

    .line 669
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 673
    :cond_0
    return-void
.end method

.method public log([DI[DI)V
    .locals 12
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .prologue
    .line 1075
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [D

    .line 1076
    .local v3, "function":[D
    const/4 v0, 0x0

    aget-wide v4, p1, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1077
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1078
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    aget-wide v4, p1, p2

    div-double v8, v0, v4

    .line 1079
    .local v8, "inv":D
    move-wide v10, v8

    .line 1080
    .local v10, "xk":D
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v6, v0, :cond_0

    .line 1081
    aput-wide v10, v3, v6

    .line 1082
    neg-int v0, v6

    int-to-double v0, v0

    mul-double/2addr v0, v8

    mul-double/2addr v10, v0

    .line 1080
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v6    # "i":I
    .end local v8    # "inv":D
    .end local v10    # "xk":D
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move/from16 v5, p4

    .line 1087
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1089
    return-void
.end method

.method public log10([DI[DI)V
    .locals 12
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .prologue
    .line 1129
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [D

    .line 1130
    .local v3, "function":[D
    const/4 v0, 0x0

    aget-wide v4, p1, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log10(D)D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1131
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1132
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    aget-wide v4, p1, p2

    div-double v8, v0, v4

    .line 1133
    .local v8, "inv":D
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    div-double v10, v8, v0

    .line 1134
    .local v10, "xk":D
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v6, v0, :cond_0

    .line 1135
    aput-wide v10, v3, v6

    .line 1136
    neg-int v0, v6

    int-to-double v0, v0

    mul-double/2addr v0, v8

    mul-double/2addr v10, v0

    .line 1134
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v6    # "i":I
    .end local v8    # "inv":D
    .end local v10    # "xk":D
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move/from16 v5, p4

    .line 1141
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1143
    return-void
.end method

.method public log1p([DI[DI)V
    .locals 14
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .prologue
    .line 1102
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [D

    .line 1103
    .local v3, "function":[D
    const/4 v0, 0x0

    aget-wide v4, p1, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1104
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1105
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aget-wide v12, p1, p2

    add-double/2addr v4, v12

    div-double v8, v0, v4

    .line 1106
    .local v8, "inv":D
    move-wide v10, v8

    .line 1107
    .local v10, "xk":D
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v6, v0, :cond_0

    .line 1108
    aput-wide v10, v3, v6

    .line 1109
    neg-int v0, v6

    int-to-double v0, v0

    mul-double/2addr v0, v8

    mul-double/2addr v10, v0

    .line 1107
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v6    # "i":I
    .end local v8    # "inv":D
    .end local v10    # "xk":D
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 1114
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1116
    return-void
.end method

.method public multiply([DI[DI[DI)V
    .locals 10
    .param p1, "lhs"    # [D
    .param p2, "lhsOffset"    # I
    .param p3, "rhs"    # [D
    .param p4, "rhsOffset"    # I
    .param p5, "result"    # [D
    .param p6, "resultOffset"    # I

    .prologue
    .line 780
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 781
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    aget-object v2, v3, v0

    .line 782
    .local v2, "mappingI":[[I
    const-wide/16 v4, 0x0

    .line 783
    .local v4, "r":D
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 784
    aget-object v3, v2, v1

    const/4 v6, 0x0

    aget v3, v3, v6

    int-to-double v6, v3

    aget-object v3, v2, v1

    const/4 v8, 0x1

    aget v3, v3, v8

    add-int/2addr v3, p2

    aget-wide v8, p1, v3

    mul-double/2addr v6, v8

    aget-object v3, v2, v1

    const/4 v8, 0x2

    aget v3, v3, v8

    add-int/2addr v3, p4

    aget-wide v8, p3, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 783
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 788
    :cond_0
    add-int v3, p6, v0

    aput-wide v4, p5, v3

    .line 780
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 790
    .end local v1    # "j":I
    .end local v2    # "mappingI":[[I
    .end local v4    # "r":D
    :cond_1
    return-void
.end method

.method public pow(D[DI[DI)V
    .locals 13
    .param p1, "a"    # D
    .param p3, "operand"    # [D
    .param p4, "operandOffset"    # I
    .param p5, "result"    # [D
    .param p6, "resultOffset"    # I

    .prologue
    .line 853
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [D

    .line 854
    .local v3, "function":[D
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_2

    .line 855
    aget-wide v0, p3, p4

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    .line 856
    const/4 v0, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v3, v0

    .line 857
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 858
    .local v8, "infinity":D
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    array-length v0, v3

    if-ge v6, v0, :cond_1

    .line 859
    neg-double v8, v8

    .line 860
    aput-wide v8, v3, v6

    .line 858
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 862
    .end local v6    # "i":I
    .end local v8    # "infinity":D
    :cond_0
    aget-wide v0, p3, p4

    const-wide/16 v4, 0x0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_1

    .line 863
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    invoke-static {v3, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    :cond_1
    move-object v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    .line 875
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 877
    return-void

    .line 866
    :cond_2
    const/4 v0, 0x0

    aget-wide v4, p3, p4

    invoke-static {p1, p2, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 867
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v10

    .line 868
    .local v10, "lnA":D
    const/4 v6, 0x1

    .restart local v6    # "i":I
    :goto_1
    array-length v0, v3

    if-ge v6, v0, :cond_1

    .line 869
    add-int/lit8 v0, v6, -0x1

    aget-wide v0, v3, v0

    mul-double/2addr v0, v10

    aput-wide v0, v3, v6

    .line 868
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public pow([DID[DI)V
    .locals 13
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "p"    # D
    .param p5, "result"    # [D
    .param p6, "resultOffset"    # I

    .prologue
    .line 893
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [D

    .line 894
    .local v3, "function":[D
    aget-wide v0, p1, p2

    iget v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    int-to-double v4, v2

    sub-double v4, p3, v4

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v10

    .line 895
    .local v10, "xk":D
    iget v8, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    .local v8, "i":I
    :goto_0
    if-lez v8, :cond_0

    .line 896
    aput-wide v10, v3, v8

    .line 897
    aget-wide v0, p1, p2

    mul-double/2addr v10, v0

    .line 895
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 899
    :cond_0
    const/4 v0, 0x0

    aput-wide v10, v3, v0

    .line 900
    move-wide/from16 v6, p3

    .line 901
    .local v6, "coefficient":D
    const/4 v8, 0x1

    :goto_1
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v8, v0, :cond_1

    .line 902
    aget-wide v0, v3, v8

    mul-double/2addr v0, v6

    aput-wide v0, v3, v8

    .line 903
    int-to-double v0, v8

    sub-double v0, p3, v0

    mul-double/2addr v6, v0

    .line 901
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v4, p5

    move/from16 v5, p6

    .line 907
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 909
    return-void
.end method

.method public pow([DII[DI)V
    .locals 16
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "n"    # I
    .param p4, "result"    # [D
    .param p5, "resultOffset"    # I

    .prologue
    .line 923
    if-nez p3, :cond_0

    .line 925
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, p4, p5

    .line 926
    add-int/lit8 v2, p5, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v3

    add-int v3, v3, p5

    const-wide/16 v6, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v2, v3, v6, v7}, Ljava/util/Arrays;->fill([DIID)V

    .line 962
    :goto_0
    return-void

    .line 932
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v2, v2, 0x1

    new-array v5, v2, [D

    .line 934
    .local v5, "function":[D
    if-lez p3, :cond_3

    .line 936
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    move/from16 v0, p3

    invoke-static {v2, v0}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    .line 937
    .local v11, "maxOrder":I
    aget-wide v2, p1, p2

    sub-int v4, p3, v11

    invoke-static {v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v14

    .line 938
    .local v14, "xk":D
    move v10, v11

    .local v10, "i":I
    :goto_1
    if-lez v10, :cond_1

    .line 939
    aput-wide v14, v5, v10

    .line 940
    aget-wide v2, p1, p2

    mul-double/2addr v14, v2

    .line 938
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 942
    :cond_1
    const/4 v2, 0x0

    aput-wide v14, v5, v2

    .line 953
    .end local v11    # "maxOrder":I
    :cond_2
    move/from16 v0, p3

    int-to-double v8, v0

    .line 954
    .local v8, "coefficient":D
    const/4 v10, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v10, v2, :cond_4

    .line 955
    aget-wide v2, v5, v10

    mul-double/2addr v2, v8

    aput-wide v2, v5, v10

    .line 956
    sub-int v2, p3, v10

    int-to-double v2, v2

    mul-double/2addr v8, v2

    .line 954
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 945
    .end local v8    # "coefficient":D
    .end local v10    # "i":I
    .end local v14    # "xk":D
    :cond_3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aget-wide v6, p1, p2

    div-double v12, v2, v6

    .line 946
    .local v12, "inv":D
    move/from16 v0, p3

    neg-int v2, v0

    invoke-static {v12, v13, v2}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v14

    .line 947
    .restart local v14    # "xk":D
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v10, v2, :cond_2

    .line 948
    aput-wide v14, v5, v10

    .line 949
    mul-double/2addr v14, v12

    .line 947
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .end local v12    # "inv":D
    .restart local v8    # "coefficient":D
    :cond_4
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    .line 960
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    goto :goto_0
.end method

.method public pow([DI[DI[DI)V
    .locals 7
    .param p1, "x"    # [D
    .param p2, "xOffset"    # I
    .param p3, "y"    # [D
    .param p4, "yOffset"    # I
    .param p5, "result"    # [D
    .param p6, "resultOffset"    # I

    .prologue
    const/4 v2, 0x0

    .line 977
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v0

    new-array v1, v0, [D

    .line 978
    .local v1, "logX":[D
    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->log([DI[DI)V

    .line 979
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v0

    new-array v5, v0, [D

    .local v5, "yLogX":[D
    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v6, v2

    .line 980
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multiply([DI[DI[DI)V

    .line 981
    invoke-virtual {p0, v5, v2, p5, p6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->exp([DI[DI)V

    .line 982
    return-void
.end method

.method public remainder([DI[DI[DI)V
    .locals 10
    .param p1, "lhs"    # [D
    .param p2, "lhsOffset"    # I
    .param p3, "rhs"    # [D
    .param p4, "rhsOffset"    # I
    .param p5, "result"    # [D
    .param p6, "resultOffset"    # I

    .prologue
    .line 824
    aget-wide v6, p1, p2

    aget-wide v8, p3, p4

    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->IEEEremainder(DD)D

    move-result-wide v4

    .line 825
    .local v4, "rem":D
    aget-wide v6, p1, p2

    sub-double/2addr v6, v4

    aget-wide v8, p3, p4

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->rint(D)D

    move-result-wide v2

    .line 828
    .local v2, "k":D
    aput-wide v4, p5, p6

    .line 831
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 832
    add-int v1, p6, v0

    add-int v6, p2, v0

    aget-wide v6, p1, v6

    add-int v8, p4, v0

    aget-wide v8, p3, v8

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    aput-wide v6, p5, v1

    .line 831
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 835
    :cond_0
    return-void
.end method

.method public rootN([DII[DI)V
    .locals 20
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "n"    # I
    .param p4, "result"    # [D
    .param p5, "resultOffset"    # I

    .prologue
    .line 998
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v2, v2, 0x1

    new-array v5, v2, [D

    .line 1000
    .local v5, "function":[D
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_0

    .line 1001
    const/4 v2, 0x0

    aget-wide v6, p1, p2

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    aput-wide v6, v5, v2

    .line 1002
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    aget-wide v6, v5, v4

    div-double v14, v2, v6

    .line 1010
    .local v14, "xk":D
    :goto_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p3

    int-to-double v6, v0

    div-double v10, v2, v6

    .line 1011
    .local v10, "nReciprocal":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aget-wide v6, p1, p2

    div-double v12, v2, v6

    .line 1012
    .local v12, "xReciprocal":D
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v8, v2, :cond_2

    .line 1013
    aput-wide v14, v5, v8

    .line 1014
    int-to-double v2, v8

    sub-double v2, v10, v2

    mul-double/2addr v2, v12

    mul-double/2addr v14, v2

    .line 1012
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1003
    .end local v8    # "i":I
    .end local v10    # "nReciprocal":D
    .end local v12    # "xReciprocal":D
    .end local v14    # "xk":D
    :cond_0
    const/4 v2, 0x3

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    .line 1004
    const/4 v2, 0x0

    aget-wide v6, p1, p2

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->cbrt(D)D

    move-result-wide v6

    aput-wide v6, v5, v2

    .line 1005
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    const/4 v4, 0x0

    aget-wide v16, v5, v4

    mul-double v6, v6, v16

    const/4 v4, 0x0

    aget-wide v16, v5, v4

    mul-double v6, v6, v16

    div-double v14, v2, v6

    .restart local v14    # "xk":D
    goto :goto_0

    .line 1007
    .end local v14    # "xk":D
    :cond_1
    const/4 v2, 0x0

    aget-wide v6, p1, p2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-static {v6, v7, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v6

    aput-wide v6, v5, v2

    .line 1008
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p3

    int-to-double v6, v0

    const/4 v4, 0x0

    aget-wide v16, v5, v4

    add-int/lit8 v4, p3, -0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v16

    mul-double v6, v6, v16

    div-double v14, v2, v6

    .restart local v14    # "xk":D
    goto :goto_0

    .restart local v8    # "i":I
    .restart local v10    # "nReciprocal":D
    .restart local v12    # "xReciprocal":D
    :cond_2
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    .line 1018
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1020
    return-void
.end method

.method public sin([DI[DI)V
    .locals 7
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .prologue
    .line 1183
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [D

    .line 1184
    .local v3, "function":[D
    const/4 v0, 0x0

    aget-wide v4, p1, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1185
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1186
    const/4 v0, 0x1

    aget-wide v4, p1, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1187
    const/4 v6, 0x2

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v6, v0, :cond_0

    .line 1188
    add-int/lit8 v0, v6, -0x2

    aget-wide v0, v3, v0

    neg-double v0, v0

    aput-wide v0, v3, v6

    .line 1187
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v6    # "i":I
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .line 1193
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1195
    return-void
.end method

.method public sinh([DI[DI)V
    .locals 7
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .prologue
    .line 1512
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [D

    .line 1513
    .local v3, "function":[D
    const/4 v0, 0x0

    aget-wide v4, p1, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1514
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1515
    const/4 v0, 0x1

    aget-wide v4, p1, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1516
    const/4 v6, 0x2

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v6, v0, :cond_0

    .line 1517
    add-int/lit8 v0, v6, -0x2

    aget-wide v0, v3, v0

    aput-wide v0, v3, v6

    .line 1516
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v6    # "i":I
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .line 1522
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1524
    return-void
.end method

.method public subtract([DI[DI[DI)V
    .locals 6
    .param p1, "lhs"    # [D
    .param p2, "lhsOffset"    # I
    .param p3, "rhs"    # [D
    .param p4, "rhsOffset"    # I
    .param p5, "result"    # [D
    .param p6, "resultOffset"    # I

    .prologue
    .line 762
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 763
    add-int v1, p6, v0

    add-int v2, p2, v0

    aget-wide v2, p1, v2

    add-int v4, p4, v0

    aget-wide v4, p3, v4

    sub-double/2addr v2, v4

    aput-wide v2, p5, v1

    .line 762
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 765
    :cond_0
    return-void
.end method

.method public tan([DI[DI)V
    .locals 22
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .prologue
    .line 1209
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v2, v2, 0x1

    new-array v5, v2, [D

    .line 1210
    .local v5, "function":[D
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v12

    .line 1211
    .local v12, "t":D
    const/4 v2, 0x0

    aput-wide v12, v5, v2

    .line 1213
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v2, :cond_4

    .line 1222
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v2, v2, 0x2

    new-array v10, v2, [D

    .line 1223
    .local v10, "p":[D
    const/4 v2, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v10, v2

    .line 1224
    mul-double v14, v12, v12

    .line 1225
    .local v14, "t2":D
    const/4 v9, 0x1

    .local v9, "n":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v9, v2, :cond_4

    .line 1228
    const-wide/16 v16, 0x0

    .line 1229
    .local v16, "v":D
    add-int/lit8 v2, v9, 0x1

    int-to-double v6, v9

    aget-wide v18, v10, v9

    mul-double v6, v6, v18

    aput-wide v6, v10, v2

    .line 1230
    add-int/lit8 v8, v9, 0x1

    .local v8, "k":I
    :goto_1
    if-ltz v8, :cond_2

    .line 1231
    mul-double v2, v16, v14

    aget-wide v6, v10, v8

    add-double v16, v2, v6

    .line 1232
    const/4 v2, 0x2

    if-le v8, v2, :cond_1

    .line 1233
    add-int/lit8 v2, v8, -0x2

    add-int/lit8 v3, v8, -0x1

    int-to-double v6, v3

    add-int/lit8 v3, v8, -0x1

    aget-wide v18, v10, v3

    mul-double v6, v6, v18

    add-int/lit8 v3, v8, -0x3

    int-to-double v0, v3

    move-wide/from16 v18, v0

    add-int/lit8 v3, v8, -0x3

    aget-wide v20, v10, v3

    mul-double v18, v18, v20

    add-double v6, v6, v18

    aput-wide v6, v10, v2

    .line 1230
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, -0x2

    goto :goto_1

    .line 1234
    :cond_1
    const/4 v2, 0x2

    if-ne v8, v2, :cond_0

    .line 1235
    const/4 v2, 0x0

    const/4 v3, 0x1

    aget-wide v6, v10, v3

    aput-wide v6, v10, v2

    goto :goto_2

    .line 1238
    :cond_2
    and-int/lit8 v2, v9, 0x1

    if-nez v2, :cond_3

    .line 1239
    mul-double v16, v16, v12

    .line 1242
    :cond_3
    aput-wide v16, v5, v9

    .line 1225
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .end local v8    # "k":I
    .end local v9    # "n":I
    .end local v10    # "p":[D
    .end local v14    # "t2":D
    .end local v16    # "v":D
    :cond_4
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    .line 1248
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1250
    return-void
.end method

.method public tanh([DI[DI)V
    .locals 22
    .param p1, "operand"    # [D
    .param p2, "operandOffset"    # I
    .param p3, "result"    # [D
    .param p4, "resultOffset"    # I

    .prologue
    .line 1538
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v2, v2, 0x1

    new-array v5, v2, [D

    .line 1539
    .local v5, "function":[D
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->tanh(D)D

    move-result-wide v12

    .line 1540
    .local v12, "t":D
    const/4 v2, 0x0

    aput-wide v12, v5, v2

    .line 1542
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v2, :cond_4

    .line 1551
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v2, v2, 0x2

    new-array v10, v2, [D

    .line 1552
    .local v10, "p":[D
    const/4 v2, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v10, v2

    .line 1553
    mul-double v14, v12, v12

    .line 1554
    .local v14, "t2":D
    const/4 v9, 0x1

    .local v9, "n":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v9, v2, :cond_4

    .line 1557
    const-wide/16 v16, 0x0

    .line 1558
    .local v16, "v":D
    add-int/lit8 v2, v9, 0x1

    neg-int v3, v9

    int-to-double v6, v3

    aget-wide v18, v10, v9

    mul-double v6, v6, v18

    aput-wide v6, v10, v2

    .line 1559
    add-int/lit8 v8, v9, 0x1

    .local v8, "k":I
    :goto_1
    if-ltz v8, :cond_2

    .line 1560
    mul-double v2, v16, v14

    aget-wide v6, v10, v8

    add-double v16, v2, v6

    .line 1561
    const/4 v2, 0x2

    if-le v8, v2, :cond_1

    .line 1562
    add-int/lit8 v2, v8, -0x2

    add-int/lit8 v3, v8, -0x1

    int-to-double v6, v3

    add-int/lit8 v3, v8, -0x1

    aget-wide v18, v10, v3

    mul-double v6, v6, v18

    add-int/lit8 v3, v8, -0x3

    int-to-double v0, v3

    move-wide/from16 v18, v0

    add-int/lit8 v3, v8, -0x3

    aget-wide v20, v10, v3

    mul-double v18, v18, v20

    sub-double v6, v6, v18

    aput-wide v6, v10, v2

    .line 1559
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, -0x2

    goto :goto_1

    .line 1563
    :cond_1
    const/4 v2, 0x2

    if-ne v8, v2, :cond_0

    .line 1564
    const/4 v2, 0x0

    const/4 v3, 0x1

    aget-wide v6, v10, v3

    aput-wide v6, v10, v2

    goto :goto_2

    .line 1567
    :cond_2
    and-int/lit8 v2, v9, 0x1

    if-nez v2, :cond_3

    .line 1568
    mul-double v16, v16, v12

    .line 1571
    :cond_3
    aput-wide v16, v5, v9

    .line 1554
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .end local v8    # "k":I
    .end local v9    # "n":I
    .end local v10    # "p":[D
    .end local v14    # "t2":D
    .end local v16    # "v":D
    :cond_4
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    .line 1577
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    .line 1579
    return-void
.end method

.method public varargs taylor([DI[D)D
    .locals 12
    .param p1, "ds"    # [D
    .param p2, "dsOffset"    # I
    .param p3, "delta"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 1788
    const-wide/16 v6, 0x0

    .line 1789
    .local v6, "value":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1790
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getPartialDerivativeOrders(I)[I

    move-result-object v3

    .line 1791
    .local v3, "orders":[I
    add-int v8, p2, v1

    aget-wide v4, p1, v8

    .line 1792
    .local v4, "term":D
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    array-length v8, v3

    if-ge v2, v8, :cond_1

    .line 1793
    aget v8, v3, v2

    if-lez v8, :cond_0

    .line 1795
    :try_start_0
    aget-wide v8, p3, v2

    aget v10, v3, v2

    invoke-static {v8, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v8

    aget v10, v3, v2

    invoke-static {v10}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorial(I)J
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/NotPositiveException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    long-to-double v10, v10

    div-double/2addr v8, v10

    mul-double/2addr v4, v8

    .line 1792
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1797
    :catch_0
    move-exception v0

    .line 1799
    .local v0, "e":Lorg/apache/commons/math3/exception/NotPositiveException;
    new-instance v8, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v8, v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 1803
    .end local v0    # "e":Lorg/apache/commons/math3/exception/NotPositiveException;
    :cond_1
    add-double/2addr v6, v4

    .line 1789
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1805
    .end local v2    # "k":I
    .end local v3    # "orders":[I
    .end local v4    # "term":D
    :cond_2
    return-wide v6
.end method
