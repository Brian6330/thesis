.class public Lorg/apache/commons/math3/dfp/DfpMath;
.super Ljava/lang/Object;
.source "DfpMath.java"


# static fields
.field private static final POW_TRAP:Ljava/lang/String; = "pow"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static acos(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 4
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 950
    const/4 v0, 0x0

    .line 952
    .local v0, "negative":Z
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 953
    const/4 v0, 0x1

    .line 956
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    .line 958
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/math3/dfp/DfpMath;->atan(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 960
    .local v1, "result":Lorg/apache/commons/math3/dfp/Dfp;
    if-eqz v0, :cond_1

    .line 961
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getPi()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 964
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2
.end method

.method public static asin(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 941
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/dfp/DfpMath;->atan(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public static atan(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 17
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 876
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/commons/math3/dfp/DfpField;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v13

    .line 877
    .local v13, "zero":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/commons/math3/dfp/DfpField;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 878
    .local v3, "one":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/commons/math3/dfp/DfpField;->getSqr2Split()[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    .line 879
    .local v6, "sqr2Split":[Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/commons/math3/dfp/DfpField;->getPiSplit()[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 880
    .local v4, "piSplit":[Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v5, 0x0

    .line 881
    .local v5, "recp":Z
    const/4 v2, 0x0

    .line 882
    .local v2, "neg":Z
    const/4 v8, 0x0

    .line 884
    .local v8, "sub":Z
    const/4 v14, 0x0

    aget-object v14, v6, v14

    invoke-virtual {v14, v3}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v6, v15

    invoke-virtual {v14, v15}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v9

    .line 886
    .local v9, "ty":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v10, Lorg/apache/commons/math3/dfp/Dfp;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 887
    .local v10, "x":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v10, v13}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 888
    const/4 v2, 0x1

    .line 889
    invoke-virtual {v10}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    .line 892
    :cond_0
    invoke-virtual {v10, v3}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 893
    const/4 v5, 0x1

    .line 894
    invoke-virtual {v3, v10}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    .line 897
    :cond_1
    invoke-virtual {v10, v9}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 898
    const/4 v14, 0x2

    new-array v7, v14, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 899
    .local v7, "sty":[Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v8, 0x1

    .line 901
    const/4 v14, 0x0

    const/4 v15, 0x0

    aget-object v15, v6, v15

    invoke-virtual {v15, v3}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v15

    aput-object v15, v7, v14

    .line 902
    const/4 v14, 0x1

    const/4 v15, 0x1

    aget-object v15, v6, v15

    aput-object v15, v7, v14

    .line 904
    invoke-static {v10}, Lorg/apache/commons/math3/dfp/DfpMath;->split(Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    .line 906
    .local v11, "xs":[Lorg/apache/commons/math3/dfp/Dfp;
    invoke-static {v11, v7}, Lorg/apache/commons/math3/dfp/DfpMath;->splitMult([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 907
    .local v1, "ds":[Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v14, 0x0

    const/4 v15, 0x0

    aget-object v15, v1, v15

    invoke-virtual {v15, v3}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v15

    aput-object v15, v1, v14

    .line 909
    const/4 v14, 0x0

    const/4 v15, 0x0

    aget-object v15, v11, v15

    const/16 v16, 0x0

    aget-object v16, v7, v16

    invoke-virtual/range {v15 .. v16}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v15

    aput-object v15, v11, v14

    .line 910
    const/4 v14, 0x1

    const/4 v15, 0x1

    aget-object v15, v11, v15

    const/16 v16, 0x1

    aget-object v16, v7, v16

    invoke-virtual/range {v15 .. v16}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v15

    aput-object v15, v11, v14

    .line 912
    invoke-static {v11, v1}, Lorg/apache/commons/math3/dfp/DfpMath;->splitDiv([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    .line 913
    const/4 v14, 0x0

    aget-object v14, v11, v14

    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    .line 918
    .end local v1    # "ds":[Lorg/apache/commons/math3/dfp/Dfp;
    .end local v7    # "sty":[Lorg/apache/commons/math3/dfp/Dfp;
    .end local v11    # "xs":[Lorg/apache/commons/math3/dfp/Dfp;
    :cond_2
    invoke-static {v10}, Lorg/apache/commons/math3/dfp/DfpMath;->atanInternal(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v12

    .line 920
    .local v12, "y":Lorg/apache/commons/math3/dfp/Dfp;
    if-eqz v8, :cond_3

    .line 921
    const/4 v14, 0x0

    aget-object v14, v4, v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v4, v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v12

    .line 924
    :cond_3
    if-eqz v5, :cond_4

    .line 925
    const/4 v14, 0x0

    aget-object v14, v4, v14

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    invoke-virtual {v14, v12}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v4, v15

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v12

    .line 928
    :cond_4
    if-eqz v2, :cond_5

    .line 929
    invoke-virtual {v12}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v12

    .line 932
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v14

    return-object v14
.end method

.method protected static atanInternal(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 5
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 843
    new-instance v3, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v3, p0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 844
    .local v3, "y":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v2, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 845
    .local v2, "x":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v1, v3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 847
    .local v1, "py":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x5a

    if-ge v0, v4, :cond_0

    .line 848
    invoke-virtual {v2, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 849
    invoke-virtual {v2, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 850
    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 851
    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 852
    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 858
    :cond_0
    return-object v3

    .line 855
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/dfp/Dfp;

    .end local v1    # "py":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-direct {v1, v3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 847
    .restart local v1    # "py":Lorg/apache/commons/math3/dfp/Dfp;
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static cos(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 11
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 784
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/dfp/DfpField;->getPi()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 785
    .local v2, "pi":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/dfp/DfpField;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    .line 786
    .local v6, "zero":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v1, 0x0

    .line 789
    .local v1, "neg":Z
    invoke-virtual {v2, v8}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 793
    .local v4, "x":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 794
    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 801
    :cond_0
    invoke-virtual {v2, v8}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 802
    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 803
    const/4 v1, 0x1

    .line 807
    :cond_1
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 808
    new-array v0, v8, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 809
    .local v0, "c":[Lorg/apache/commons/math3/dfp/Dfp;
    aput-object v4, v0, v9

    .line 810
    aput-object v6, v0, v10

    .line 812
    invoke-static {v0}, Lorg/apache/commons/math3/dfp/DfpMath;->cosInternal([Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 821
    .local v5, "y":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_0
    if-eqz v1, :cond_2

    .line 822
    invoke-virtual {v5}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 825
    :cond_2
    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    return-object v7

    .line 814
    .end local v0    # "c":[Lorg/apache/commons/math3/dfp/Dfp;
    .end local v5    # "y":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_3
    new-array v0, v8, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 815
    .restart local v0    # "c":[Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/dfp/DfpField;->getPiSplit()[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 816
    .local v3, "piSplit":[Lorg/apache/commons/math3/dfp/Dfp;
    aget-object v7, v3, v9

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v0, v9

    .line 817
    aget-object v7, v3, v10

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v0, v10

    .line 818
    invoke-static {v0}, Lorg/apache/commons/math3/dfp/DfpMath;->sinInternal([Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .restart local v5    # "y":Lorg/apache/commons/math3/dfp/Dfp;
    goto :goto_0
.end method

.method protected static cosInternal([Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 9
    .param p0, "a"    # [Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    const/4 v8, 0x0

    .line 700
    aget-object v7, p0, v8

    invoke-virtual {v7}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 703
    .local v3, "one":Lorg/apache/commons/math3/dfp/Dfp;
    move-object v5, v3

    .line 704
    .local v5, "x":Lorg/apache/commons/math3/dfp/Dfp;
    move-object v6, v3

    .line 705
    .local v6, "y":Lorg/apache/commons/math3/dfp/Dfp;
    aget-object v7, p0, v8

    const/4 v8, 0x1

    aget-object v8, p0, v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 706
    .local v0, "c":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 708
    move-object v1, v3

    .line 709
    .local v1, "fact":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v4, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v4, v6}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 711
    .local v4, "py":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    const/16 v7, 0x5a

    if-ge v2, v7, :cond_0

    .line 712
    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 713
    invoke-virtual {v5}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 715
    add-int/lit8 v7, v2, -0x1

    mul-int/2addr v7, v2

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 717
    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    .line 718
    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 724
    :cond_0
    return-object v6

    .line 721
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/dfp/Dfp;

    .end local v4    # "py":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-direct {v4, v6}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 711
    .restart local v4    # "py":Lorg/apache/commons/math3/dfp/Dfp;
    add-int/lit8 v2, v2, 0x2

    goto :goto_0
.end method

.method public static exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 7
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    const/4 v6, 0x1

    .line 265
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 266
    .local v4, "inta":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 268
    .local v2, "fraca":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->intValue()I

    move-result v3

    .line 269
    .local v3, "ia":I
    const v5, 0x7ffffffe

    if-le v3, v5, :cond_0

    .line 271
    invoke-virtual {p0, v6, v6}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 282
    :goto_0
    return-object v5

    .line 274
    :cond_0
    const v5, -0x7ffffffe

    if-ge v3, v5, :cond_1

    .line 276
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/dfp/DfpField;->getESplit()[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/apache/commons/math3/dfp/DfpMath;->splitPow([Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 280
    .local v1, "einta":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-static {v2}, Lorg/apache/commons/math3/dfp/DfpMath;->expInternal(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 282
    .local v0, "efraca":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    goto :goto_0
.end method

.method protected static expInternal(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 6
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 291
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 292
    .local v4, "y":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 293
    .local v3, "x":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 294
    .local v0, "fact":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v2, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v2, v4}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 296
    .local v2, "py":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v5, 0x5a

    if-ge v1, v5, :cond_0

    .line 297
    invoke-virtual {v3, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 298
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 299
    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 300
    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 306
    :cond_0
    return-object v4

    .line 303
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/dfp/Dfp;

    .end local v2    # "py":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-direct {v2, v4}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 296
    .restart local v2    # "py":Lorg/apache/commons/math3/dfp/Dfp;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static log(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 12
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 320
    const/4 v2, 0x0

    .line 323
    .local v2, "p2":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 325
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v7

    invoke-virtual {v7, v10}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 326
    const-string v7, "ln"

    const/4 v8, 0x3

    invoke-virtual {p0, v10, v8}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    invoke-virtual {p0, v10, v7, p0, v8}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    .line 375
    .end local p0    # "a":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_1
    :goto_0
    return-object p0

    .line 329
    .restart local p0    # "a":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v7

    if-eq v7, v10, :cond_1

    .line 333
    new-instance v6, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v6, p0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 334
    .local v6, "x":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v6}, Lorg/apache/commons/math3/dfp/Dfp;->log10K()I

    move-result v1

    .line 336
    .local v1, "lr":I
    const/16 v7, 0x2710

    invoke-virtual {p0, v7}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-static {v7, v1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    .line 337
    invoke-virtual {v6}, Lorg/apache/commons/math3/dfp/Dfp;->floor()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/dfp/Dfp;->intValue()I

    move-result v0

    .line 339
    .local v0, "ix":I
    :goto_1
    if-le v0, v11, :cond_3

    .line 340
    shr-int/lit8 v0, v0, 0x1

    .line 341
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 345
    :cond_3
    invoke-static {v6}, Lorg/apache/commons/math3/dfp/DfpMath;->split(Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 346
    .local v3, "spx":[Lorg/apache/commons/math3/dfp/Dfp;
    new-array v4, v11, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 347
    .local v4, "spy":[Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-static {v7, v2}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v4, v9

    .line 348
    aget-object v7, v3, v9

    aget-object v8, v4, v9

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v3, v9

    .line 349
    aget-object v7, v3, v10

    aget-object v8, v4, v9

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v3, v10

    .line 351
    const-string v7, "1.33333"

    invoke-virtual {p0, v7}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v4, v9

    .line 352
    :goto_2
    aget-object v7, v3, v9

    aget-object v8, v3, v10

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aget-object v8, v4, v9

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 353
    aget-object v7, v3, v9

    invoke-virtual {v7, v11}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v3, v9

    .line 354
    aget-object v7, v3, v10

    invoke-virtual {v7, v11}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v3, v10

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 359
    :cond_4
    invoke-static {v3}, Lorg/apache/commons/math3/dfp/DfpMath;->logInternal([Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 361
    .local v5, "spz":[Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v8, v1, 0x4

    add-int/2addr v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v3, v9

    .line 362
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v3, v10

    .line 363
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/dfp/DfpField;->getLn2Split()[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-static {v7, v3}, Lorg/apache/commons/math3/dfp/DfpMath;->splitMult([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 365
    aget-object v7, v5, v9

    aget-object v8, v4, v9

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v5, v9

    .line 366
    aget-object v7, v5, v10

    aget-object v8, v4, v10

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v5, v10

    .line 368
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v8, v1, 0x4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v3, v9

    .line 369
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v3, v10

    .line 370
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/dfp/DfpField;->getLn5Split()[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-static {v7, v3}, Lorg/apache/commons/math3/dfp/DfpMath;->splitMult([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 372
    aget-object v7, v5, v9

    aget-object v8, v4, v9

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v5, v9

    .line 373
    aget-object v7, v5, v10

    aget-object v8, v4, v10

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v5, v10

    .line 375
    aget-object v7, v5, v9

    aget-object v8, v5, v10

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto/16 :goto_0
.end method

.method protected static logInternal([Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 11
    .param p0, "a"    # [Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    const/4 v9, 0x4

    const/4 v10, 0x0

    .line 439
    aget-object v7, p0, v10

    invoke-virtual {v7, v9}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, p0, v8

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 440
    .local v4, "t":Lorg/apache/commons/math3/dfp/Dfp;
    aget-object v7, p0, v10

    const-string v8, "-0.25"

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aget-object v8, p0, v10

    const-string v9, "0.25"

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 442
    .local v5, "x":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v6, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v6, v5}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 443
    .local v6, "y":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v2, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v2, v5}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 444
    .local v2, "num":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v3, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v3, v6}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 445
    .local v3, "py":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v0, 0x1

    .line 446
    .local v0, "den":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v7, 0x2710

    if-ge v1, v7, :cond_0

    .line 447
    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 448
    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 449
    add-int/lit8 v0, v0, 0x2

    .line 450
    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 451
    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    .line 452
    invoke-virtual {v6, v3}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 458
    :cond_0
    aget-object v7, p0, v10

    invoke-virtual {v7}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    .line 460
    invoke-static {v6}, Lorg/apache/commons/math3/dfp/DfpMath;->split(Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    return-object v7

    .line 455
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/dfp/Dfp;

    .end local v3    # "py":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-direct {v3, v6}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 446
    .restart local v3    # "py":Lorg/apache/commons/math3/dfp/Dfp;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 7
    .param p0, "base"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p1, "a"    # I

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 214
    .local v0, "invert":Z
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 216
    .local v4, "result":Lorg/apache/commons/math3/dfp/Dfp;
    if-nez p1, :cond_0

    move-object v6, v4

    .line 252
    :goto_0
    return-object v6

    .line 221
    :cond_0
    if-gez p1, :cond_1

    .line 222
    const/4 v0, 0x1

    .line 223
    neg-int p1, p1

    .line 228
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v3, p0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 230
    .local v3, "r":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v5, 0x1

    .line 234
    .local v5, "trial":I
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v1, v3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 235
    .local v1, "prevr":Lorg/apache/commons/math3/dfp/Dfp;
    move v2, v5

    .line 236
    .local v2, "prevtrial":I
    invoke-virtual {v3, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 237
    mul-int/lit8 v5, v5, 0x2

    .line 238
    if-gt p1, v5, :cond_2

    .line 240
    move-object v3, v1

    .line 241
    move v5, v2

    .line 243
    sub-int/2addr p1, v5

    .line 244
    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 246
    const/4 v6, 0x1

    if-ge p1, v6, :cond_1

    .line 248
    if-eqz v0, :cond_3

    .line 249
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 252
    :cond_3
    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    goto :goto_0
.end method

.method public static pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 21
    .param p0, "x"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p1, "y"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 507
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 508
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 509
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    .line 510
    .local v11, "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/16 v17, 0x3

    move/from16 v0, v17

    iput-byte v0, v11, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 511
    const/16 v17, 0x1

    const-string v18, "pow"

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3, v11}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    .line 660
    .end local v11    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    .end local p0    # "x":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_0
    :goto_0
    return-object p0

    .line 514
    .restart local p0    # "x":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v16

    .line 515
    .local v16, "zero":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v9

    .line 516
    .local v9, "one":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v12

    .line 517
    .local v12, "two":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v8, 0x0

    .line 521
    .local v8, "invert":Z
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 522
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto :goto_0

    .line 525
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 526
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 528
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 529
    const/16 v17, 0x1

    const-string v18, "pow"

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto :goto_0

    .line 534
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v17

    if-nez v17, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 536
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 537
    const/16 v17, 0x1

    const-string v18, "pow"

    const/16 v19, 0x1

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p0

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto :goto_0

    .line 541
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 542
    move-object/from16 v0, p0

    invoke-static {v9, v0}, Lorg/apache/commons/math3/dfp/Dfp;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 544
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 545
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto/16 :goto_0

    .line 547
    :cond_6
    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto/16 :goto_0

    .line 551
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 553
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 554
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto/16 :goto_0

    .line 556
    :cond_8
    const/16 v17, -0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto/16 :goto_0

    .line 560
    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 561
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto/16 :goto_0

    .line 563
    :cond_a
    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto/16 :goto_0

    .line 569
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 571
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    .line 572
    const/4 v8, 0x1

    .line 575
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 576
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v17

    if-eqz v17, :cond_d

    move-object/from16 p0, p1

    .line 577
    goto/16 :goto_0

    .line 579
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto/16 :goto_0

    .line 583
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 584
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 585
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto/16 :goto_0

    .line 587
    :cond_f
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/apache/commons/math3/dfp/Dfp;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto/16 :goto_0

    .line 591
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 592
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 593
    const/16 v17, 0x1

    const-string v18, "pow"

    const/16 v19, 0x1

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p0

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto/16 :goto_0

    .line 596
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 598
    if-eqz v8, :cond_15

    .line 600
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v17

    if-nez v17, :cond_13

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_13

    .line 602
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 603
    const/16 v17, -0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto/16 :goto_0

    .line 605
    :cond_12
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto/16 :goto_0

    .line 609
    :cond_13
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 610
    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto/16 :goto_0

    .line 612
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto/16 :goto_0

    .line 617
    :cond_15
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 620
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto/16 :goto_0

    .line 625
    :cond_16
    if-eqz v8, :cond_17

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_17

    .line 626
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 627
    const/16 v17, 0x1

    const-string v18, "pow"

    const/16 v19, 0x1

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p0

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto/16 :goto_0

    .line 633
    :cond_17
    const v17, 0x5f5e100

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const v17, -0x5f5e100

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 634
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v13

    .line 635
    .local v13, "u":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v13}, Lorg/apache/commons/math3/dfp/Dfp;->intValue()I

    move-result v14

    .line 637
    .local v14, "ui":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v15

    .line 639
    .local v15, "v":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual/range {v15 .. v16}, Lorg/apache/commons/math3/dfp/Dfp;->unequal(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 640
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/DfpMath;->log(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 641
    .local v5, "a":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/dfp/DfpField;->getLn2()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    .line 643
    .local v6, "b":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/dfp/DfpField;->getLn2()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    .line 644
    .local v7, "c":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/DfpMath;->split(Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v14}, Lorg/apache/commons/math3/dfp/DfpMath;->splitPow([Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    .line 645
    .local v10, "r":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v6}, Lorg/apache/commons/math3/dfp/Dfp;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v12, v0}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    .line 646
    invoke-static {v7}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    .line 655
    .end local v5    # "a":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v6    # "b":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v7    # "c":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v13    # "u":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v14    # "ui":I
    .end local v15    # "v":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_1
    if-eqz v8, :cond_18

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_18

    .line 657
    invoke-virtual {v10}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    .line 660
    :cond_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto/16 :goto_0

    .line 648
    .end local v10    # "r":Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v13    # "u":Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v14    # "ui":I
    .restart local v15    # "v":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_19
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/DfpMath;->split(Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v14}, Lorg/apache/commons/math3/dfp/DfpMath;->splitPow([Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    .restart local v10    # "r":Lorg/apache/commons/math3/dfp/Dfp;
    goto :goto_1

    .line 652
    .end local v10    # "r":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v13    # "u":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v14    # "ui":I
    .end local v15    # "v":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_1a
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/DfpMath;->log(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    .restart local v10    # "r":Lorg/apache/commons/math3/dfp/Dfp;
    goto :goto_1
.end method

.method public static sin(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 11
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 733
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/dfp/DfpField;->getPi()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 734
    .local v2, "pi":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/dfp/DfpField;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    .line 735
    .local v6, "zero":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v1, 0x0

    .line 738
    .local v1, "neg":Z
    invoke-virtual {v2, v8}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 742
    .local v4, "x":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 743
    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 744
    const/4 v1, 0x1

    .line 751
    :cond_0
    invoke-virtual {v2, v8}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 752
    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 756
    :cond_1
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 757
    new-array v0, v8, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 758
    .local v0, "c":[Lorg/apache/commons/math3/dfp/Dfp;
    aput-object v4, v0, v9

    .line 759
    aput-object v6, v0, v10

    .line 762
    invoke-static {v4}, Lorg/apache/commons/math3/dfp/DfpMath;->split(Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/math3/dfp/DfpMath;->sinInternal([Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 771
    .local v5, "y":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_0
    if-eqz v1, :cond_2

    .line 772
    invoke-virtual {v5}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 775
    :cond_2
    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    return-object v7

    .line 764
    .end local v0    # "c":[Lorg/apache/commons/math3/dfp/Dfp;
    .end local v5    # "y":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_3
    new-array v0, v8, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 765
    .restart local v0    # "c":[Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/dfp/DfpField;->getPiSplit()[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 766
    .local v3, "piSplit":[Lorg/apache/commons/math3/dfp/Dfp;
    aget-object v7, v3, v9

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v0, v9

    .line 767
    aget-object v7, v3, v10

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v0, v10

    .line 768
    invoke-static {v0}, Lorg/apache/commons/math3/dfp/DfpMath;->cosInternal([Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .restart local v5    # "y":Lorg/apache/commons/math3/dfp/Dfp;
    goto :goto_0
.end method

.method protected static sinInternal([Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 9
    .param p0, "a"    # [Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    const/4 v8, 0x0

    .line 671
    aget-object v6, p0, v8

    const/4 v7, 0x1

    aget-object v7, p0, v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 672
    .local v0, "c":Lorg/apache/commons/math3/dfp/Dfp;
    move-object v5, v0

    .line 673
    .local v5, "y":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 674
    move-object v4, v5

    .line 675
    .local v4, "x":Lorg/apache/commons/math3/dfp/Dfp;
    aget-object v6, p0, v8

    invoke-virtual {v6}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 676
    .local v1, "fact":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v3, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v3, v5}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 678
    .local v3, "py":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v2, 0x3

    .local v2, "i":I
    :goto_0
    const/16 v6, 0x5a

    if-ge v2, v6, :cond_0

    .line 679
    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 680
    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 682
    add-int/lit8 v6, v2, -0x1

    mul-int/2addr v6, v2

    invoke-virtual {v1, v6}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 683
    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 684
    invoke-virtual {v5, v3}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 690
    :cond_0
    return-object v5

    .line 687
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/dfp/Dfp;

    .end local v3    # "py":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-direct {v3, v5}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 678
    .restart local v3    # "py":Lorg/apache/commons/math3/dfp/Dfp;
    add-int/lit8 v2, v2, 0x2

    goto :goto_0
.end method

.method protected static split(Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 4
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    const/4 v3, 0x0

    .line 94
    const/4 v2, 0x2

    new-array v0, v2, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 95
    .local v0, "result":[Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getRadixDigits()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->power10K(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 96
    .local v1, "shift":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    aput-object v2, v0, v3

    .line 97
    const/4 v2, 0x1

    aget-object v3, v0, v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    aput-object v3, v0, v2

    .line 98
    return-object v0
.end method

.method protected static split(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 11
    .param p0, "field"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p1, "a"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x39

    const/16 v8, 0x30

    .line 45
    const/4 v6, 0x2

    new-array v3, v6, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 47
    .local v3, "result":[Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v2, 0x1

    .line 48
    .local v2, "leading":Z
    const/4 v5, 0x0

    .line 49
    .local v5, "sp":I
    const/4 v4, 0x0

    .line 51
    .local v4, "sig":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    new-array v0, v6, [C

    .line 53
    .local v0, "buf":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_2

    .line 54
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v0, v1

    .line 56
    aget-char v6, v0, v1

    const/16 v7, 0x31

    if-lt v6, v7, :cond_0

    aget-char v6, v0, v1

    if-gt v6, v9, :cond_0

    .line 57
    const/4 v2, 0x0

    .line 60
    :cond_0
    aget-char v6, v0, v1

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_1

    .line 61
    rsub-int v6, v4, 0x190

    rem-int/lit8 v6, v6, 0x4

    add-int/2addr v4, v6

    .line 62
    const/4 v2, 0x0

    .line 65
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x4

    if-ne v4, v6, :cond_4

    .line 66
    move v5, v1

    .line 75
    :cond_2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0, v10, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/dfp/DfpField;->newDfp(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    aput-object v6, v3, v10

    .line 77
    const/4 v1, 0x0

    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_6

    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v0, v1

    .line 79
    aget-char v6, v0, v1

    if-lt v6, v8, :cond_3

    aget-char v6, v0, v1

    if-gt v6, v9, :cond_3

    if-ge v1, v5, :cond_3

    .line 80
    aput-char v8, v0, v1

    .line 77
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    :cond_4
    aget-char v6, v0, v1

    if-lt v6, v8, :cond_5

    aget-char v6, v0, v1

    if-gt v6, v9, :cond_5

    if-nez v2, :cond_5

    .line 71
    add-int/lit8 v4, v4, 0x1

    .line 53
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_6
    const/4 v6, 0x1

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v7}, Lorg/apache/commons/math3/dfp/DfpField;->newDfp(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    aput-object v7, v3, v6

    .line 86
    return-object v3
.end method

.method protected static splitDiv([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 6
    .param p0, "a"    # [Lorg/apache/commons/math3/dfp/Dfp;
    .param p1, "b"    # [Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 138
    const/4 v1, 0x2

    new-array v0, v1, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 140
    .local v0, "result":[Lorg/apache/commons/math3/dfp/Dfp;
    aget-object v1, p0, v4

    aget-object v2, p1, v4

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aput-object v1, v0, v4

    .line 141
    aget-object v1, p0, v5

    aget-object v2, p1, v4

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aget-object v2, p0, v4

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aput-object v1, v0, v5

    .line 142
    aget-object v1, v0, v5

    aget-object v2, p1, v4

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    aget-object v3, p1, v4

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aput-object v1, v0, v5

    .line 144
    return-object v0
.end method

.method protected static splitMult([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 5
    .param p0, "a"    # [Lorg/apache/commons/math3/dfp/Dfp;
    .param p1, "b"    # [Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    const/4 v1, 0x2

    new-array v0, v1, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 112
    .local v0, "result":[Lorg/apache/commons/math3/dfp/Dfp;
    aget-object v1, p0, v3

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aput-object v1, v0, v4

    .line 113
    aget-object v1, p0, v3

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aput-object v1, v0, v3

    .line 119
    aget-object v1, v0, v3

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v1

    if-eq v1, v4, :cond_0

    aget-object v1, v0, v3

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-object v0

    .line 123
    :cond_1
    aget-object v1, p0, v3

    aget-object v2, p1, v4

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aget-object v2, p0, v4

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aget-object v2, p0, v4

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method protected static splitPow([Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 9
    .param p0, "base"    # [Lorg/apache/commons/math3/dfp/Dfp;
    .param p1, "a"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "invert":Z
    new-array v2, v5, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 157
    .local v2, "r":[Lorg/apache/commons/math3/dfp/Dfp;
    new-array v3, v5, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 158
    .local v3, "result":[Lorg/apache/commons/math3/dfp/Dfp;
    aget-object v5, p0, v7

    invoke-virtual {v5}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    aput-object v5, v3, v7

    .line 159
    aget-object v5, p0, v7

    invoke-virtual {v5}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    aput-object v5, v3, v8

    .line 161
    if-nez p1, :cond_0

    .line 163
    aget-object v5, v3, v7

    aget-object v6, v3, v8

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 201
    :goto_0
    return-object v5

    .line 166
    :cond_0
    if-gez p1, :cond_1

    .line 168
    const/4 v0, 0x1

    .line 169
    neg-int p1, p1

    .line 174
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/dfp/Dfp;

    aget-object v6, p0, v7

    invoke-direct {v5, v6}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    aput-object v5, v2, v7

    .line 175
    new-instance v5, Lorg/apache/commons/math3/dfp/Dfp;

    aget-object v6, p0, v8

    invoke-direct {v5, v6}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    aput-object v5, v2, v8

    .line 176
    const/4 v4, 0x1

    .line 180
    .local v4, "trial":I
    :goto_1
    move v1, v4

    .line 181
    .local v1, "prevtrial":I
    mul-int/lit8 v4, v4, 0x2

    .line 182
    if-le v4, p1, :cond_3

    .line 188
    move v4, v1

    .line 190
    sub-int/2addr p1, v4

    .line 191
    invoke-static {v3, v2}, Lorg/apache/commons/math3/dfp/DfpMath;->splitMult([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 193
    if-ge p1, v8, :cond_1

    .line 195
    aget-object v5, v3, v7

    aget-object v6, v3, v8

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    aput-object v5, v3, v7

    .line 197
    if-eqz v0, :cond_2

    .line 198
    aget-object v5, p0, v7

    invoke-virtual {v5}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    aput-object v5, v3, v7

    .line 201
    :cond_2
    aget-object v5, v3, v7

    goto :goto_0

    .line 185
    :cond_3
    invoke-static {v2, v2}, Lorg/apache/commons/math3/dfp/DfpMath;->splitMult([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    goto :goto_1
.end method

.method public static tan(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;

    .prologue
    .line 834
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->sin(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->cos(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method
