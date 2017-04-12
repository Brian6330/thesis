.class public Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;
.super Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;
.source "LegendreHighPrecisionRuleFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory",
        "<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Ljava/math/MathContext;

.field private final minusOne:Ljava/math/BigDecimal;

.field private final oneHalf:Ljava/math/BigDecimal;

.field private final two:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;-><init>(Ljava/math/MathContext;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/math/MathContext;)V
    .locals 2
    .param p1, "mContext"    # Ljava/math/MathContext;

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    .line 57
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "2"

    invoke-direct {v0, v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->two:Ljava/math/BigDecimal;

    .line 58
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "-1"

    invoke-direct {v0, v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->minusOne:Ljava/math/BigDecimal;

    .line 59
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0.5"

    invoke-direct {v0, v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->oneHalf:Ljava/math/BigDecimal;

    .line 60
    return-void
.end method


# virtual methods
.method protected computeRule(I)Lorg/apache/commons/math3/util/Pair;
    .locals 34
    .param p1, "numberOfPoints"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/util/Pair",
            "<[",
            "Ljava/math/BigDecimal;",
            "[",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 67
    const/16 v29, 0x1

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 69
    new-instance v29, Lorg/apache/commons/math3/util/Pair;

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/math/BigDecimal;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    sget-object v32, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    aput-object v32, v30, v31

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/math/BigDecimal;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->two:Ljava/math/BigDecimal;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    invoke-direct/range {v29 .. v31}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    :goto_0
    return-object v29

    .line 76
    :cond_0
    add-int/lit8 v29, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->getRuleInternal(I)Lorg/apache/commons/math3/util/Pair;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Ljava/math/BigDecimal;

    .line 79
    .local v25, "previousPoints":[Ljava/math/BigDecimal;
    move/from16 v0, p1

    new-array v0, v0, [Ljava/math/BigDecimal;

    move-object/from16 v21, v0

    .line 80
    .local v21, "points":[Ljava/math/BigDecimal;
    move/from16 v0, p1

    new-array v0, v0, [Ljava/math/BigDecimal;

    move-object/from16 v28, v0

    .line 83
    .local v28, "weights":[Ljava/math/BigDecimal;
    div-int/lit8 v11, p1, 0x2

    .line 84
    .local v11, "iMax":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v11, :cond_9

    .line 86
    if-nez v10, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->minusOne:Ljava/math/BigDecimal;

    .line 88
    .local v3, "a":Ljava/math/BigDecimal;
    :goto_2
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v11, v0, :cond_2

    sget-object v4, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 90
    .local v4, "b":Ljava/math/BigDecimal;
    :goto_3
    sget-object v18, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 92
    .local v18, "pma":Ljava/math/BigDecimal;
    move-object v15, v3

    .line 94
    .local v15, "pa":Ljava/math/BigDecimal;
    sget-object v19, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 96
    .local v19, "pmb":Ljava/math/BigDecimal;
    move-object/from16 v16, v4

    .line 97
    .local v16, "pb":Ljava/math/BigDecimal;
    const/4 v13, 0x1

    .local v13, "j":I
    :goto_4
    move/from16 v0, p1

    if-ge v13, v0, :cond_3

    .line 98
    new-instance v7, Ljava/math/BigDecimal;

    mul-int/lit8 v29, v13, 0x2

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v30, v0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v7, v0, v1}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 99
    .local v7, "b_two_j_p_1":Ljava/math/BigDecimal;
    new-instance v5, Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-direct {v5, v13, v0}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 100
    .local v5, "b_j":Ljava/math/BigDecimal;
    new-instance v6, Ljava/math/BigDecimal;

    add-int/lit8 v29, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v30, v0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v6, v0, v1}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 105
    .local v6, "b_j_p_1":Ljava/math/BigDecimal;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v3, v7, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v26

    .line 106
    .local v26, "tmp1":Ljava/math/BigDecimal;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v26

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v27

    .line 109
    .local v27, "tmp2":Ljava/math/BigDecimal;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v22

    .line 110
    .local v22, "ppa":Ljava/math/BigDecimal;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v22

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v4, v7, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v26

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v26

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v27

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v23

    .line 120
    .local v23, "ppb":Ljava/math/BigDecimal;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v23

    .line 122
    move-object/from16 v18, v15

    .line 123
    move-object/from16 v15, v22

    .line 124
    move-object/from16 v19, v16

    .line 125
    move-object/from16 v16, v23

    .line 97
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 86
    .end local v3    # "a":Ljava/math/BigDecimal;
    .end local v4    # "b":Ljava/math/BigDecimal;
    .end local v5    # "b_j":Ljava/math/BigDecimal;
    .end local v6    # "b_j_p_1":Ljava/math/BigDecimal;
    .end local v7    # "b_two_j_p_1":Ljava/math/BigDecimal;
    .end local v13    # "j":I
    .end local v15    # "pa":Ljava/math/BigDecimal;
    .end local v16    # "pb":Ljava/math/BigDecimal;
    .end local v18    # "pma":Ljava/math/BigDecimal;
    .end local v19    # "pmb":Ljava/math/BigDecimal;
    .end local v22    # "ppa":Ljava/math/BigDecimal;
    .end local v23    # "ppb":Ljava/math/BigDecimal;
    .end local v26    # "tmp1":Ljava/math/BigDecimal;
    .end local v27    # "tmp2":Ljava/math/BigDecimal;
    :cond_1
    add-int/lit8 v29, v10, -0x1

    aget-object v3, v25, v29

    goto/16 :goto_2

    .line 88
    .restart local v3    # "a":Ljava/math/BigDecimal;
    :cond_2
    aget-object v4, v25, v10

    goto/16 :goto_3

    .line 129
    .restart local v4    # "b":Ljava/math/BigDecimal;
    .restart local v13    # "j":I
    .restart local v15    # "pa":Ljava/math/BigDecimal;
    .restart local v16    # "pb":Ljava/math/BigDecimal;
    .restart local v18    # "pma":Ljava/math/BigDecimal;
    .restart local v19    # "pmb":Ljava/math/BigDecimal;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v3, v4, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->oneHalf:Ljava/math/BigDecimal;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v8

    .line 131
    .local v8, "c":Ljava/math/BigDecimal;
    sget-object v20, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 133
    .local v20, "pmc":Ljava/math/BigDecimal;
    move-object/from16 v17, v8

    .line 134
    .local v17, "pc":Ljava/math/BigDecimal;
    const/4 v9, 0x0

    .line 135
    .local v9, "done":Z
    :cond_4
    :goto_5
    if-nez v9, :cond_8

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v4, v3, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v26

    .line 137
    .restart local v26    # "tmp1":Ljava/math/BigDecimal;
    invoke-virtual {v8}, Ljava/math/BigDecimal;->ulp()Ljava/math/BigDecimal;

    move-result-object v29

    sget-object v30, Ljava/math/BigDecimal;->TEN:Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v27

    .line 138
    .restart local v27    # "tmp2":Ljava/math/BigDecimal;
    invoke-virtual/range {v26 .. v27}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v29

    if-gtz v29, :cond_5

    const/4 v9, 0x1

    .line 139
    :goto_6
    sget-object v20, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 140
    move-object/from16 v17, v8

    .line 141
    const/4 v13, 0x1

    :goto_7
    move/from16 v0, p1

    if-ge v13, v0, :cond_6

    .line 142
    new-instance v7, Ljava/math/BigDecimal;

    mul-int/lit8 v29, v13, 0x2

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v30, v0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v7, v0, v1}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 143
    .restart local v7    # "b_two_j_p_1":Ljava/math/BigDecimal;
    new-instance v5, Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-direct {v5, v13, v0}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 144
    .restart local v5    # "b_j":Ljava/math/BigDecimal;
    new-instance v6, Ljava/math/BigDecimal;

    add-int/lit8 v29, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v30, v0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v6, v0, v1}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 147
    .restart local v6    # "b_j_p_1":Ljava/math/BigDecimal;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v8, v7, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v26

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v26

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v27

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v24

    .line 152
    .local v24, "ppc":Ljava/math/BigDecimal;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v24

    .line 154
    move-object/from16 v20, v17

    .line 155
    move-object/from16 v17, v24

    .line 141
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    .line 138
    .end local v5    # "b_j":Ljava/math/BigDecimal;
    .end local v6    # "b_j_p_1":Ljava/math/BigDecimal;
    .end local v7    # "b_two_j_p_1":Ljava/math/BigDecimal;
    .end local v24    # "ppc":Ljava/math/BigDecimal;
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 158
    :cond_6
    if-nez v9, :cond_4

    .line 159
    invoke-virtual {v15}, Ljava/math/BigDecimal;->signum()I

    move-result v29

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->signum()I

    move-result v30

    mul-int v29, v29, v30

    if-gtz v29, :cond_7

    .line 160
    move-object v4, v8

    .line 161
    move-object/from16 v19, v20

    .line 162
    move-object/from16 v16, v17

    .line 168
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v3, v4, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->oneHalf:Ljava/math/BigDecimal;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v8

    goto/16 :goto_5

    .line 164
    :cond_7
    move-object v3, v8

    .line 165
    move-object/from16 v18, v20

    .line 166
    move-object/from16 v15, v17

    goto :goto_8

    .line 171
    .end local v26    # "tmp1":Ljava/math/BigDecimal;
    .end local v27    # "tmp2":Ljava/math/BigDecimal;
    :cond_8
    new-instance v14, Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move/from16 v0, p1

    move-object/from16 v1, v29

    invoke-direct {v14, v0, v1}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 172
    .local v14, "nP":Ljava/math/BigDecimal;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v26

    .line 173
    .restart local v26    # "tmp1":Ljava/math/BigDecimal;
    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v26

    .line 174
    const/16 v29, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v26

    .line 175
    const/16 v29, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v30, v0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Ljava/math/BigDecimal;->pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v27

    .line 176
    .restart local v27    # "tmp2":Ljava/math/BigDecimal;
    sget-object v29, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v27

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->two:Ljava/math/BigDecimal;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v27

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v27

    .line 180
    aput-object v8, v21, v10

    .line 181
    aput-object v27, v28, v10

    .line 183
    sub-int v29, p1, v10

    add-int/lit8 v12, v29, -0x1

    .line 184
    .local v12, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/math/BigDecimal;->negate(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v29

    aput-object v29, v21, v12

    .line 185
    aput-object v27, v28, v12

    .line 84
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 191
    .end local v3    # "a":Ljava/math/BigDecimal;
    .end local v4    # "b":Ljava/math/BigDecimal;
    .end local v8    # "c":Ljava/math/BigDecimal;
    .end local v9    # "done":Z
    .end local v12    # "idx":I
    .end local v13    # "j":I
    .end local v14    # "nP":Ljava/math/BigDecimal;
    .end local v15    # "pa":Ljava/math/BigDecimal;
    .end local v16    # "pb":Ljava/math/BigDecimal;
    .end local v17    # "pc":Ljava/math/BigDecimal;
    .end local v18    # "pma":Ljava/math/BigDecimal;
    .end local v19    # "pmb":Ljava/math/BigDecimal;
    .end local v20    # "pmc":Ljava/math/BigDecimal;
    .end local v26    # "tmp1":Ljava/math/BigDecimal;
    .end local v27    # "tmp2":Ljava/math/BigDecimal;
    :cond_9
    rem-int/lit8 v29, p1, 0x2

    if-eqz v29, :cond_b

    .line 192
    sget-object v20, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 193
    .restart local v20    # "pmc":Ljava/math/BigDecimal;
    const/4 v13, 0x1

    .restart local v13    # "j":I
    :goto_9
    move/from16 v0, p1

    if-ge v13, v0, :cond_a

    .line 194
    new-instance v5, Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-direct {v5, v13, v0}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 195
    .restart local v5    # "b_j":Ljava/math/BigDecimal;
    new-instance v6, Ljava/math/BigDecimal;

    add-int/lit8 v29, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v30, v0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v6, v0, v1}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 198
    .restart local v6    # "b_j_p_1":Ljava/math/BigDecimal;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v20

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v20

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->negate(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v20

    .line 193
    add-int/lit8 v13, v13, 0x2

    goto :goto_9

    .line 204
    .end local v5    # "b_j":Ljava/math/BigDecimal;
    .end local v6    # "b_j_p_1":Ljava/math/BigDecimal;
    :cond_a
    new-instance v14, Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move/from16 v0, p1

    move-object/from16 v1, v29

    invoke-direct {v14, v0, v1}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    .line 205
    .restart local v14    # "nP":Ljava/math/BigDecimal;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v26

    .line 206
    .restart local v26    # "tmp1":Ljava/math/BigDecimal;
    const/16 v29, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v26

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->two:Ljava/math/BigDecimal;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;->mContext:Ljava/math/MathContext;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v27

    .line 209
    .restart local v27    # "tmp2":Ljava/math/BigDecimal;
    sget-object v29, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    aput-object v29, v21, v11

    .line 210
    aput-object v27, v28, v11

    .line 213
    .end local v13    # "j":I
    .end local v14    # "nP":Ljava/math/BigDecimal;
    .end local v20    # "pmc":Ljava/math/BigDecimal;
    .end local v26    # "tmp1":Ljava/math/BigDecimal;
    .end local v27    # "tmp2":Ljava/math/BigDecimal;
    :cond_b
    new-instance v29, Lorg/apache/commons/math3/util/Pair;

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
