.class public Lorg/apache/commons/math3/special/BesselJ;
.super Ljava/lang/Object;
.source "BesselJ.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/special/BesselJ$BesselJResult;
    }
.end annotation


# static fields
.field private static final ENMTEN:D = 8.9E-308

.field private static final ENSIG:D = 1.0E16

.field private static final ENTEN:D = 1.0E308

.field private static final FACT:[D

.field private static final PI2:D = 0.6366197723675814

.field private static final RTNSIG:D = 1.0E-4

.field private static final TOWPI1:D = 6.28125

.field private static final TWOPI:D = 6.283185307179586

.field private static final TWOPI2:D = 0.001935307179586477

.field private static final X_MAX:D = 10000.0

.field private static final X_MIN:D


# instance fields
.field private final order:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/16 v0, 0x19

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/special/BesselJ;->FACT:[D

    return-void

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
        0x43c0e1b3be415a00L    # 2.43290200817664E18
        0x4406283be9b5c620L    # 5.109094217170944E19
        0x444e77526159f06cL    # 1.1240007277776077E21
        0x4495e5c335f8a4ceL    # 2.585201673888498E22
        0x44e06c52687a7b9aL    # 6.204484017332394E23
    .end array-data
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "order"    # D

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-wide p1, p0, Lorg/apache/commons/math3/special/BesselJ;->order:D

    .line 130
    return-void
.end method

.method public static rjBesl(DDI)Lorg/apache/commons/math3/special/BesselJ$BesselJResult;
    .locals 88
    .param p0, "x"    # D
    .param p2, "alpha"    # D
    .param p4, "nb"    # I

    .prologue
    .line 246
    move/from16 v0, p4

    new-array v8, v0, [D

    .line 248
    .local v8, "b":[D
    const/16 v32, 0x0

    .line 249
    .local v32, "ncalc":I
    const-wide/16 v6, 0x0

    .line 250
    .local v6, "alpem":D
    const-wide/16 v4, 0x0

    .line 255
    .local v4, "alp2em":D
    move-wide/from16 v0, p0

    double-to-int v0, v0

    move/from16 v27, v0

    .line 256
    .local v27, "magx":I
    if-lez p4, :cond_2b

    const-wide/16 v80, 0x0

    cmpl-double v47, p0, v80

    if-ltz v47, :cond_2b

    const-wide v80, 0x40c3880000000000L    # 10000.0

    cmpg-double v47, p0, v80

    if-gtz v47, :cond_2b

    const-wide/16 v80, 0x0

    cmpl-double v47, p2, v80

    if-ltz v47, :cond_2b

    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    cmpg-double v47, p2, v80

    if-gez v47, :cond_2b

    .line 261
    move/from16 v32, p4

    .line 262
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 263
    const-wide/16 v80, 0x0

    aput-wide v80, v8, v22

    .line 262
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 274
    :cond_0
    const-wide v80, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v47, p0, v80

    if-gez v47, :cond_9

    .line 278
    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    .line 279
    .local v56, "tempa":D
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    add-double v6, v80, p2

    .line 280
    const-wide/16 v20, 0x0

    .line 281
    .local v20, "halfx":D
    const-wide v80, 0x2fffba634018dbL    # 8.9E-308

    cmpl-double v47, p0, v80

    if-lez v47, :cond_1

    .line 282
    const-wide/high16 v80, 0x3fe0000000000000L    # 0.5

    mul-double v20, v80, p0

    .line 284
    :cond_1
    const-wide/16 v80, 0x0

    cmpl-double v47, p2, v80

    if-eqz v47, :cond_2

    .line 285
    move-wide/from16 v0, v20

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v80

    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v82

    mul-double v82, v82, p2

    div-double v56, v80, v82

    .line 288
    :cond_2
    const-wide/16 v58, 0x0

    .line 289
    .local v58, "tempb":D
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    add-double v80, v80, p0

    const-wide/high16 v82, 0x3ff0000000000000L    # 1.0

    cmpl-double v47, v80, v82

    if-lez v47, :cond_3

    .line 290
    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v80, v0

    mul-double v58, v80, v20

    .line 292
    :cond_3
    const/16 v47, 0x0

    mul-double v80, v56, v58

    div-double v80, v80, v6

    add-double v80, v80, v56

    aput-wide v80, v8, v47

    .line 293
    const-wide/16 v80, 0x0

    cmpl-double v47, p0, v80

    if-eqz v47, :cond_4

    const/16 v47, 0x0

    aget-wide v80, v8, v47

    const-wide/16 v82, 0x0

    cmpl-double v47, v80, v82

    if-nez v47, :cond_4

    .line 294
    const/16 v32, 0x0

    .line 296
    :cond_4
    const/16 v47, 0x1

    move/from16 v0, p4

    move/from16 v1, v47

    if-eq v0, v1, :cond_2d

    .line 297
    const-wide/16 v80, 0x0

    cmpg-double v47, p0, v80

    if-gtz v47, :cond_5

    .line 298
    const/16 v30, 0x1

    .local v30, "n":I
    :goto_1
    move/from16 v0, v30

    move/from16 v1, p4

    if-ge v0, v1, :cond_2d

    .line 299
    const-wide/16 v80, 0x0

    aput-wide v80, v8, v30

    .line 298
    add-int/lit8 v30, v30, 0x1

    goto :goto_1

    .line 305
    .end local v30    # "n":I
    :cond_5
    move-wide/from16 v60, v20

    .line 306
    .local v60, "tempc":D
    const-wide/16 v80, 0x0

    cmpl-double v47, v58, v80

    if-eqz v47, :cond_8

    const-wide v80, 0x2fffba634018dbL    # 8.9E-308

    div-double v64, v80, v58

    .line 307
    .local v64, "tover":D
    :goto_2
    const/16 v30, 0x1

    .restart local v30    # "n":I
    :goto_3
    move/from16 v0, v30

    move/from16 v1, p4

    if-ge v0, v1, :cond_2d

    .line 308
    div-double v56, v56, v6

    .line 309
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    add-double v6, v6, v80

    .line 310
    mul-double v56, v56, v60

    .line 311
    mul-double v80, v64, v6

    cmpg-double v47, v56, v80

    if-gtz v47, :cond_6

    .line 312
    const-wide/16 v56, 0x0

    .line 314
    :cond_6
    mul-double v80, v56, v58

    div-double v80, v80, v6

    add-double v80, v80, v56

    aput-wide v80, v8, v30

    .line 315
    aget-wide v80, v8, v30

    const-wide/16 v82, 0x0

    cmpl-double v47, v80, v82

    if-nez v47, :cond_7

    move/from16 v0, v32

    move/from16 v1, v30

    if-le v0, v1, :cond_7

    .line 316
    move/from16 v32, v30

    .line 307
    :cond_7
    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    .line 306
    .end local v30    # "n":I
    .end local v64    # "tover":D
    :cond_8
    const-wide v80, 0x3fffba634018dbL    # 1.78E-307

    div-double v64, v80, p0

    goto :goto_2

    .line 321
    .end local v20    # "halfx":D
    .end local v56    # "tempa":D
    .end local v58    # "tempb":D
    .end local v60    # "tempc":D
    :cond_9
    const-wide/high16 v80, 0x4039000000000000L    # 25.0

    cmpl-double v47, p0, v80

    if-lez v47, :cond_f

    add-int/lit8 v47, v27, 0x1

    move/from16 v0, p4

    move/from16 v1, v47

    if-gt v0, v1, :cond_f

    .line 325
    const-wide v80, 0x3fe45f306dc9c883L    # 0.6366197723675814

    div-double v80, v80, p0

    invoke-static/range {v80 .. v81}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v70

    .line 326
    .local v70, "xc":D
    const-wide/high16 v80, 0x3fc0000000000000L    # 0.125

    div-double v28, v80, p0

    .line 327
    .local v28, "mul":D
    mul-double v72, v28, v28

    .line 328
    .local v72, "xin":D
    const/16 v26, 0x0

    .line 329
    .local v26, "m":I
    const-wide v80, 0x4060400000000000L    # 130.0

    cmpl-double v47, p0, v80

    if-ltz v47, :cond_a

    .line 330
    const/16 v26, 0x4

    .line 337
    :goto_4
    const-wide/high16 v80, 0x4010000000000000L    # 4.0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v82, v0

    mul-double v76, v80, v82

    .line 341
    .local v76, "xm":D
    const-wide v80, 0x401921fb54442d18L    # 6.283185307179586

    div-double v80, p0, v80

    const-wide/high16 v82, 0x3fe0000000000000L    # 0.5

    add-double v80, v80, v82

    move-wide/from16 v0, v80

    double-to-int v0, v0

    move/from16 v47, v0

    move/from16 v0, v47

    int-to-double v0, v0

    move-wide/from16 v52, v0

    .line 342
    .local v52, "t":D
    const-wide v80, 0x4019200000000000L    # 6.28125

    mul-double v80, v80, v52

    sub-double v80, p0, v80

    const-wide v82, 0x3f5fb54442d1846aL    # 0.001935307179586477

    mul-double v82, v82, v52

    sub-double v80, v80, v82

    const-wide/high16 v82, 0x3fe0000000000000L    # 0.5

    add-double v82, v82, p2

    const-wide v84, 0x3fe45f306dc9c883L    # 0.6366197723675814

    div-double v82, v82, v84

    sub-double v78, v80, v82

    .line 343
    .local v78, "z":D
    invoke-static/range {v78 .. v79}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v68

    .line 344
    .local v68, "vsin":D
    invoke-static/range {v78 .. v79}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v66

    .line 345
    .local v66, "vcos":D
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    mul-double v18, v80, p2

    .line 351
    .local v18, "gnu":D
    const/16 v22, 0x1

    :goto_5
    const/16 v47, 0x2

    move/from16 v0, v22

    move/from16 v1, v47

    if-gt v0, v1, :cond_e

    .line 352
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    sub-double v80, v76, v80

    sub-double v80, v80, v18

    const-wide/high16 v82, 0x3ff0000000000000L    # 1.0

    sub-double v82, v76, v82

    add-double v82, v82, v18

    mul-double v80, v80, v82

    mul-double v80, v80, v72

    const-wide/high16 v82, 0x3fe0000000000000L    # 0.5

    mul-double v48, v80, v82

    .line 353
    .local v48, "s":D
    const-wide/high16 v80, 0x4008000000000000L    # 3.0

    sub-double v80, v76, v80

    sub-double v80, v18, v80

    const-wide/high16 v82, 0x4008000000000000L    # 3.0

    sub-double v82, v76, v82

    add-double v82, v82, v18

    mul-double v52, v80, v82

    .line 354
    mul-double v80, v48, v52

    sget-object v47, Lorg/apache/commons/math3/special/BesselJ;->FACT:[D

    mul-int/lit8 v82, v26, 0x2

    aget-wide v82, v47, v82

    div-double v10, v80, v82

    .line 355
    .local v10, "capp":D
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    add-double v80, v80, v76

    sub-double v80, v18, v80

    const-wide/high16 v82, 0x3ff0000000000000L    # 1.0

    add-double v82, v82, v76

    add-double v82, v82, v18

    mul-double v54, v80, v82

    .line 356
    .local v54, "t1":D
    mul-double v80, v48, v54

    sget-object v47, Lorg/apache/commons/math3/special/BesselJ;->FACT:[D

    mul-int/lit8 v82, v26, 0x2

    add-int/lit8 v82, v82, 0x1

    aget-wide v82, v47, v82

    div-double v12, v80, v82

    .line 357
    .local v12, "capq":D
    move-wide/from16 v74, v76

    .line 358
    .local v74, "xk":D
    mul-int/lit8 v24, v26, 0x2

    .line 359
    .local v24, "k":I
    move-wide/from16 v54, v52

    .line 361
    const/16 v23, 0x2

    .local v23, "j":I
    :goto_6
    move/from16 v0, v23

    move/from16 v1, v26

    if-gt v0, v1, :cond_c

    .line 362
    const-wide/high16 v80, 0x4010000000000000L    # 4.0

    sub-double v74, v74, v80

    .line 363
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    sub-double v80, v74, v80

    sub-double v80, v80, v18

    const-wide/high16 v82, 0x3ff0000000000000L    # 1.0

    sub-double v82, v74, v82

    add-double v82, v82, v18

    mul-double v48, v80, v82

    .line 364
    const-wide/high16 v80, 0x4008000000000000L    # 3.0

    sub-double v80, v74, v80

    sub-double v80, v18, v80

    const-wide/high16 v82, 0x4008000000000000L    # 3.0

    sub-double v82, v74, v82

    add-double v82, v82, v18

    mul-double v52, v80, v82

    .line 365
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    sget-object v47, Lorg/apache/commons/math3/special/BesselJ;->FACT:[D

    add-int/lit8 v82, v24, -0x2

    aget-wide v82, v47, v82

    div-double v80, v80, v82

    add-double v80, v80, v10

    mul-double v80, v80, v48

    mul-double v80, v80, v52

    mul-double v10, v80, v72

    .line 366
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    sget-object v47, Lorg/apache/commons/math3/special/BesselJ;->FACT:[D

    add-int/lit8 v82, v24, -0x1

    aget-wide v82, v47, v82

    div-double v80, v80, v82

    add-double v80, v80, v12

    mul-double v80, v80, v48

    mul-double v80, v80, v54

    mul-double v12, v80, v72

    .line 367
    add-int/lit8 v24, v24, -0x2

    .line 368
    move-wide/from16 v54, v52

    .line 361
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 331
    .end local v10    # "capp":D
    .end local v12    # "capq":D
    .end local v18    # "gnu":D
    .end local v23    # "j":I
    .end local v24    # "k":I
    .end local v48    # "s":D
    .end local v52    # "t":D
    .end local v54    # "t1":D
    .end local v66    # "vcos":D
    .end local v68    # "vsin":D
    .end local v74    # "xk":D
    .end local v76    # "xm":D
    .end local v78    # "z":D
    :cond_a
    const-wide v80, 0x4041800000000000L    # 35.0

    cmpl-double v47, p0, v80

    if-ltz v47, :cond_b

    .line 332
    const/16 v26, 0x8

    goto/16 :goto_4

    .line 334
    :cond_b
    const/16 v26, 0xb

    goto/16 :goto_4

    .line 371
    .restart local v10    # "capp":D
    .restart local v12    # "capq":D
    .restart local v18    # "gnu":D
    .restart local v23    # "j":I
    .restart local v24    # "k":I
    .restart local v48    # "s":D
    .restart local v52    # "t":D
    .restart local v54    # "t1":D
    .restart local v66    # "vcos":D
    .restart local v68    # "vsin":D
    .restart local v74    # "xk":D
    .restart local v76    # "xm":D
    .restart local v78    # "z":D
    :cond_c
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    add-double v10, v10, v80

    .line 372
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    add-double v80, v80, v12

    mul-double v82, v18, v18

    const-wide/high16 v84, 0x3ff0000000000000L    # 1.0

    sub-double v82, v82, v84

    mul-double v80, v80, v82

    const-wide/high16 v82, 0x3fc0000000000000L    # 0.125

    div-double v82, v82, p0

    mul-double v12, v80, v82

    .line 373
    add-int/lit8 v47, v22, -0x1

    mul-double v80, v10, v66

    mul-double v82, v12, v68

    sub-double v80, v80, v82

    mul-double v80, v80, v70

    aput-wide v80, v8, v47

    .line 374
    const/16 v47, 0x1

    move/from16 v0, p4

    move/from16 v1, v47

    if-ne v0, v1, :cond_d

    .line 375
    new-instance v47, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;

    array-length v0, v8

    move/from16 v80, v0

    move/from16 v0, v80

    invoke-static {v8, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v80

    move-object/from16 v0, v47

    move-object/from16 v1, v80

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;-><init>([DI)V

    .line 646
    .end local v10    # "capp":D
    .end local v12    # "capq":D
    .end local v18    # "gnu":D
    .end local v22    # "i":I
    .end local v23    # "j":I
    .end local v24    # "k":I
    .end local v26    # "m":I
    .end local v28    # "mul":D
    .end local v48    # "s":D
    .end local v52    # "t":D
    .end local v54    # "t1":D
    .end local v66    # "vcos":D
    .end local v68    # "vsin":D
    .end local v70    # "xc":D
    .end local v72    # "xin":D
    .end local v74    # "xk":D
    .end local v76    # "xm":D
    .end local v78    # "z":D
    :goto_7
    return-object v47

    .line 378
    .restart local v10    # "capp":D
    .restart local v12    # "capq":D
    .restart local v18    # "gnu":D
    .restart local v22    # "i":I
    .restart local v23    # "j":I
    .restart local v24    # "k":I
    .restart local v26    # "m":I
    .restart local v28    # "mul":D
    .restart local v48    # "s":D
    .restart local v52    # "t":D
    .restart local v54    # "t1":D
    .restart local v66    # "vcos":D
    .restart local v68    # "vsin":D
    .restart local v70    # "xc":D
    .restart local v72    # "xin":D
    .restart local v74    # "xk":D
    .restart local v76    # "xm":D
    .restart local v78    # "z":D
    :cond_d
    move-wide/from16 v52, v68

    .line 379
    move-wide/from16 v0, v66

    neg-double v0, v0

    move-wide/from16 v68, v0

    .line 380
    move-wide/from16 v66, v52

    .line 381
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    add-double v18, v18, v80

    .line 351
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_5

    .line 387
    .end local v10    # "capp":D
    .end local v12    # "capq":D
    .end local v23    # "j":I
    .end local v24    # "k":I
    .end local v48    # "s":D
    .end local v54    # "t1":D
    .end local v74    # "xk":D
    :cond_e
    const/16 v47, 0x2

    move/from16 v0, p4

    move/from16 v1, v47

    if-le v0, v1, :cond_2d

    .line 388
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    mul-double v80, v80, p2

    const-wide/high16 v82, 0x4000000000000000L    # 2.0

    add-double v18, v80, v82

    .line 389
    const/16 v23, 0x2

    .restart local v23    # "j":I
    :goto_8
    move/from16 v0, v23

    move/from16 v1, p4

    if-ge v0, v1, :cond_2d

    .line 390
    add-int/lit8 v47, v23, -0x1

    aget-wide v80, v8, v47

    mul-double v80, v80, v18

    div-double v80, v80, p0

    add-int/lit8 v47, v23, -0x2

    aget-wide v82, v8, v47

    sub-double v80, v80, v82

    aput-wide v80, v8, v23

    .line 391
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    add-double v18, v18, v80

    .line 389
    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    .line 399
    .end local v18    # "gnu":D
    .end local v23    # "j":I
    .end local v26    # "m":I
    .end local v28    # "mul":D
    .end local v52    # "t":D
    .end local v66    # "vcos":D
    .end local v68    # "vsin":D
    .end local v70    # "xc":D
    .end local v72    # "xin":D
    .end local v76    # "xm":D
    .end local v78    # "z":D
    :cond_f
    sub-int v31, p4, v27

    .line 400
    .local v31, "nbmx":I
    add-int/lit8 v30, v27, 0x1

    .line 401
    .restart local v30    # "n":I
    const/16 v34, 0x0

    .line 402
    .local v34, "nstart":I
    const/16 v33, 0x0

    .line 403
    .local v33, "nend":I
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v82, v0

    add-double v82, v82, p2

    mul-double v16, v80, v82

    .line 404
    .local v16, "en":D
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    .line 405
    .local v38, "plast":D
    div-double v36, v16, p0

    .line 410
    .local v36, "p":D
    const-wide v62, 0x4351c37937e08000L    # 2.0E16

    .line 411
    .local v62, "test":D
    const/16 v35, 0x0

    .line 412
    .local v35, "readyToInitialize":Z
    const/16 v47, 0x3

    move/from16 v0, v31

    move/from16 v1, v47

    if-lt v0, v1, :cond_13

    .line 417
    const-wide v64, 0x7c9008896bcf54faL    # 1.0E292

    .line 418
    .restart local v64    # "tover":D
    add-int/lit8 v34, v27, 0x2

    .line 419
    add-int/lit8 v33, p4, -0x1

    .line 420
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    add-int/lit8 v47, v34, -0x1

    move/from16 v0, v47

    int-to-double v0, v0

    move-wide/from16 v82, v0

    add-double v82, v82, p2

    mul-double v16, v80, v82

    .line 423
    move/from16 v24, v34

    .restart local v24    # "k":I
    :goto_9
    move/from16 v0, v24

    move/from16 v1, v33

    if-gt v0, v1, :cond_12

    .line 424
    move/from16 v30, v24

    .line 425
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    add-double v16, v16, v80

    .line 426
    move-wide/from16 v40, v38

    .line 427
    .local v40, "pold":D
    move-wide/from16 v38, v36

    .line 428
    mul-double v80, v16, v38

    div-double v80, v80, p0

    sub-double v36, v80, v40

    .line 429
    cmpl-double v47, v36, v64

    if-lez v47, :cond_1d

    .line 435
    const-wide v64, 0x7fe1ccf385ebc8a0L    # 1.0E308

    .line 436
    div-double v36, v36, v64

    .line 437
    div-double v38, v38, v64

    .line 438
    move-wide/from16 v42, v36

    .line 439
    .local v42, "psave":D
    move-wide/from16 v44, v38

    .line 440
    .local v44, "psavel":D
    add-int/lit8 v34, v30, 0x1

    .line 442
    :cond_10
    add-int/lit8 v30, v30, 0x1

    .line 443
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    add-double v16, v16, v80

    .line 444
    move-wide/from16 v40, v38

    .line 445
    move-wide/from16 v38, v36

    .line 446
    mul-double v80, v16, v38

    div-double v80, v80, p0

    sub-double v36, v80, v40

    .line 447
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    cmpg-double v47, v36, v80

    if-lez v47, :cond_10

    .line 448
    div-double v58, v16, p0

    .line 454
    .restart local v58    # "tempb":D
    mul-double v80, v40, v38

    const-wide/high16 v82, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v84, 0x3fe0000000000000L    # 0.5

    mul-double v86, v58, v58

    div-double v84, v84, v86

    sub-double v82, v82, v84

    mul-double v62, v80, v82

    .line 455
    const-wide v80, 0x4341c37937e08000L    # 1.0E16

    div-double v62, v62, v80

    .line 456
    mul-double v36, v38, v64

    .line 457
    add-int/lit8 v30, v30, -0x1

    .line 458
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    sub-double v16, v16, v80

    .line 459
    move/from16 v0, p4

    move/from16 v1, v30

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v33

    .line 460
    move/from16 v25, v34

    .local v25, "l":I
    :goto_a
    move/from16 v0, v25

    move/from16 v1, v33

    if-gt v0, v1, :cond_11

    .line 461
    move-wide/from16 v40, v44

    .line 462
    move-wide/from16 v44, v42

    .line 463
    mul-double v80, v16, v44

    div-double v80, v80, p0

    sub-double v42, v80, v40

    .line 464
    mul-double v80, v42, v44

    cmpl-double v47, v80, v62

    if-lez v47, :cond_1c

    .line 465
    add-int/lit8 v32, v25, -0x1

    .line 466
    const/16 v35, 0x1

    .line 470
    :cond_11
    move/from16 v32, v33

    .line 471
    const/16 v35, 0x1

    .line 475
    .end local v25    # "l":I
    .end local v40    # "pold":D
    .end local v42    # "psave":D
    .end local v44    # "psavel":D
    .end local v58    # "tempb":D
    :cond_12
    if-nez v35, :cond_13

    .line 476
    move/from16 v30, v33

    .line 477
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v82, v0

    add-double v82, v82, p2

    mul-double v16, v80, v82

    .line 481
    const-wide v80, 0x4341c37937e08000L    # 1.0E16

    mul-double v80, v80, v38

    invoke-static/range {v80 .. v81}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v80

    const-wide/high16 v82, 0x4000000000000000L    # 2.0

    mul-double v82, v82, v36

    invoke-static/range {v82 .. v83}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v82

    mul-double v80, v80, v82

    move-wide/from16 v0, v62

    move-wide/from16 v2, v80

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v62

    .line 488
    .end local v24    # "k":I
    .end local v64    # "tover":D
    :cond_13
    if-nez v35, :cond_15

    .line 490
    :cond_14
    add-int/lit8 v30, v30, 0x1

    .line 491
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    add-double v16, v16, v80

    .line 492
    move-wide/from16 v40, v38

    .line 493
    .restart local v40    # "pold":D
    move-wide/from16 v38, v36

    .line 494
    mul-double v80, v16, v38

    div-double v80, v80, p0

    sub-double v36, v80, v40

    .line 495
    cmpg-double v47, v36, v62

    if-ltz v47, :cond_14

    .line 500
    .end local v40    # "pold":D
    :cond_15
    add-int/lit8 v30, v30, 0x1

    .line 501
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    add-double v16, v16, v80

    .line 502
    const-wide/16 v58, 0x0

    .line 503
    .restart local v58    # "tempb":D
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    div-double v56, v80, v36

    .line 504
    .restart local v56    # "tempa":D
    mul-int/lit8 v47, v30, 0x2

    div-int/lit8 v80, v30, 0x2

    mul-int/lit8 v80, v80, 0x4

    sub-int v26, v47, v80

    .line 505
    .restart local v26    # "m":I
    const-wide/16 v50, 0x0

    .line 506
    .local v50, "sum":D
    div-int/lit8 v47, v30, 0x2

    move/from16 v0, v47

    int-to-double v14, v0

    .line 507
    .local v14, "em":D
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    sub-double v80, v14, v80

    add-double v6, v80, p2

    .line 508
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    mul-double v80, v80, v14

    add-double v4, v80, p2

    .line 509
    if-eqz v26, :cond_16

    .line 510
    mul-double v80, v56, v6

    mul-double v80, v80, v4

    div-double v50, v80, v14

    .line 512
    :cond_16
    sub-int v33, v30, p4

    .line 514
    const/16 v46, 0x0

    .line 515
    .local v46, "readyToNormalize":Z
    const/4 v9, 0x0

    .line 521
    .local v9, "calculatedB0":Z
    const/16 v25, 0x1

    .restart local v25    # "l":I
    :goto_b
    move/from16 v0, v25

    move/from16 v1, v33

    if-gt v0, v1, :cond_17

    .line 522
    add-int/lit8 v30, v30, -0x1

    .line 523
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    sub-double v16, v16, v80

    .line 524
    move-wide/from16 v60, v58

    .line 525
    .restart local v60    # "tempc":D
    move-wide/from16 v58, v56

    .line 526
    mul-double v80, v16, v58

    div-double v80, v80, p0

    sub-double v56, v80, v60

    .line 527
    rsub-int/lit8 v26, v26, 0x2

    .line 528
    if-eqz v26, :cond_20

    .line 529
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    sub-double v14, v14, v80

    .line 530
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    mul-double v80, v80, v14

    add-double v4, v80, p2

    .line 531
    const/16 v47, 0x1

    move/from16 v0, v30

    move/from16 v1, v47

    if-ne v0, v1, :cond_1e

    .line 545
    .end local v60    # "tempc":D
    :cond_17
    add-int/lit8 v47, v30, -0x1

    aput-wide v56, v8, v47

    .line 546
    if-ltz v33, :cond_19

    .line 547
    const/16 v47, 0x1

    move/from16 v0, p4

    move/from16 v1, v47

    if-gt v0, v1, :cond_21

    .line 548
    move-wide/from16 v4, p2

    .line 549
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    add-double v80, v80, p2

    const-wide/high16 v82, 0x3ff0000000000000L    # 1.0

    cmpl-double v47, v80, v82

    if-nez v47, :cond_18

    .line 550
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 552
    :cond_18
    const/16 v47, 0x0

    aget-wide v80, v8, v47

    mul-double v80, v80, v4

    add-double v50, v50, v80

    .line 553
    const/16 v46, 0x1

    .line 578
    :cond_19
    :goto_c
    if-nez v46, :cond_24

    if-nez v9, :cond_24

    .line 579
    add-int/lit8 v33, v30, -0x2

    .line 580
    if-eqz v33, :cond_24

    .line 586
    const/16 v25, 0x1

    :goto_d
    move/from16 v0, v25

    move/from16 v1, v33

    if-gt v0, v1, :cond_24

    .line 587
    add-int/lit8 v30, v30, -0x1

    .line 588
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    sub-double v16, v16, v80

    .line 589
    add-int/lit8 v47, v30, -0x1

    aget-wide v80, v8, v30

    mul-double v80, v80, v16

    div-double v80, v80, p0

    add-int/lit8 v82, v30, 0x1

    aget-wide v82, v8, v82

    sub-double v80, v80, v82

    aput-wide v80, v8, v47

    .line 590
    rsub-int/lit8 v26, v26, 0x2

    .line 591
    if-eqz v26, :cond_1b

    .line 592
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    sub-double v14, v14, v80

    .line 593
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    mul-double v80, v80, v14

    add-double v4, v80, p2

    .line 594
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    sub-double v80, v14, v80

    add-double v6, v80, p2

    .line 595
    const-wide/16 v80, 0x0

    cmpl-double v47, v6, v80

    if-nez v47, :cond_1a

    .line 596
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 599
    :cond_1a
    add-int/lit8 v47, v30, -0x1

    aget-wide v80, v8, v47

    mul-double v80, v80, v4

    add-double v80, v80, v50

    mul-double v80, v80, v6

    div-double v50, v80, v14

    .line 586
    :cond_1b
    add-int/lit8 v25, v25, 0x1

    goto :goto_d

    .line 460
    .end local v9    # "calculatedB0":Z
    .end local v14    # "em":D
    .end local v26    # "m":I
    .end local v46    # "readyToNormalize":Z
    .end local v50    # "sum":D
    .end local v56    # "tempa":D
    .restart local v24    # "k":I
    .restart local v40    # "pold":D
    .restart local v42    # "psave":D
    .restart local v44    # "psavel":D
    .restart local v64    # "tover":D
    :cond_1c
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_a

    .line 423
    .end local v25    # "l":I
    .end local v42    # "psave":D
    .end local v44    # "psavel":D
    .end local v58    # "tempb":D
    :cond_1d
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_9

    .line 534
    .end local v24    # "k":I
    .end local v40    # "pold":D
    .end local v64    # "tover":D
    .restart local v9    # "calculatedB0":Z
    .restart local v14    # "em":D
    .restart local v25    # "l":I
    .restart local v26    # "m":I
    .restart local v46    # "readyToNormalize":Z
    .restart local v50    # "sum":D
    .restart local v56    # "tempa":D
    .restart local v58    # "tempb":D
    .restart local v60    # "tempc":D
    :cond_1e
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    sub-double v80, v14, v80

    add-double v6, v80, p2

    .line 535
    const-wide/16 v80, 0x0

    cmpl-double v47, v6, v80

    if-nez v47, :cond_1f

    .line 536
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 538
    :cond_1f
    mul-double v80, v56, v4

    add-double v80, v80, v50

    mul-double v80, v80, v6

    div-double v50, v80, v14

    .line 521
    :cond_20
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_b

    .line 558
    .end local v60    # "tempc":D
    :cond_21
    add-int/lit8 v30, v30, -0x1

    .line 559
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    sub-double v16, v16, v80

    .line 560
    add-int/lit8 v47, v30, -0x1

    mul-double v80, v16, v56

    div-double v80, v80, p0

    sub-double v80, v80, v58

    aput-wide v80, v8, v47

    .line 561
    const/16 v47, 0x1

    move/from16 v0, v30

    move/from16 v1, v47

    if-ne v0, v1, :cond_22

    .line 562
    const/4 v9, 0x1

    goto/16 :goto_c

    .line 564
    :cond_22
    rsub-int/lit8 v26, v26, 0x2

    .line 565
    if-eqz v26, :cond_19

    .line 566
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    sub-double v14, v14, v80

    .line 567
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    mul-double v80, v80, v14

    add-double v4, v80, p2

    .line 568
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    sub-double v80, v14, v80

    add-double v6, v80, p2

    .line 569
    const-wide/16 v80, 0x0

    cmpl-double v47, v6, v80

    if-nez v47, :cond_23

    .line 570
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 573
    :cond_23
    add-int/lit8 v47, v30, -0x1

    aget-wide v80, v8, v47

    mul-double v80, v80, v4

    add-double v80, v80, v50

    mul-double v80, v80, v6

    div-double v50, v80, v14

    goto/16 :goto_c

    .line 607
    :cond_24
    if-nez v46, :cond_27

    .line 608
    if-nez v9, :cond_25

    .line 609
    const/16 v47, 0x0

    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    const-wide/high16 v82, 0x3ff0000000000000L    # 1.0

    add-double v82, v82, p2

    mul-double v80, v80, v82

    const/16 v82, 0x1

    aget-wide v82, v8, v82

    mul-double v80, v80, v82

    div-double v80, v80, p0

    const/16 v82, 0x2

    aget-wide v82, v8, v82

    sub-double v80, v80, v82

    aput-wide v80, v8, v47

    .line 611
    :cond_25
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    sub-double v14, v14, v80

    .line 612
    const-wide/high16 v80, 0x4000000000000000L    # 2.0

    mul-double v80, v80, v14

    add-double v4, v80, p2

    .line 613
    const-wide/16 v80, 0x0

    cmpl-double v47, v4, v80

    if-nez v47, :cond_26

    .line 614
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 616
    :cond_26
    const/16 v47, 0x0

    aget-wide v80, v8, v47

    mul-double v80, v80, v4

    add-double v50, v50, v80

    .line 622
    :cond_27
    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v80

    const-wide v82, 0x3c9cd2b297d889bcL    # 1.0E-16

    cmpl-double v47, v80, v82

    if-lez v47, :cond_28

    .line 623
    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v80

    const-wide/high16 v82, 0x3fe0000000000000L    # 0.5

    mul-double v82, v82, p0

    move-wide/from16 v0, p2

    neg-double v0, v0

    move-wide/from16 v84, v0

    invoke-static/range {v82 .. v85}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v82

    mul-double v80, v80, v82

    mul-double v50, v50, v80

    .line 625
    :cond_28
    const-wide v56, 0x2fffba634018dbL    # 8.9E-308

    .line 626
    const-wide/high16 v80, 0x3ff0000000000000L    # 1.0

    cmpl-double v47, v50, v80

    if-lez v47, :cond_29

    .line 627
    mul-double v56, v56, v50

    .line 630
    :cond_29
    const/16 v30, 0x0

    :goto_e
    move/from16 v0, v30

    move/from16 v1, p4

    if-ge v0, v1, :cond_2d

    .line 631
    aget-wide v80, v8, v30

    invoke-static/range {v80 .. v81}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v80

    cmpg-double v47, v80, v56

    if-gez v47, :cond_2a

    .line 632
    const-wide/16 v80, 0x0

    aput-wide v80, v8, v30

    .line 634
    :cond_2a
    aget-wide v80, v8, v30

    div-double v80, v80, v50

    aput-wide v80, v8, v30

    .line 630
    add-int/lit8 v30, v30, 0x1

    goto :goto_e

    .line 641
    .end local v9    # "calculatedB0":Z
    .end local v14    # "em":D
    .end local v16    # "en":D
    .end local v22    # "i":I
    .end local v25    # "l":I
    .end local v26    # "m":I
    .end local v30    # "n":I
    .end local v31    # "nbmx":I
    .end local v33    # "nend":I
    .end local v34    # "nstart":I
    .end local v35    # "readyToInitialize":Z
    .end local v36    # "p":D
    .end local v38    # "plast":D
    .end local v46    # "readyToNormalize":Z
    .end local v50    # "sum":D
    .end local v56    # "tempa":D
    .end local v58    # "tempb":D
    .end local v62    # "test":D
    :cond_2b
    array-length v0, v8

    move/from16 v47, v0

    if-lez v47, :cond_2c

    .line 642
    const/16 v47, 0x0

    const-wide/16 v80, 0x0

    aput-wide v80, v8, v47

    .line 644
    :cond_2c
    const/16 v47, 0x0

    move/from16 v0, p4

    move/from16 v1, v47

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v47

    add-int/lit8 v32, v47, -0x1

    .line 646
    :cond_2d
    new-instance v47, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;

    array-length v0, v8

    move/from16 v80, v0

    move/from16 v0, v80

    invoke-static {v8, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v80

    move-object/from16 v0, v47

    move-object/from16 v1, v80

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;-><init>([DI)V

    goto/16 :goto_7
.end method

.method public static value(DD)D
    .locals 10
    .param p0, "order"    # D
    .param p2, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .prologue
    .line 157
    double-to-int v2, p0

    .line 158
    .local v2, "n":I
    int-to-double v6, v2

    sub-double v0, p0, v6

    .line 159
    .local v0, "alpha":D
    add-int/lit8 v3, v2, 0x1

    .line 160
    .local v3, "nb":I
    invoke-static {p2, p3, v0, v1, v3}, Lorg/apache/commons/math3/special/BesselJ;->rjBesl(DDI)Lorg/apache/commons/math3/special/BesselJ$BesselJResult;

    move-result-object v4

    .line 162
    .local v4, "res":Lorg/apache/commons/math3/special/BesselJ$BesselJResult;
    # getter for: Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->nVals:I
    invoke-static {v4}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->access$000(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)I

    move-result v5

    if-lt v5, v3, :cond_0

    .line 163
    # getter for: Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->vals:[D
    invoke-static {v4}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->access$100(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)[D

    move-result-object v5

    aget-wide v6, v5, v2

    .line 167
    :goto_0
    return-wide v6

    .line 164
    :cond_0
    # getter for: Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->nVals:I
    invoke-static {v4}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->access$000(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)I

    move-result v5

    if-gez v5, :cond_1

    .line 165
    new-instance v5, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BESSEL_FUNCTION_BAD_ARGUMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5

    .line 166
    :cond_1
    # getter for: Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->vals:[D
    invoke-static {v4}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->access$100(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)[D

    move-result-object v5

    # getter for: Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->nVals:I
    invoke-static {v4}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->access$000(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-wide v6, v5, v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x2b2bff2ee48e0530L    # 1.0E-100

    cmpg-double v5, v6, v8

    if-gez v5, :cond_2

    .line 167
    # getter for: Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->vals:[D
    invoke-static {v4}, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->access$100(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)[D

    move-result-object v5

    aget-wide v6, v5, v2

    goto :goto_0

    .line 169
    :cond_2
    new-instance v5, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BESSEL_FUNCTION_FAILED_CONVERGENCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v5
.end method


# virtual methods
.method public value(D)D
    .locals 3
    .param p1, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .prologue
    .line 143
    iget-wide v0, p0, Lorg/apache/commons/math3/special/BesselJ;->order:D

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/math3/special/BesselJ;->value(DD)D

    move-result-wide v0

    return-wide v0
.end method
