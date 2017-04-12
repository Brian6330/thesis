.class public Lorg/apache/commons/math3/analysis/integration/gauss/LegendreRuleFactory;
.super Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;
.source "LegendreRuleFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeRule(I)Lorg/apache/commons/math3/util/Pair;
    .locals 48
    .param p1, "numberOfPoints"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/util/Pair",
            "<[",
            "Ljava/lang/Double;",
            "[",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 38
    const/16 v42, 0x1

    move/from16 v0, p1

    move/from16 v1, v42

    if-ne v0, v1, :cond_0

    .line 40
    new-instance v42, Lorg/apache/commons/math3/util/Pair;

    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Double;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-wide/16 v46, 0x0

    invoke-static/range {v46 .. v47}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Double;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const-wide/high16 v46, 0x4000000000000000L    # 2.0

    invoke-static/range {v46 .. v47}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v46

    aput-object v46, v44, v45

    invoke-direct/range {v42 .. v44}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    :goto_0
    return-object v42

    .line 47
    :cond_0
    add-int/lit8 v42, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreRuleFactory;->getRuleInternal(I)Lorg/apache/commons/math3/util/Pair;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Ljava/lang/Double;

    .line 50
    .local v31, "previousPoints":[Ljava/lang/Double;
    move/from16 v0, p1

    new-array v0, v0, [Ljava/lang/Double;

    move-object/from16 v30, v0

    .line 51
    .local v30, "points":[Ljava/lang/Double;
    move/from16 v0, p1

    new-array v0, v0, [Ljava/lang/Double;

    move-object/from16 v39, v0

    .line 54
    .local v39, "weights":[Ljava/lang/Double;
    div-int/lit8 v14, p1, 0x2

    .line 55
    .local v14, "iMax":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v14, :cond_9

    .line 57
    if-nez v13, :cond_1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 59
    .local v4, "a":D
    :goto_2
    const/16 v42, 0x1

    move/from16 v0, v42

    if-ne v14, v0, :cond_2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 61
    .local v6, "b":D
    :goto_3
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    .line 63
    .local v24, "pma":D
    move-wide/from16 v18, v4

    .line 65
    .local v18, "pa":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    .line 67
    .local v26, "pmb":D
    move-wide/from16 v20, v6

    .line 68
    .local v20, "pb":D
    const/16 v16, 0x1

    .local v16, "j":I
    :goto_4
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_3

    .line 69
    mul-int/lit8 v42, v16, 0x2

    add-int/lit8 v38, v42, 0x1

    .line 70
    .local v38, "two_j_p_1":I
    add-int/lit8 v17, v16, 0x1

    .line 72
    .local v17, "j_p_1":I
    move/from16 v0, v38

    int-to-double v0, v0

    move-wide/from16 v42, v0

    mul-double v42, v42, v4

    mul-double v42, v42, v18

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v44, v44, v24

    sub-double v42, v42, v44

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v44, v0

    div-double v32, v42, v44

    .line 74
    .local v32, "ppa":D
    move/from16 v0, v38

    int-to-double v0, v0

    move-wide/from16 v42, v0

    mul-double v42, v42, v6

    mul-double v42, v42, v20

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v44, v44, v26

    sub-double v42, v42, v44

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v44, v0

    div-double v34, v42, v44

    .line 75
    .local v34, "ppb":D
    move-wide/from16 v24, v18

    .line 76
    move-wide/from16 v18, v32

    .line 77
    move-wide/from16 v26, v20

    .line 78
    move-wide/from16 v20, v34

    .line 68
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 57
    .end local v4    # "a":D
    .end local v6    # "b":D
    .end local v16    # "j":I
    .end local v17    # "j_p_1":I
    .end local v18    # "pa":D
    .end local v20    # "pb":D
    .end local v24    # "pma":D
    .end local v26    # "pmb":D
    .end local v32    # "ppa":D
    .end local v34    # "ppb":D
    .end local v38    # "two_j_p_1":I
    :cond_1
    add-int/lit8 v42, v13, -0x1

    aget-object v42, v31, v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_2

    .line 59
    .restart local v4    # "a":D
    :cond_2
    aget-object v42, v31, v13

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_3

    .line 82
    .restart local v6    # "b":D
    .restart local v16    # "j":I
    .restart local v18    # "pa":D
    .restart local v20    # "pb":D
    .restart local v24    # "pma":D
    .restart local v26    # "pmb":D
    :cond_3
    const-wide/high16 v42, 0x3fe0000000000000L    # 0.5

    add-double v44, v4, v6

    mul-double v8, v42, v44

    .line 84
    .local v8, "c":D
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    .line 86
    .local v28, "pmc":D
    move-wide/from16 v22, v8

    .line 87
    .local v22, "pc":D
    const/4 v12, 0x0

    .line 88
    .local v12, "done":Z
    :cond_4
    :goto_5
    if-nez v12, :cond_8

    .line 89
    sub-double v42, v6, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v44

    cmpg-double v42, v42, v44

    if-gtz v42, :cond_5

    const/4 v12, 0x1

    .line 90
    :goto_6
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    .line 91
    move-wide/from16 v22, v8

    .line 92
    const/16 v16, 0x1

    :goto_7
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_6

    .line 94
    mul-int/lit8 v42, v16, 0x2

    add-int/lit8 v42, v42, 0x1

    move/from16 v0, v42

    int-to-double v0, v0

    move-wide/from16 v42, v0

    mul-double v42, v42, v8

    mul-double v42, v42, v22

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v44, v44, v28

    sub-double v42, v42, v44

    add-int/lit8 v44, v16, 0x1

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v44, v0

    div-double v36, v42, v44

    .line 95
    .local v36, "ppc":D
    move-wide/from16 v28, v22

    .line 96
    move-wide/from16 v22, v36

    .line 92
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 89
    .end local v36    # "ppc":D
    :cond_5
    const/4 v12, 0x0

    goto :goto_6

    .line 99
    :cond_6
    if-nez v12, :cond_4

    .line 100
    mul-double v42, v18, v22

    const-wide/16 v44, 0x0

    cmpg-double v42, v42, v44

    if-gtz v42, :cond_7

    .line 101
    move-wide v6, v8

    .line 102
    move-wide/from16 v26, v28

    .line 103
    move-wide/from16 v20, v22

    .line 109
    :goto_8
    const-wide/high16 v42, 0x3fe0000000000000L    # 0.5

    add-double v44, v4, v6

    mul-double v8, v42, v44

    goto :goto_5

    .line 105
    :cond_7
    move-wide v4, v8

    .line 106
    move-wide/from16 v24, v28

    .line 107
    move-wide/from16 v18, v22

    goto :goto_8

    .line 112
    :cond_8
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v42, v0

    mul-double v44, v8, v22

    sub-double v44, v28, v44

    mul-double v10, v42, v44

    .line 113
    .local v10, "d":D
    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    mul-double v46, v8, v8

    sub-double v44, v44, v46

    mul-double v42, v42, v44

    mul-double v44, v10, v10

    div-double v40, v42, v44

    .line 115
    .local v40, "w":D
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v42

    aput-object v42, v30, v13

    .line 116
    invoke-static/range {v40 .. v41}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v42

    aput-object v42, v39, v13

    .line 118
    sub-int v42, p1, v13

    add-int/lit8 v15, v42, -0x1

    .line 119
    .local v15, "idx":I
    neg-double v0, v8

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v42

    aput-object v42, v30, v15

    .line 120
    invoke-static/range {v40 .. v41}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v42

    aput-object v42, v39, v15

    .line 55
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 126
    .end local v4    # "a":D
    .end local v6    # "b":D
    .end local v8    # "c":D
    .end local v10    # "d":D
    .end local v12    # "done":Z
    .end local v15    # "idx":I
    .end local v16    # "j":I
    .end local v18    # "pa":D
    .end local v20    # "pb":D
    .end local v22    # "pc":D
    .end local v24    # "pma":D
    .end local v26    # "pmb":D
    .end local v28    # "pmc":D
    .end local v40    # "w":D
    :cond_9
    rem-int/lit8 v42, p1, 0x2

    if-eqz v42, :cond_b

    .line 127
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    .line 128
    .restart local v28    # "pmc":D
    const/16 v16, 0x1

    .restart local v16    # "j":I
    :goto_9
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_a

    .line 129
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-double v0, v0

    move-wide/from16 v42, v0

    mul-double v42, v42, v28

    add-int/lit8 v44, v16, 0x1

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v44, v0

    div-double v28, v42, v44

    .line 128
    add-int/lit8 v16, v16, 0x2

    goto :goto_9

    .line 131
    :cond_a
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v42, v0

    mul-double v10, v42, v28

    .line 132
    .restart local v10    # "d":D
    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    mul-double v44, v10, v10

    div-double v40, v42, v44

    .line 134
    .restart local v40    # "w":D
    const-wide/16 v42, 0x0

    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v42

    aput-object v42, v30, v14

    .line 135
    invoke-static/range {v40 .. v41}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v42

    aput-object v42, v39, v14

    .line 138
    .end local v10    # "d":D
    .end local v16    # "j":I
    .end local v28    # "pmc":D
    .end local v40    # "w":D
    :cond_b
    new-instance v42, Lorg/apache/commons/math3/util/Pair;

    move-object/from16 v0, v42

    move-object/from16 v1, v30

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
