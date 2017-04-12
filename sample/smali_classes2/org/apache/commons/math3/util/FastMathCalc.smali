.class Lorg/apache/commons/math3/util/FastMathCalc;
.super Ljava/lang/Object;
.source "FastMathCalc.java"


# static fields
.field private static final FACT:[D

.field private static final HEX_40000000:J = 0x40000000L

.field private static final LN_SPLIT_COEF:[[D

.field private static final TABLE_END_DECL:Ljava/lang/String; = "    };"

.field private static final TABLE_START_DECL:Ljava/lang/String; = "    {"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 35
    const/16 v0, 0x14

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/util/FastMathCalc;->FACT:[D

    .line 60
    const/16 v0, 0x10

    new-array v0, v0, [[D

    const/4 v1, 0x0

    new-array v2, v3, [D

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [D

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [D

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [D

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [D

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [D

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [D

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [D

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [D

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [D

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [D

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [D

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [D

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [D

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [D

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [D

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/math3/util/FastMathCalc;->LN_SPLIT_COEF:[[D

    return-void

    .line 35
    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x4018000000000000L    # 6.0
        0x4038000000000000L    # 24.0
        0x405e000000000000L    # 120.0
        0x4086800000000000L    # 720.0
        0x40b3b00000000000L    # 5040.0
        0x40e3b00000000000L    # 40320.0
        0x4116260000000000L    # 362880.0
        0x414baf8000000000L    # 3628800.0
        0x418308a800000000L    # 3.99168E7
        0x41bc8cfc00000000L    # 4.790016E8
        0x41f7328cc0000000L    # 6.2270208E9
        0x42344c3b28000000L    # 8.71782912E10
        0x4273077775800000L    # 1.307674368E12
        0x42b3077775800000L    # 2.0922789888E13
        0x42f437eeecd80000L    # 3.55687428096E14
        0x4336beecca730000L    # 6.402373705728E15
        0x437b02b930689000L    # 1.21645100408832E17
    .end array-data

    .line 60
    :array_1
    .array-data 8
        0x4000000000000000L    # 2.0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x3fe5555540000000L    # 0.6666666269302368
        0x3e65555555555575L    # 3.9736429850260626E-8
    .end array-data

    :array_3
    .array-data 8
        0x3fd9999980000000L    # 0.3999999761581421
        0x3e5999999998f89bL    # 2.3841857910019882E-8
    .end array-data

    :array_4
    .array-data 8
        0x3fd2492480000000L    # 0.2857142686843872
        0x3e52492492f04decL    # 1.7029898543501842E-8
    .end array-data

    :array_5
    .array-data 8
        0x3fcc71c700000000L    # 0.2222222089767456
        0x3e4c71c65d4f9f93L    # 1.3245471311735498E-8
    .end array-data

    :array_6
    .array-data 8
        0x3fc745d140000000L    # 0.1818181574344635
        0x3e5a2eadbefa2565L    # 2.4384203044354907E-8
    .end array-data

    :array_7
    .array-data 8
        0x3fc3b13b00000000L    # 0.1538461446762085
        0x3e43a0e93f3d8b15L    # 9.140260083262505E-9
    .end array-data

    :array_8
    .array-data 8
        0x3fc1111100000000L
        0x3e43cd12b7438617L    # 9.220590270857665E-9
    .end array-data

    :array_9
    .array-data 8
        0x3fbe1e1d40000000L    # 0.11764700710773468
        0x3e4a9d505e323f26L    # 1.2393345855018391E-8
    .end array-data

    :array_a
    .array-data 8
        0x3fbaf29580000000L    # 0.10526403784751892
        0x3e41b855b8f7ea77L    # 8.251545029714408E-9
    .end array-data

    :array_b
    .array-data 8
        0x3fb8608e40000000L    # 0.0952233225107193
        0x3e4b38ab3aca7380L    # 1.2675934823758863E-8
    .end array-data

    :array_c
    .array-data 8
        0x3fb64e8f40000000L    # 0.08713622391223907
        0x3e488bd8ad726e7fL    # 1.1430250008909141E-8
    .end array-data

    :array_d
    .array-data 8
        0x3fb41380c0000000L    # 0.07842259109020233
        0x3e24a721115060edL    # 2.404307984052299E-9
    .end array-data

    :array_e
    .array-data 8
        0x3fb56e9340000000L    # 0.08371849358081818
        0x3e494302f4f7069bL    # 1.176342548272881E-8
    .end array-data

    :array_f
    .array-data 8
        0x3f9f52e000000000L    # 0.030589580535888672
        0x3e164345ef031be1L    # 1.2958646899018938E-9
    .end array-data

    :array_10
    .array-data 8
        0x3fc32d66c0000000L    # 0.14982303977012634
        0x3e4a5298001e0c82L    # 1.225743062930824E-8
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method private static buildSinCosTables([D[D[D[DI[D[D)V
    .locals 16
    .param p0, "SINE_TABLE_A"    # [D
    .param p1, "SINE_TABLE_B"    # [D
    .param p2, "COSINE_TABLE_A"    # [D
    .param p3, "COSINE_TABLE_B"    # [D
    .param p4, "SINE_TABLE_LEN"    # I
    .param p5, "TANGENT_TABLE_A"    # [D
    .param p6, "TANGENT_TABLE_B"    # [D

    .prologue
    .line 104
    const/4 v11, 0x2

    new-array v5, v11, [D

    .line 107
    .local v5, "result":[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v11, 0x7

    if-ge v4, v11, :cond_0

    .line 108
    int-to-double v12, v4

    const-wide/high16 v14, 0x4020000000000000L    # 8.0

    div-double v8, v12, v14

    .line 110
    .local v8, "x":D
    invoke-static {v8, v9, v5}, Lorg/apache/commons/math3/util/FastMathCalc;->slowSin(D[D)D

    .line 111
    const/4 v11, 0x0

    aget-wide v12, v5, v11

    aput-wide v12, p0, v4

    .line 112
    const/4 v11, 0x1

    aget-wide v12, v5, v11

    aput-wide v12, p1, v4

    .line 114
    invoke-static {v8, v9, v5}, Lorg/apache/commons/math3/util/FastMathCalc;->slowCos(D[D)D

    .line 115
    const/4 v11, 0x0

    aget-wide v12, v5, v11

    aput-wide v12, p2, v4

    .line 116
    const/4 v11, 0x1

    aget-wide v12, v5, v11

    aput-wide v12, p3, v4

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 120
    .end local v8    # "x":D
    :cond_0
    const/4 v4, 0x7

    :goto_1
    move/from16 v0, p4

    if-ge v4, v0, :cond_2

    .line 121
    const/4 v11, 0x2

    new-array v7, v11, [D

    .line 122
    .local v7, "xs":[D
    const/4 v11, 0x2

    new-array v10, v11, [D

    .line 123
    .local v10, "ys":[D
    const/4 v11, 0x2

    new-array v2, v11, [D

    .line 124
    .local v2, "as":[D
    const/4 v11, 0x2

    new-array v3, v11, [D

    .line 125
    .local v3, "bs":[D
    const/4 v11, 0x2

    new-array v6, v11, [D

    .line 127
    .local v6, "temps":[D
    and-int/lit8 v11, v4, 0x1

    if-nez v11, :cond_1

    .line 129
    const/4 v11, 0x0

    div-int/lit8 v12, v4, 0x2

    aget-wide v12, p0, v12

    aput-wide v12, v7, v11

    .line 130
    const/4 v11, 0x1

    div-int/lit8 v12, v4, 0x2

    aget-wide v12, p1, v12

    aput-wide v12, v7, v11

    .line 131
    const/4 v11, 0x0

    div-int/lit8 v12, v4, 0x2

    aget-wide v12, p2, v12

    aput-wide v12, v10, v11

    .line 132
    const/4 v11, 0x1

    div-int/lit8 v12, v4, 0x2

    aget-wide v12, p3, v12

    aput-wide v12, v10, v11

    .line 135
    invoke-static {v7, v10, v5}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 136
    const/4 v11, 0x0

    aget-wide v12, v5, v11

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v14

    aput-wide v12, p0, v4

    .line 137
    const/4 v11, 0x1

    aget-wide v12, v5, v11

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v14

    aput-wide v12, p1, v4

    .line 140
    invoke-static {v10, v10, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 141
    invoke-static {v7, v7, v6}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 142
    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-wide v12, v6, v12

    neg-double v12, v12

    aput-wide v12, v6, v11

    .line 143
    const/4 v11, 0x1

    const/4 v12, 0x1

    aget-wide v12, v6, v12

    neg-double v12, v12

    aput-wide v12, v6, v11

    .line 144
    invoke-static {v2, v6, v5}, Lorg/apache/commons/math3/util/FastMathCalc;->splitAdd([D[D[D)V

    .line 145
    const/4 v11, 0x0

    aget-wide v12, v5, v11

    aput-wide v12, p2, v4

    .line 146
    const/4 v11, 0x1

    aget-wide v12, v5, v11

    aput-wide v12, p3, v4

    .line 120
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 148
    :cond_1
    const/4 v11, 0x0

    div-int/lit8 v12, v4, 0x2

    aget-wide v12, p0, v12

    aput-wide v12, v7, v11

    .line 149
    const/4 v11, 0x1

    div-int/lit8 v12, v4, 0x2

    aget-wide v12, p1, v12

    aput-wide v12, v7, v11

    .line 150
    const/4 v11, 0x0

    div-int/lit8 v12, v4, 0x2

    aget-wide v12, p2, v12

    aput-wide v12, v10, v11

    .line 151
    const/4 v11, 0x1

    div-int/lit8 v12, v4, 0x2

    aget-wide v12, p3, v12

    aput-wide v12, v10, v11

    .line 152
    const/4 v11, 0x0

    div-int/lit8 v12, v4, 0x2

    add-int/lit8 v12, v12, 0x1

    aget-wide v12, p0, v12

    aput-wide v12, v2, v11

    .line 153
    const/4 v11, 0x1

    div-int/lit8 v12, v4, 0x2

    add-int/lit8 v12, v12, 0x1

    aget-wide v12, p1, v12

    aput-wide v12, v2, v11

    .line 154
    const/4 v11, 0x0

    div-int/lit8 v12, v4, 0x2

    add-int/lit8 v12, v12, 0x1

    aget-wide v12, p2, v12

    aput-wide v12, v3, v11

    .line 155
    const/4 v11, 0x1

    div-int/lit8 v12, v4, 0x2

    add-int/lit8 v12, v12, 0x1

    aget-wide v12, p3, v12

    aput-wide v12, v3, v11

    .line 158
    invoke-static {v7, v3, v6}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 159
    invoke-static {v10, v2, v5}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 160
    invoke-static {v5, v6, v5}, Lorg/apache/commons/math3/util/FastMathCalc;->splitAdd([D[D[D)V

    .line 161
    const/4 v11, 0x0

    aget-wide v12, v5, v11

    aput-wide v12, p0, v4

    .line 162
    const/4 v11, 0x1

    aget-wide v12, v5, v11

    aput-wide v12, p1, v4

    .line 165
    invoke-static {v10, v3, v5}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 166
    invoke-static {v7, v2, v6}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 167
    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-wide v12, v6, v12

    neg-double v12, v12

    aput-wide v12, v6, v11

    .line 168
    const/4 v11, 0x1

    const/4 v12, 0x1

    aget-wide v12, v6, v12

    neg-double v12, v12

    aput-wide v12, v6, v11

    .line 169
    invoke-static {v5, v6, v5}, Lorg/apache/commons/math3/util/FastMathCalc;->splitAdd([D[D[D)V

    .line 170
    const/4 v11, 0x0

    aget-wide v12, v5, v11

    aput-wide v12, p2, v4

    .line 171
    const/4 v11, 0x1

    aget-wide v12, v5, v11

    aput-wide v12, p3, v4

    goto :goto_2

    .line 176
    .end local v2    # "as":[D
    .end local v3    # "bs":[D
    .end local v6    # "temps":[D
    .end local v7    # "xs":[D
    .end local v10    # "ys":[D
    :cond_2
    const/4 v4, 0x0

    :goto_3
    move/from16 v0, p4

    if-ge v4, v0, :cond_3

    .line 177
    const/4 v11, 0x2

    new-array v7, v11, [D

    .line 178
    .restart local v7    # "xs":[D
    const/4 v11, 0x2

    new-array v10, v11, [D

    .line 179
    .restart local v10    # "ys":[D
    const/4 v11, 0x2

    new-array v2, v11, [D

    .line 181
    .restart local v2    # "as":[D
    const/4 v11, 0x0

    aget-wide v12, p2, v4

    aput-wide v12, v2, v11

    .line 182
    const/4 v11, 0x1

    aget-wide v12, p3, v4

    aput-wide v12, v2, v11

    .line 184
    invoke-static {v2, v10}, Lorg/apache/commons/math3/util/FastMathCalc;->splitReciprocal([D[D)V

    .line 186
    const/4 v11, 0x0

    aget-wide v12, p0, v4

    aput-wide v12, v7, v11

    .line 187
    const/4 v11, 0x1

    aget-wide v12, p1, v4

    aput-wide v12, v7, v11

    .line 189
    invoke-static {v7, v10, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 191
    const/4 v11, 0x0

    aget-wide v12, v2, v11

    aput-wide v12, p5, v4

    .line 192
    const/4 v11, 0x1

    aget-wide v12, v2, v11

    aput-wide v12, p6, v4

    .line 176
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 195
    .end local v2    # "as":[D
    .end local v7    # "xs":[D
    .end local v10    # "ys":[D
    :cond_3
    return-void
.end method

.method private static checkLen(II)V
    .locals 1
    .param p0, "expectedLen"    # I
    .param p1, "actual"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 653
    if-eq p0, p1, :cond_0

    .line 654
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 656
    :cond_0
    return-void
.end method

.method static expint(I[D)D
    .locals 8
    .param p0, "p"    # I
    .param p1, "result"    # [D

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 493
    new-array v1, v3, [D

    .line 494
    .local v1, "xs":[D
    new-array v0, v3, [D

    .line 495
    .local v0, "as":[D
    new-array v2, v3, [D

    .line 504
    .local v2, "ys":[D
    const-wide v4, 0x4005bf0a8b145769L    # Math.E

    aput-wide v4, v1, v6

    .line 505
    const-wide v4, 0x3ca4d57ee2b1013aL

    aput-wide v4, v1, v7

    .line 507
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 509
    :goto_0
    if-lez p0, :cond_1

    .line 510
    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_0

    .line 511
    invoke-static {v2, v1, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->quadMult([D[D[D)V

    .line 512
    aget-wide v4, v0, v6

    aput-wide v4, v2, v6

    aget-wide v4, v0, v7

    aput-wide v4, v2, v7

    .line 515
    :cond_0
    invoke-static {v1, v1, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->quadMult([D[D[D)V

    .line 516
    aget-wide v4, v0, v6

    aput-wide v4, v1, v6

    aget-wide v4, v0, v7

    aput-wide v4, v1, v7

    .line 518
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 521
    :cond_1
    if-eqz p1, :cond_2

    .line 522
    aget-wide v4, v2, v6

    aput-wide v4, p1, v6

    .line 523
    aget-wide v4, v2, v7

    aput-wide v4, p1, v7

    .line 525
    invoke-static {p1}, Lorg/apache/commons/math3/util/FastMathCalc;->resplit([D)V

    .line 528
    :cond_2
    aget-wide v4, v2, v6

    aget-wide v6, v2, v7

    add-double/2addr v4, v6

    return-wide v4
.end method

.method static format(D)Ljava/lang/String;
    .locals 4
    .param p0, "d"    # D

    .prologue
    .line 638
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    .line 639
    const-string v0, "Double.NaN,"

    .line 641
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x0

    cmpl-double v0, p0, v2

    if-ltz v0, :cond_1

    const-string v0, "+"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "d,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method static printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V
    .locals 9
    .param p0, "out"    # Ljava/io/PrintStream;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "expectedLen"    # I
    .param p3, "array"    # [D

    .prologue
    .line 624
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 625
    array-length v5, p3

    invoke-static {p2, v5}, Lorg/apache/commons/math3/util/FastMathCalc;->checkLen(II)V

    .line 626
    const-string v5, "    {"

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 627
    move-object v0, p3

    .local v0, "arr$":[D
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, v0, v1

    .line 628
    .local v2, "d":D
    const-string v5, "        %s%n"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->format(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 627
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 630
    .end local v2    # "d":D
    :cond_0
    const-string v5, "    };"

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method static printarray(Ljava/io/PrintStream;Ljava/lang/String;I[[D)V
    .locals 17
    .param p0, "out"    # Ljava/io/PrintStream;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "expectedLen"    # I
    .param p3, "array2d"    # [[D

    .prologue
    .line 602
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 603
    move-object/from16 v0, p3

    array-length v13, v0

    move/from16 v0, p2

    invoke-static {v0, v13}, Lorg/apache/commons/math3/util/FastMathCalc;->checkLen(II)V

    .line 604
    const-string v13, "    { "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 605
    const/4 v5, 0x0

    .line 606
    .local v5, "i":I
    move-object/from16 v2, p3

    .local v2, "arr$":[[D
    array-length v11, v2

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .local v10, "i$":I
    move v8, v5

    .end local v2    # "arr$":[[D
    .end local v5    # "i":I
    .end local v11    # "len$":I
    .local v8, "i":I
    :goto_0
    if-ge v10, v11, :cond_1

    aget-object v4, v2, v10

    .line 607
    .local v4, "array":[D
    const-string v13, "        {"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 608
    move-object v3, v4

    .local v3, "arr$":[D
    array-length v12, v3

    .local v12, "len$":I
    const/4 v9, 0x0

    .end local v10    # "i$":I
    .restart local v9    # "i$":I
    :goto_1
    if-ge v9, v12, :cond_0

    aget-wide v6, v3, v9

    .line 609
    .local v6, "d":D
    const-string v13, "%-25.25s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMathCalc;->format(D)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 608
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 611
    .end local v6    # "d":D
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "}, // "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v5, v8, 0x1

    .end local v8    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 606
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    move v8, v5

    .end local v5    # "i":I
    .restart local v8    # "i":I
    goto :goto_0

    .line 613
    .end local v3    # "arr$":[D
    .end local v4    # "array":[D
    .end local v12    # "len$":I
    :cond_1
    const-string v13, "    };"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method private static quadMult([D[D[D)V
    .locals 13
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .param p2, "result"    # [D

    .prologue
    const/4 v6, 0x2

    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 438
    new-array v2, v6, [D

    .line 439
    .local v2, "xs":[D
    new-array v3, v6, [D

    .line 440
    .local v3, "ys":[D
    new-array v4, v6, [D

    .line 443
    .local v4, "zs":[D
    aget-wide v6, p0, v5

    invoke-static {v6, v7, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 444
    aget-wide v6, p1, v5

    invoke-static {v6, v7, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 445
    invoke-static {v2, v3, v4}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 447
    aget-wide v6, v4, v5

    aput-wide v6, p2, v5

    .line 448
    aget-wide v6, v4, v12

    aput-wide v6, p2, v12

    .line 451
    aget-wide v6, p1, v12

    invoke-static {v6, v7, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 452
    invoke-static {v2, v3, v4}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 454
    aget-wide v6, p2, v5

    aget-wide v8, v4, v5

    add-double v0, v6, v8

    .line 455
    .local v0, "tmp":D
    aget-wide v6, p2, v12

    aget-wide v8, p2, v5

    sub-double v8, v0, v8

    aget-wide v10, v4, v5

    sub-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, p2, v12

    .line 456
    aput-wide v0, p2, v5

    .line 457
    aget-wide v6, p2, v5

    aget-wide v8, v4, v12

    add-double v0, v6, v8

    .line 458
    aget-wide v6, p2, v12

    aget-wide v8, p2, v5

    sub-double v8, v0, v8

    aget-wide v10, v4, v12

    sub-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, p2, v12

    .line 459
    aput-wide v0, p2, v5

    .line 462
    aget-wide v6, p0, v12

    invoke-static {v6, v7, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 463
    aget-wide v6, p1, v5

    invoke-static {v6, v7, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 464
    invoke-static {v2, v3, v4}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 466
    aget-wide v6, p2, v5

    aget-wide v8, v4, v5

    add-double v0, v6, v8

    .line 467
    aget-wide v6, p2, v12

    aget-wide v8, p2, v5

    sub-double v8, v0, v8

    aget-wide v10, v4, v5

    sub-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, p2, v12

    .line 468
    aput-wide v0, p2, v5

    .line 469
    aget-wide v6, p2, v5

    aget-wide v8, v4, v12

    add-double v0, v6, v8

    .line 470
    aget-wide v6, p2, v12

    aget-wide v8, p2, v5

    sub-double v8, v0, v8

    aget-wide v10, v4, v12

    sub-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, p2, v12

    .line 471
    aput-wide v0, p2, v5

    .line 474
    aget-wide v6, p0, v12

    invoke-static {v6, v7, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 475
    aget-wide v6, p1, v12

    invoke-static {v6, v7, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 476
    invoke-static {v2, v3, v4}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 478
    aget-wide v6, p2, v5

    aget-wide v8, v4, v5

    add-double v0, v6, v8

    .line 479
    aget-wide v6, p2, v12

    aget-wide v8, p2, v5

    sub-double v8, v0, v8

    aget-wide v10, v4, v5

    sub-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, p2, v12

    .line 480
    aput-wide v0, p2, v5

    .line 481
    aget-wide v6, p2, v5

    aget-wide v8, v4, v12

    add-double v0, v6, v8

    .line 482
    aget-wide v6, p2, v12

    aget-wide v8, p2, v5

    sub-double v8, v0, v8

    aget-wide v10, v4, v12

    sub-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, p2, v12

    .line 483
    aput-wide v0, p2, v5

    .line 484
    return-void
.end method

.method private static resplit([D)V
    .locals 14
    .param p0, "a"    # [D

    .prologue
    const-wide/high16 v12, 0x41d0000000000000L    # 1.073741824E9

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 345
    aget-wide v6, p0, v10

    aget-wide v8, p0, v11

    add-double v0, v6, v8

    .line 346
    .local v0, "c":D
    aget-wide v6, p0, v10

    sub-double v6, v0, v6

    aget-wide v8, p0, v11

    sub-double/2addr v6, v8

    neg-double v2, v6

    .line 348
    .local v2, "d":D
    const-wide v6, 0x7dfe94c85c298c4cL    # 8.0E298

    cmpg-double v6, v0, v6

    if-gez v6, :cond_0

    const-wide v6, -0x2016b37a3d673b4L    # -8.0E298

    cmpl-double v6, v0, v6

    if-lez v6, :cond_0

    .line 349
    mul-double v4, v0, v12

    .line 350
    .local v4, "z":D
    add-double v6, v0, v4

    sub-double/2addr v6, v4

    aput-wide v6, p0, v10

    .line 351
    aget-wide v6, p0, v10

    sub-double v6, v0, v6

    add-double/2addr v6, v2

    aput-wide v6, p0, v11

    .line 357
    :goto_0
    return-void

    .line 353
    .end local v4    # "z":D
    :cond_0
    const-wide/high16 v6, 0x3e10000000000000L    # 9.313225746154785E-10

    mul-double v4, v0, v6

    .line 354
    .restart local v4    # "z":D
    add-double v6, v0, v4

    sub-double/2addr v6, v0

    mul-double/2addr v6, v12

    aput-wide v6, p0, v10

    .line 355
    aget-wide v6, p0, v10

    sub-double v6, v0, v6

    add-double/2addr v6, v2

    aput-wide v6, p0, v11

    goto :goto_0
.end method

.method static slowCos(D[D)D
    .locals 10
    .param p0, "x"    # D
    .param p2, "result"    # [D

    .prologue
    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 207
    new-array v3, v5, [D

    .line 208
    .local v3, "xs":[D
    new-array v4, v5, [D

    .line 209
    .local v4, "ys":[D
    new-array v1, v5, [D

    .line 210
    .local v1, "facts":[D
    new-array v0, v5, [D

    .line 211
    .local v0, "as":[D
    invoke-static {p0, p1, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 212
    const-wide/16 v6, 0x0

    aput-wide v6, v4, v9

    aput-wide v6, v4, v8

    .line 214
    sget-object v5, Lorg/apache/commons/math3/util/FastMathCalc;->FACT:[D

    array-length v5, v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 215
    invoke-static {v3, v4, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 216
    aget-wide v6, v0, v8

    aput-wide v6, v4, v8

    aget-wide v6, v0, v9

    aput-wide v6, v4, v9

    .line 218
    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_0

    .line 214
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 222
    :cond_0
    sget-object v5, Lorg/apache/commons/math3/util/FastMathCalc;->FACT:[D

    aget-wide v6, v5, v2

    invoke-static {v6, v7, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 223
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMathCalc;->splitReciprocal([D[D)V

    .line 225
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_1

    .line 226
    aget-wide v6, v1, v8

    neg-double v6, v6

    aput-wide v6, v1, v8

    .line 227
    aget-wide v6, v1, v9

    neg-double v6, v6

    aput-wide v6, v1, v9

    .line 230
    :cond_1
    invoke-static {v4, v1, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitAdd([D[D[D)V

    .line 231
    aget-wide v6, v0, v8

    aput-wide v6, v4, v8

    aget-wide v6, v0, v9

    aput-wide v6, v4, v9

    goto :goto_1

    .line 234
    :cond_2
    if-eqz p2, :cond_3

    .line 235
    aget-wide v6, v4, v8

    aput-wide v6, p2, v8

    .line 236
    aget-wide v6, v4, v9

    aput-wide v6, p2, v9

    .line 239
    :cond_3
    aget-wide v6, v4, v8

    aget-wide v8, v4, v9

    add-double/2addr v6, v8

    return-wide v6
.end method

.method static slowLog(D)[D
    .locals 12
    .param p0, "xi"    # D

    .prologue
    const/4 v5, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 550
    new-array v2, v5, [D

    .line 551
    .local v2, "x":[D
    new-array v3, v5, [D

    .line 552
    .local v3, "x2":[D
    new-array v4, v5, [D

    .line 553
    .local v4, "y":[D
    new-array v0, v5, [D

    .line 555
    .local v0, "a":[D
    invoke-static {p0, p1, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 558
    aget-wide v6, v2, v10

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    aput-wide v6, v2, v10

    .line 559
    invoke-static {v2}, Lorg/apache/commons/math3/util/FastMathCalc;->resplit([D)V

    .line 560
    invoke-static {v2, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitReciprocal([D[D)V

    .line 561
    aget-wide v6, v2, v10

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sub-double/2addr v6, v8

    aput-wide v6, v2, v10

    .line 562
    invoke-static {v2}, Lorg/apache/commons/math3/util/FastMathCalc;->resplit([D)V

    .line 563
    invoke-static {v2, v0, v4}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 564
    aget-wide v6, v4, v10

    aput-wide v6, v2, v10

    .line 565
    aget-wide v6, v4, v11

    aput-wide v6, v2, v11

    .line 568
    invoke-static {v2, v2, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 574
    sget-object v5, Lorg/apache/commons/math3/util/FastMathCalc;->LN_SPLIT_COEF:[[D

    sget-object v6, Lorg/apache/commons/math3/util/FastMathCalc;->LN_SPLIT_COEF:[[D

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    aget-wide v6, v5, v10

    aput-wide v6, v4, v10

    .line 575
    sget-object v5, Lorg/apache/commons/math3/util/FastMathCalc;->LN_SPLIT_COEF:[[D

    sget-object v6, Lorg/apache/commons/math3/util/FastMathCalc;->LN_SPLIT_COEF:[[D

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    aget-wide v6, v5, v11

    aput-wide v6, v4, v11

    .line 577
    sget-object v5, Lorg/apache/commons/math3/util/FastMathCalc;->LN_SPLIT_COEF:[[D

    array-length v5, v5

    add-int/lit8 v1, v5, -0x2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 578
    invoke-static {v4, v3, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 579
    aget-wide v6, v0, v10

    aput-wide v6, v4, v10

    .line 580
    aget-wide v6, v0, v11

    aput-wide v6, v4, v11

    .line 581
    sget-object v5, Lorg/apache/commons/math3/util/FastMathCalc;->LN_SPLIT_COEF:[[D

    aget-object v5, v5, v1

    invoke-static {v4, v5, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitAdd([D[D[D)V

    .line 582
    aget-wide v6, v0, v10

    aput-wide v6, v4, v10

    .line 583
    aget-wide v6, v0, v11

    aput-wide v6, v4, v11

    .line 577
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 586
    :cond_0
    invoke-static {v4, v2, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 587
    aget-wide v6, v0, v10

    aput-wide v6, v4, v10

    .line 588
    aget-wide v6, v0, v11

    aput-wide v6, v4, v11

    .line 590
    return-object v4
.end method

.method static slowSin(D[D)D
    .locals 10
    .param p0, "x"    # D
    .param p2, "result"    # [D

    .prologue
    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 251
    new-array v3, v5, [D

    .line 252
    .local v3, "xs":[D
    new-array v4, v5, [D

    .line 253
    .local v4, "ys":[D
    new-array v1, v5, [D

    .line 254
    .local v1, "facts":[D
    new-array v0, v5, [D

    .line 255
    .local v0, "as":[D
    invoke-static {p0, p1, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 256
    const-wide/16 v6, 0x0

    aput-wide v6, v4, v9

    aput-wide v6, v4, v8

    .line 258
    sget-object v5, Lorg/apache/commons/math3/util/FastMathCalc;->FACT:[D

    array-length v5, v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 259
    invoke-static {v3, v4, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 260
    aget-wide v6, v0, v8

    aput-wide v6, v4, v8

    aget-wide v6, v0, v9

    aput-wide v6, v4, v9

    .line 262
    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_0

    .line 258
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 266
    :cond_0
    sget-object v5, Lorg/apache/commons/math3/util/FastMathCalc;->FACT:[D

    aget-wide v6, v5, v2

    invoke-static {v6, v7, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 267
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMathCalc;->splitReciprocal([D[D)V

    .line 269
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_1

    .line 270
    aget-wide v6, v1, v8

    neg-double v6, v6

    aput-wide v6, v1, v8

    .line 271
    aget-wide v6, v1, v9

    neg-double v6, v6

    aput-wide v6, v1, v9

    .line 274
    :cond_1
    invoke-static {v4, v1, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitAdd([D[D[D)V

    .line 275
    aget-wide v6, v0, v8

    aput-wide v6, v4, v8

    aget-wide v6, v0, v9

    aput-wide v6, v4, v9

    goto :goto_1

    .line 278
    :cond_2
    if-eqz p2, :cond_3

    .line 279
    aget-wide v6, v4, v8

    aput-wide v6, p2, v8

    .line 280
    aget-wide v6, v4, v9

    aput-wide v6, p2, v9

    .line 283
    :cond_3
    aget-wide v6, v4, v8

    aget-wide v8, v4, v9

    add-double/2addr v6, v8

    return-wide v6
.end method

.method static slowexp(D[D)D
    .locals 10
    .param p0, "x"    # D
    .param p2, "result"    # [D

    .prologue
    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 295
    new-array v3, v5, [D

    .line 296
    .local v3, "xs":[D
    new-array v4, v5, [D

    .line 297
    .local v4, "ys":[D
    new-array v1, v5, [D

    .line 298
    .local v1, "facts":[D
    new-array v0, v5, [D

    .line 299
    .local v0, "as":[D
    invoke-static {p0, p1, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 300
    const-wide/16 v6, 0x0

    aput-wide v6, v4, v9

    aput-wide v6, v4, v8

    .line 302
    sget-object v5, Lorg/apache/commons/math3/util/FastMathCalc;->FACT:[D

    array-length v5, v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 303
    invoke-static {v3, v4, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitMult([D[D[D)V

    .line 304
    aget-wide v6, v0, v8

    aput-wide v6, v4, v8

    .line 305
    aget-wide v6, v0, v9

    aput-wide v6, v4, v9

    .line 307
    sget-object v5, Lorg/apache/commons/math3/util/FastMathCalc;->FACT:[D

    aget-wide v6, v5, v2

    invoke-static {v6, v7, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->split(D[D)V

    .line 308
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMathCalc;->splitReciprocal([D[D)V

    .line 310
    invoke-static {v4, v1, v0}, Lorg/apache/commons/math3/util/FastMathCalc;->splitAdd([D[D[D)V

    .line 311
    aget-wide v6, v0, v8

    aput-wide v6, v4, v8

    .line 312
    aget-wide v6, v0, v9

    aput-wide v6, v4, v9

    .line 302
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 315
    :cond_0
    if-eqz p2, :cond_1

    .line 316
    aget-wide v6, v4, v8

    aput-wide v6, p2, v8

    .line 317
    aget-wide v6, v4, v9

    aput-wide v6, p2, v9

    .line 320
    :cond_1
    aget-wide v6, v4, v8

    aget-wide v8, v4, v9

    add-double/2addr v6, v8

    return-wide v6
.end method

.method private static split(D[D)V
    .locals 8
    .param p0, "d"    # D
    .param p2, "split"    # [D

    .prologue
    const/4 v5, 0x1

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    const/4 v4, 0x0

    .line 329
    const-wide v2, 0x7dfe94c85c298c4cL    # 8.0E298

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    const-wide v2, -0x2016b37a3d673b4L    # -8.0E298

    cmpl-double v2, p0, v2

    if-lez v2, :cond_0

    .line 330
    mul-double v0, p0, v6

    .line 331
    .local v0, "a":D
    add-double v2, p0, v0

    sub-double/2addr v2, v0

    aput-wide v2, p2, v4

    .line 332
    aget-wide v2, p2, v4

    sub-double v2, p0, v2

    aput-wide v2, p2, v5

    .line 338
    :goto_0
    return-void

    .line 334
    .end local v0    # "a":D
    :cond_0
    const-wide/high16 v2, 0x3e10000000000000L    # 9.313225746154785E-10

    mul-double v0, p0, v2

    .line 335
    .restart local v0    # "a":D
    add-double v2, p0, v0

    sub-double/2addr v2, p0

    mul-double/2addr v2, v6

    aput-wide v2, p2, v4

    .line 336
    aget-wide v2, p2, v4

    sub-double v2, p0, v2

    aput-wide v2, p2, v5

    goto :goto_0
.end method

.method private static splitAdd([D[D[D)V
    .locals 6
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .param p2, "ans"    # [D

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 378
    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    add-double/2addr v0, v2

    aput-wide v0, p2, v4

    .line 379
    aget-wide v0, p0, v5

    aget-wide v2, p1, v5

    add-double/2addr v0, v2

    aput-wide v0, p2, v5

    .line 381
    invoke-static {p2}, Lorg/apache/commons/math3/util/FastMathCalc;->resplit([D)V

    .line 382
    return-void
.end method

.method private static splitMult([D[D[D)V
    .locals 7
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .param p2, "ans"    # [D

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 365
    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    mul-double/2addr v0, v2

    aput-wide v0, p2, v4

    .line 366
    aget-wide v0, p0, v4

    aget-wide v2, p1, v6

    mul-double/2addr v0, v2

    aget-wide v2, p0, v6

    aget-wide v4, p1, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    aget-wide v2, p0, v6

    aget-wide v4, p1, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    aput-wide v0, p2, v6

    .line 369
    invoke-static {p2}, Lorg/apache/commons/math3/util/FastMathCalc;->resplit([D)V

    .line 370
    return-void
.end method

.method static splitReciprocal([D[D)V
    .locals 16
    .param p0, "in"    # [D
    .param p1, "result"    # [D

    .prologue
    .line 403
    const-wide/high16 v2, 0x3e90000000000000L    # 2.384185791015625E-7

    .line 404
    .local v2, "b":D
    const-wide v0, 0x3fefffff80000000L    # 0.9999997615814209

    .line 406
    .local v0, "a":D
    const/4 v7, 0x0

    aget-wide v8, p0, v7

    const-wide/16 v10, 0x0

    cmpl-double v7, v8, v10

    if-nez v7, :cond_0

    .line 407
    const/4 v7, 0x0

    const/4 v8, 0x1

    aget-wide v8, p0, v8

    aput-wide v8, p0, v7

    .line 408
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, p0, v7

    .line 411
    :cond_0
    const/4 v7, 0x0

    const-wide v8, 0x3fefffff80000000L    # 0.9999997615814209

    const/4 v10, 0x0

    aget-wide v10, p0, v10

    div-double/2addr v8, v10

    aput-wide v8, p1, v7

    .line 412
    const/4 v7, 0x1

    const-wide/high16 v8, 0x3e90000000000000L    # 2.384185791015625E-7

    const/4 v10, 0x0

    aget-wide v10, p0, v10

    mul-double/2addr v8, v10

    const-wide v10, 0x3fefffff80000000L    # 0.9999997615814209

    const/4 v12, 0x1

    aget-wide v12, p0, v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    const/4 v10, 0x0

    aget-wide v10, p0, v10

    const/4 v12, 0x0

    aget-wide v12, p0, v12

    mul-double/2addr v10, v12

    const/4 v12, 0x0

    aget-wide v12, p0, v12

    const/4 v14, 0x1

    aget-wide v14, p0, v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    div-double/2addr v8, v10

    aput-wide v8, p1, v7

    .line 414
    const/4 v7, 0x1

    aget-wide v8, p1, v7

    const/4 v7, 0x1

    aget-wide v10, p1, v7

    cmpl-double v7, v8, v10

    if-eqz v7, :cond_1

    .line 415
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, p1, v7

    .line 419
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/FastMathCalc;->resplit([D)V

    .line 421
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    .line 423
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x0

    aget-wide v10, p1, v7

    const/4 v7, 0x0

    aget-wide v12, p0, v7

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    const/4 v7, 0x0

    aget-wide v10, p1, v7

    const/4 v7, 0x1

    aget-wide v12, p0, v7

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    const/4 v7, 0x1

    aget-wide v10, p1, v7

    const/4 v7, 0x0

    aget-wide v12, p0, v7

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    const/4 v7, 0x1

    aget-wide v10, p1, v7

    const/4 v7, 0x1

    aget-wide v12, p0, v7

    mul-double/2addr v10, v12

    sub-double v4, v8, v10

    .line 426
    .local v4, "err":D
    const/4 v7, 0x0

    aget-wide v8, p1, v7

    const/4 v7, 0x1

    aget-wide v10, p1, v7

    add-double/2addr v8, v10

    mul-double/2addr v4, v8

    .line 428
    const/4 v7, 0x1

    aget-wide v8, p1, v7

    add-double/2addr v8, v4

    aput-wide v8, p1, v7

    .line 421
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 430
    .end local v4    # "err":D
    :cond_2
    return-void
.end method
