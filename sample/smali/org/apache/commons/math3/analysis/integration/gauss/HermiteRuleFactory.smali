.class public Lorg/apache/commons/math3/analysis/integration/gauss/HermiteRuleFactory;
.super Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;
.source "HermiteRuleFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field private static final H0:D = 0.7511255444649425

.field private static final H1:D = 1.0622519320271968

.field private static final SQRT_PI:D = 1.772453850905516


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeRule(I)Lorg/apache/commons/math3/util/Pair;
    .locals 60
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
    .line 65
    const/16 v53, 0x1

    move/from16 v0, p1

    move/from16 v1, v53

    if-ne v0, v1, :cond_0

    .line 67
    new-instance v53, Lorg/apache/commons/math3/util/Pair;

    const/16 v54, 0x1

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Double;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    const-wide/16 v56, 0x0

    invoke-static/range {v56 .. v57}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v56

    aput-object v56, v54, v55

    const/16 v55, 0x1

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Double;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    const-wide v58, 0x3ffc5bf891b4ef6bL    # 1.772453850905516

    invoke-static/range {v58 .. v59}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v57

    aput-object v57, v55, v56

    invoke-direct/range {v53 .. v55}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    :goto_0
    return-object v53

    .line 74
    :cond_0
    add-int/lit8 v37, p1, -0x1

    .line 75
    .local v37, "lastNumPoints":I
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/integration/gauss/HermiteRuleFactory;->getRuleInternal(I)Lorg/apache/commons/math3/util/Pair;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, [Ljava/lang/Double;

    .line 78
    .local v41, "previousPoints":[Ljava/lang/Double;
    move/from16 v0, p1

    new-array v0, v0, [Ljava/lang/Double;

    move-object/from16 v40, v0

    .line 79
    .local v40, "points":[Ljava/lang/Double;
    move/from16 v0, p1

    new-array v0, v0, [Ljava/lang/Double;

    move-object/from16 v52, v0

    .line 81
    .local v52, "weights":[Ljava/lang/Double;
    mul-int/lit8 v53, v37, 0x2

    move/from16 v0, v53

    int-to-double v0, v0

    move-wide/from16 v54, v0

    invoke-static/range {v54 .. v55}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v46

    .line 82
    .local v46, "sqrtTwoTimesLastNumPoints":D
    mul-int/lit8 v53, p1, 0x2

    move/from16 v0, v53

    int-to-double v0, v0

    move-wide/from16 v54, v0

    invoke-static/range {v54 .. v55}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v48

    .line 85
    .local v48, "sqrtTwoTimesNumPoints":D
    div-int/lit8 v34, p1, 0x2

    .line 86
    .local v34, "iMax":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, v34

    if-ge v13, v0, :cond_9

    .line 88
    if-nez v13, :cond_1

    move-wide/from16 v0, v46

    neg-double v4, v0

    .line 90
    .local v4, "a":D
    :goto_2
    const/16 v53, 0x1

    move/from16 v0, v34

    move/from16 v1, v53

    if-ne v0, v1, :cond_2

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    .line 93
    .local v6, "b":D
    :goto_3
    const-wide v22, 0x3fe8093870155910L    # 0.7511255444649425

    .line 95
    .local v22, "hma":D
    const-wide v54, 0x3ff0fefbe1c2b6c9L    # 1.0622519320271968

    mul-double v14, v54, v4

    .line 97
    .local v14, "ha":D
    const-wide v24, 0x3fe8093870155910L    # 0.7511255444649425

    .line 99
    .local v24, "hmb":D
    const-wide v54, 0x3ff0fefbe1c2b6c9L    # 1.0622519320271968

    mul-double v16, v54, v6

    .line 100
    .local v16, "hb":D
    const/16 v36, 0x1

    .local v36, "j":I
    :goto_4
    move/from16 v0, v36

    move/from16 v1, p1

    if-ge v0, v1, :cond_3

    .line 102
    add-int/lit8 v53, v36, 0x1

    move/from16 v0, v53

    int-to-double v0, v0

    move-wide/from16 v38, v0

    .line 103
    .local v38, "jp1":D
    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v54, v54, v38

    invoke-static/range {v54 .. v55}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v42

    .line 104
    .local v42, "s":D
    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v54, v0

    div-double v54, v54, v38

    invoke-static/range {v54 .. v55}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v44

    .line 105
    .local v44, "sm":D
    mul-double v54, v42, v4

    mul-double v54, v54, v14

    mul-double v56, v44, v22

    sub-double v28, v54, v56

    .line 106
    .local v28, "hpa":D
    mul-double v54, v42, v6

    mul-double v54, v54, v16

    mul-double v56, v44, v24

    sub-double v30, v54, v56

    .line 107
    .local v30, "hpb":D
    move-wide/from16 v22, v14

    .line 108
    move-wide/from16 v14, v28

    .line 109
    move-wide/from16 v24, v16

    .line 110
    move-wide/from16 v16, v30

    .line 100
    add-int/lit8 v36, v36, 0x1

    goto :goto_4

    .line 88
    .end local v4    # "a":D
    .end local v6    # "b":D
    .end local v14    # "ha":D
    .end local v16    # "hb":D
    .end local v22    # "hma":D
    .end local v24    # "hmb":D
    .end local v28    # "hpa":D
    .end local v30    # "hpb":D
    .end local v36    # "j":I
    .end local v38    # "jp1":D
    .end local v42    # "s":D
    .end local v44    # "sm":D
    :cond_1
    add-int/lit8 v53, v13, -0x1

    aget-object v53, v41, v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_2

    .line 90
    .restart local v4    # "a":D
    :cond_2
    aget-object v53, v41, v13

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_3

    .line 115
    .restart local v6    # "b":D
    .restart local v14    # "ha":D
    .restart local v16    # "hb":D
    .restart local v22    # "hma":D
    .restart local v24    # "hmb":D
    .restart local v36    # "j":I
    :cond_3
    const-wide/high16 v54, 0x3fe0000000000000L    # 0.5

    add-double v56, v4, v6

    mul-double v8, v54, v56

    .line 117
    .local v8, "c":D
    const-wide v26, 0x3fe8093870155910L    # 0.7511255444649425

    .line 119
    .local v26, "hmc":D
    const-wide v54, 0x3ff0fefbe1c2b6c9L    # 1.0622519320271968

    mul-double v18, v54, v8

    .line 120
    .local v18, "hc":D
    const/4 v12, 0x0

    .line 121
    .local v12, "done":Z
    :cond_4
    :goto_5
    if-nez v12, :cond_8

    .line 122
    sub-double v54, v6, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v56

    cmpg-double v53, v54, v56

    if-gtz v53, :cond_5

    const/4 v12, 0x1

    .line 123
    :goto_6
    const-wide v26, 0x3fe8093870155910L    # 0.7511255444649425

    .line 124
    const-wide v54, 0x3ff0fefbe1c2b6c9L    # 1.0622519320271968

    mul-double v18, v54, v8

    .line 125
    const/16 v36, 0x1

    :goto_7
    move/from16 v0, v36

    move/from16 v1, p1

    if-ge v0, v1, :cond_6

    .line 127
    add-int/lit8 v53, v36, 0x1

    move/from16 v0, v53

    int-to-double v0, v0

    move-wide/from16 v38, v0

    .line 128
    .restart local v38    # "jp1":D
    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v54, v54, v38

    invoke-static/range {v54 .. v55}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v42

    .line 129
    .restart local v42    # "s":D
    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v54, v0

    div-double v54, v54, v38

    invoke-static/range {v54 .. v55}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v44

    .line 130
    .restart local v44    # "sm":D
    mul-double v54, v42, v8

    mul-double v54, v54, v18

    mul-double v56, v44, v26

    sub-double v32, v54, v56

    .line 131
    .local v32, "hpc":D
    move-wide/from16 v26, v18

    .line 132
    move-wide/from16 v18, v32

    .line 125
    add-int/lit8 v36, v36, 0x1

    goto :goto_7

    .line 122
    .end local v32    # "hpc":D
    .end local v38    # "jp1":D
    .end local v42    # "s":D
    .end local v44    # "sm":D
    :cond_5
    const/4 v12, 0x0

    goto :goto_6

    .line 135
    :cond_6
    if-nez v12, :cond_4

    .line 136
    mul-double v54, v14, v18

    const-wide/16 v56, 0x0

    cmpg-double v53, v54, v56

    if-gez v53, :cond_7

    .line 137
    move-wide v6, v8

    .line 138
    move-wide/from16 v24, v26

    .line 139
    move-wide/from16 v16, v18

    .line 145
    :goto_8
    const-wide/high16 v54, 0x3fe0000000000000L    # 0.5

    add-double v56, v4, v6

    mul-double v8, v54, v56

    goto :goto_5

    .line 141
    :cond_7
    move-wide v4, v8

    .line 142
    move-wide/from16 v22, v26

    .line 143
    move-wide/from16 v14, v18

    goto :goto_8

    .line 148
    :cond_8
    mul-double v10, v48, v26

    .line 149
    .local v10, "d":D
    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    mul-double v56, v10, v10

    div-double v50, v54, v56

    .line 151
    .local v50, "w":D
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v53

    aput-object v53, v40, v13

    .line 152
    invoke-static/range {v50 .. v51}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v53

    aput-object v53, v52, v13

    .line 154
    sub-int v35, v37, v13

    .line 155
    .local v35, "idx":I
    neg-double v0, v8

    move-wide/from16 v54, v0

    invoke-static/range {v54 .. v55}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v53

    aput-object v53, v40, v35

    .line 156
    invoke-static/range {v50 .. v51}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v53

    aput-object v53, v52, v35

    .line 86
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 163
    .end local v4    # "a":D
    .end local v6    # "b":D
    .end local v8    # "c":D
    .end local v10    # "d":D
    .end local v12    # "done":Z
    .end local v14    # "ha":D
    .end local v16    # "hb":D
    .end local v18    # "hc":D
    .end local v22    # "hma":D
    .end local v24    # "hmb":D
    .end local v26    # "hmc":D
    .end local v35    # "idx":I
    .end local v36    # "j":I
    .end local v50    # "w":D
    :cond_9
    rem-int/lit8 v53, p1, 0x2

    if-eqz v53, :cond_b

    .line 164
    const-wide v20, 0x3fe8093870155910L    # 0.7511255444649425

    .line 165
    .local v20, "hm":D
    const/16 v36, 0x1

    .restart local v36    # "j":I
    :goto_9
    move/from16 v0, v36

    move/from16 v1, p1

    if-ge v0, v1, :cond_a

    .line 166
    add-int/lit8 v53, v36, 0x1

    move/from16 v0, v53

    int-to-double v0, v0

    move-wide/from16 v38, v0

    .line 167
    .restart local v38    # "jp1":D
    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v54, v0

    div-double v54, v54, v38

    invoke-static/range {v54 .. v55}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v54

    move-wide/from16 v0, v54

    neg-double v0, v0

    move-wide/from16 v54, v0

    mul-double v20, v20, v54

    .line 165
    add-int/lit8 v36, v36, 0x2

    goto :goto_9

    .line 169
    .end local v38    # "jp1":D
    :cond_a
    mul-double v10, v48, v20

    .line 170
    .restart local v10    # "d":D
    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    mul-double v56, v10, v10

    div-double v50, v54, v56

    .line 172
    .restart local v50    # "w":D
    const-wide/16 v54, 0x0

    invoke-static/range {v54 .. v55}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v53

    aput-object v53, v40, v34

    .line 173
    invoke-static/range {v50 .. v51}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v53

    aput-object v53, v52, v34

    .line 176
    .end local v10    # "d":D
    .end local v20    # "hm":D
    .end local v36    # "j":I
    .end local v50    # "w":D
    :cond_b
    new-instance v53, Lorg/apache/commons/math3/util/Pair;

    move-object/from16 v0, v53

    move-object/from16 v1, v40

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
