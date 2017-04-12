.class public Lorg/apache/commons/math3/special/Gamma;
.super Ljava/lang/Object;
.source "Gamma.java"


# static fields
.field private static final C_LIMIT:D = 49.0

.field private static final DEFAULT_EPSILON:D = 1.0E-14

.field public static final GAMMA:D = 0.5772156649015329

.field private static final HALF_LOG_2_PI:D

.field private static final INV_GAMMA1P_M1_A0:D = 6.116095104481416E-9

.field private static final INV_GAMMA1P_M1_A1:D = 6.247308301164655E-9

.field private static final INV_GAMMA1P_M1_B1:D = 0.203610414066807

.field private static final INV_GAMMA1P_M1_B2:D = 0.026620534842894922

.field private static final INV_GAMMA1P_M1_B3:D = 4.939449793824468E-4

.field private static final INV_GAMMA1P_M1_B4:D = -8.514194324403149E-6

.field private static final INV_GAMMA1P_M1_B5:D = -6.4304548177935305E-6

.field private static final INV_GAMMA1P_M1_B6:D = 9.926418406727737E-7

.field private static final INV_GAMMA1P_M1_B7:D = -6.077618957228252E-8

.field private static final INV_GAMMA1P_M1_B8:D = 1.9575583661463974E-10

.field private static final INV_GAMMA1P_M1_C:D = -0.42278433509846713

.field private static final INV_GAMMA1P_M1_C0:D = 0.5772156649015329

.field private static final INV_GAMMA1P_M1_C1:D = -0.6558780715202539

.field private static final INV_GAMMA1P_M1_C10:D = -2.013485478078824E-5

.field private static final INV_GAMMA1P_M1_C11:D = -1.2504934821426706E-6

.field private static final INV_GAMMA1P_M1_C12:D = 1.133027231981696E-6

.field private static final INV_GAMMA1P_M1_C13:D = -2.056338416977607E-7

.field private static final INV_GAMMA1P_M1_C2:D = -0.04200263503409524

.field private static final INV_GAMMA1P_M1_C3:D = 0.16653861138229148

.field private static final INV_GAMMA1P_M1_C4:D = -0.04219773455554433

.field private static final INV_GAMMA1P_M1_C5:D = -0.009621971527876973

.field private static final INV_GAMMA1P_M1_C6:D = 0.0072189432466631

.field private static final INV_GAMMA1P_M1_C7:D = -0.0011651675918590652

.field private static final INV_GAMMA1P_M1_C8:D = -2.1524167411495098E-4

.field private static final INV_GAMMA1P_M1_C9:D = 1.280502823881162E-4

.field private static final INV_GAMMA1P_M1_P0:D = 6.116095104481416E-9

.field private static final INV_GAMMA1P_M1_P1:D = 6.8716741130671986E-9

.field private static final INV_GAMMA1P_M1_P2:D = 6.820161668496171E-10

.field private static final INV_GAMMA1P_M1_P3:D = 4.686843322948848E-11

.field private static final INV_GAMMA1P_M1_P4:D = 1.5728330277104463E-12

.field private static final INV_GAMMA1P_M1_P5:D = -1.2494415722763663E-13

.field private static final INV_GAMMA1P_M1_P6:D = 4.343529937408594E-15

.field private static final INV_GAMMA1P_M1_Q1:D = 0.3056961078365221

.field private static final INV_GAMMA1P_M1_Q2:D = 0.054642130860422966

.field private static final INV_GAMMA1P_M1_Q3:D = 0.004956830093825887

.field private static final INV_GAMMA1P_M1_Q4:D = 2.6923694661863613E-4

.field private static final LANCZOS:[D

.field public static final LANCZOS_G:D = 4.7421875

.field private static final SQRT_TWO_PI:D = 2.5066282746310007

.field private static final S_LIMIT:D = 1.0E-5


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 71
    const/16 v0, 0xf

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/special/Gamma;->LANCZOS:[D

    .line 90
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/special/Gamma;->HALF_LOG_2_PI:D

    return-void

    .line 71
    :array_0
    .array-data 8
        0x3fefffffffffffe6L    # 0.9999999999999971
        0x404c93ff87c1acceL    # 57.15623566586292
        -0x3fb2337608fa76d0L    # -59.59796035547549
        0x402c45aea23d22a1L    # 14.136097974741746
        -0x4020847be9da401cL    # -0.4919138160976202
        0x3f01d2af4786183aL    # 3.399464998481189E-5
        0x3f08644bb7c5e3bdL    # 4.652362892704858E-5
        -0x40e63633621a8b49L    # -9.837447530487956E-5
        0x3f24b8939ed4e66dL    # 1.580887032249125E-4
        -0x40d470b232d541caL    # -2.1026444172410488E-4
        0x3f2c801018e9e826L    # 2.1743961811521265E-4
        -0x40da7666366ad9c0L    # -1.643181065367639E-4
        0x3f1621360b773d55L    # 8.441822398385275E-5
        -0x410489734a2e1dfaL    # -2.6190838401581408E-5
        0x3ecef40a04fc9810L    # 3.6899182659531625E-6
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static digamma(D)D
    .locals 10
    .param p0, "x"    # D

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 445
    const-wide/16 v2, 0x0

    cmpl-double v2, p0, v2

    if-lez v2, :cond_0

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v2, p0, v2

    if-gtz v2, :cond_0

    .line 448
    const-wide v2, -0x401d8773039049e7L    # -0.5772156649015329

    div-double/2addr v4, p0

    sub-double/2addr v2, v4

    .line 460
    :goto_0
    return-wide v2

    .line 451
    :cond_0
    const-wide v2, 0x4048800000000000L    # 49.0

    cmpl-double v2, p0, v2

    if-ltz v2, :cond_1

    .line 453
    mul-double v2, p0, p0

    div-double v0, v4, v2

    .line 457
    .local v0, "inv":D
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    div-double/2addr v4, p0

    sub-double/2addr v2, v4

    const-wide v4, 0x3fb5555555555555L    # 0.08333333333333333

    const-wide v6, 0x3f81111111111111L    # 0.008333333333333333

    const-wide v8, 0x406f800000000000L    # 252.0

    div-double v8, v0, v8

    sub-double/2addr v6, v8

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    goto :goto_0

    .line 460
    .end local v0    # "inv":D
    :cond_1
    add-double v2, p0, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->digamma(D)D

    move-result-wide v2

    div-double/2addr v4, p0

    sub-double/2addr v2, v4

    goto :goto_0
.end method

.method public static gamma(D)D
    .locals 18
    .param p0, "x"    # D

    .prologue
    .line 649
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/FastMath;->rint(D)D

    move-result-wide v12

    cmpl-double v12, p0, v12

    if-nez v12, :cond_0

    const-wide/16 v12, 0x0

    cmpg-double v12, p0, v12

    if-gtz v12, :cond_0

    .line 650
    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    .line 708
    :goto_0
    return-wide v6

    .line 654
    :cond_0
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 655
    .local v0, "absX":D
    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    cmpg-double v12, v0, v12

    if-gtz v12, :cond_4

    .line 656
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, p0, v12

    if-ltz v12, :cond_2

    .line 665
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 666
    .local v4, "prod":D
    move-wide/from16 v8, p0

    .line 667
    .local v8, "t":D
    :goto_1
    const-wide/high16 v12, 0x4004000000000000L    # 2.5

    cmpl-double v12, v8, v12

    if-lez v12, :cond_1

    .line 668
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v12

    .line 669
    mul-double/2addr v4, v8

    goto :goto_1

    .line 671
    :cond_1
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v14, v8, v14

    invoke-static {v14, v15}, Lorg/apache/commons/math3/special/Gamma;->invGamma1pm1(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    div-double v6, v4, v12

    .line 672
    .local v6, "ret":D
    goto :goto_0

    .line 680
    .end local v4    # "prod":D
    .end local v6    # "ret":D
    .end local v8    # "t":D
    :cond_2
    move-wide/from16 v4, p0

    .line 681
    .restart local v4    # "prod":D
    move-wide/from16 v8, p0

    .line 682
    .restart local v8    # "t":D
    :goto_2
    const-wide/high16 v12, -0x4020000000000000L    # -0.5

    cmpg-double v12, v8, v12

    if-gez v12, :cond_3

    .line 683
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v12

    .line 684
    mul-double/2addr v4, v8

    goto :goto_2

    .line 686
    :cond_3
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/special/Gamma;->invGamma1pm1(D)D

    move-result-wide v16

    add-double v14, v14, v16

    mul-double/2addr v14, v4

    div-double v6, v12, v14

    .line 687
    .restart local v6    # "ret":D
    goto :goto_0

    .line 689
    .end local v4    # "prod":D
    .end local v6    # "ret":D
    .end local v8    # "t":D
    :cond_4
    const-wide v12, 0x4012f80000000000L    # 4.7421875

    add-double/2addr v12, v0

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double v10, v12, v14

    .line 690
    .local v10, "y":D
    const-wide v12, 0x40040d931ff62706L    # 2.5066282746310007

    div-double v12, v12, p0

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v14, v0

    invoke-static {v10, v11, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    neg-double v14, v10

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->lanczos(D)D

    move-result-wide v14

    mul-double v2, v12, v14

    .line 693
    .local v2, "gammaAbs":D
    const-wide/16 v12, 0x0

    cmpl-double v12, p0, v12

    if-lez v12, :cond_5

    .line 694
    move-wide v6, v2

    .restart local v6    # "ret":D
    goto :goto_0

    .line 704
    .end local v6    # "ret":D
    :cond_5
    const-wide v12, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    mul-double v14, v14, p0

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v14

    mul-double v14, v14, p0

    mul-double/2addr v14, v2

    div-double v6, v12, v14

    .restart local v6    # "ret":D
    goto/16 :goto_0
.end method

.method public static invGamma1pm1(D)D
    .locals 20
    .param p0, "x"    # D

    .prologue
    .line 533
    const-wide/high16 v14, -0x4020000000000000L    # -0.5

    cmpg-double v14, p0, v14

    if-gez v14, :cond_0

    .line 534
    new-instance v14, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    const-wide/high16 v16, -0x4020000000000000L    # -0.5

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/16 v17, 0x1

    invoke-direct/range {v14 .. v17}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v14

    .line 536
    :cond_0
    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    cmpl-double v14, p0, v14

    if-lez v14, :cond_1

    .line 537
    new-instance v14, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/16 v17, 0x1

    invoke-direct/range {v14 .. v17}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v14

    .line 541
    :cond_1
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    cmpg-double v14, p0, v14

    if-gtz v14, :cond_2

    move-wide/from16 v12, p0

    .line 542
    .local v12, "t":D
    :goto_0
    const-wide/16 v14, 0x0

    cmpg-double v14, v12, v14

    if-gez v14, :cond_4

    .line 543
    const-wide v14, 0x3e3a44b7ba22d629L    # 6.116095104481416E-9

    const-wide v16, 0x3e3ad4fcf5652545L    # 6.247308301164655E-9

    mul-double v16, v16, v12

    add-double v0, v14, v16

    .line 544
    .local v0, "a":D
    const-wide v2, 0x3deae78bd35ee299L    # 1.9575583661463974E-10

    .line 545
    .local v2, "b":D
    const-wide v14, -0x418faf7df74a0d96L    # -6.077618957228252E-8

    mul-double v16, v12, v2

    add-double v2, v14, v16

    .line 546
    const-wide v14, 0x3eb0a75d3efc42a1L    # 9.926418406727737E-7

    mul-double v16, v12, v2

    add-double v2, v14, v16

    .line 547
    const-wide v14, -0x4125075a09fb0c8aL    # -6.4304548177935305E-6

    mul-double v16, v12, v2

    add-double v2, v14, v16

    .line 548
    const-wide v14, -0x411e24fa0ada8417L    # -8.514194324403149E-6

    mul-double v16, v12, v2

    add-double v2, v14, v16

    .line 549
    const-wide v14, 0x3f402f82c4280285L    # 4.939449793824468E-4

    mul-double v16, v12, v2

    add-double v2, v14, v16

    .line 550
    const-wide v14, 0x3f9b4269da358438L    # 0.026620534842894922

    mul-double v16, v12, v2

    add-double v2, v14, v16

    .line 551
    const-wide v14, 0x3fca0fe7f2c55ec3L    # 0.203610414066807

    mul-double v16, v12, v2

    add-double v2, v14, v16

    .line 552
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double v16, v12, v2

    add-double v2, v14, v16

    .line 554
    const-wide v14, -0x417466799993dda3L    # -2.056338416977607E-7

    div-double v16, v0, v2

    mul-double v16, v16, v12

    add-double v4, v14, v16

    .line 555
    .local v4, "c":D
    const-wide v14, 0x3eb302509dbc0de3L    # 1.133027231981696E-6

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 556
    const-wide v14, -0x414b052be03cb045L    # -1.2504934821426706E-6

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 557
    const-wide v14, -0x410ae31750b81542L    # -2.013485478078824E-5

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 558
    const-wide v14, 0x3f20c8a78cd9f9d2L    # 1.280502823881162E-4

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 559
    const-wide v14, -0x40d3c9b0190ea9c3L    # -2.1524167411495098E-4

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 560
    const-wide v14, -0x40ace8eed31c5d58L    # -0.0011651675918590652

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 561
    const-wide v14, 0x3f7d919c527f60b2L    # 0.0072189432466631

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 562
    const-wide v14, -0x407c4b50d7b7c1dfL    # -0.009621971527876973

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 563
    const-wide v14, -0x405a650efc3cbf6eL    # -0.04219773455554433

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 564
    const-wide v14, 0x3fc5512320b43fbeL    # 0.16653861138229148

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 565
    const-wide v14, -0x405a7ea1705d8fb8L    # -0.04200263503409524

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 566
    const-wide v14, -0x401b030bfd9505d2L    # -0.6558780715202539

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 567
    const-wide v14, -0x4024f119f8df6c32L    # -0.42278433509846713

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 568
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    cmpl-double v14, p0, v14

    if-lez v14, :cond_3

    .line 569
    mul-double v14, v12, v4

    div-double v10, v14, p0

    .line 610
    .end local v0    # "a":D
    .end local v2    # "b":D
    .local v10, "ret":D
    :goto_1
    return-wide v10

    .line 541
    .end local v4    # "c":D
    .end local v10    # "ret":D
    .end local v12    # "t":D
    :cond_2
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    sub-double v14, p0, v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    sub-double v12, v14, v16

    goto/16 :goto_0

    .line 571
    .restart local v0    # "a":D
    .restart local v2    # "b":D
    .restart local v4    # "c":D
    .restart local v12    # "t":D
    :cond_3
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v14, v4

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    mul-double v10, p0, v14

    .restart local v10    # "ret":D
    goto :goto_1

    .line 574
    .end local v0    # "a":D
    .end local v2    # "b":D
    .end local v4    # "c":D
    .end local v10    # "ret":D
    :cond_4
    const-wide v6, 0x3cf38fbfc319a348L    # 4.343529937408594E-15

    .line 575
    .local v6, "p":D
    const-wide v14, -0x42be6a698dd6c299L    # -1.2494415722763663E-13

    mul-double v16, v12, v6

    add-double v6, v14, v16

    .line 576
    const-wide v14, 0x3d7bab6905535cf6L    # 1.5728330277104463E-12

    mul-double v16, v12, v6

    add-double v6, v14, v16

    .line 577
    const-wide v14, 0x3dc9c4254475c671L    # 4.686843322948848E-11

    mul-double v16, v12, v6

    add-double v6, v14, v16

    .line 578
    const-wide v14, 0x3e076f13e0a00ee8L    # 6.820161668496171E-10

    mul-double v16, v12, v6

    add-double v6, v14, v16

    .line 579
    const-wide v14, 0x3e3d837c4f99af89L    # 6.8716741130671986E-9

    mul-double v16, v12, v6

    add-double v6, v14, v16

    .line 580
    const-wide v14, 0x3e3a44b7ba22d629L    # 6.116095104481416E-9

    mul-double v16, v12, v6

    add-double v6, v14, v16

    .line 582
    const-wide v8, 0x3f31a50be16f20f5L    # 2.6923694661863613E-4

    .line 583
    .local v8, "q":D
    const-wide v14, 0x3f744d9cf2512520L    # 0.004956830093825887

    mul-double v16, v12, v8

    add-double v8, v14, v16

    .line 584
    const-wide v14, 0x3fabfa0daa0efc58L    # 0.054642130860422966

    mul-double v16, v12, v8

    add-double v8, v14, v16

    .line 585
    const-wide v14, 0x3fd39086686b07d0L    # 0.3056961078365221

    mul-double v16, v12, v8

    add-double v8, v14, v16

    .line 586
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double v16, v12, v8

    add-double v8, v14, v16

    .line 588
    const-wide v14, -0x417466799993dda3L    # -2.056338416977607E-7

    div-double v16, v6, v8

    mul-double v16, v16, v12

    add-double v4, v14, v16

    .line 589
    .restart local v4    # "c":D
    const-wide v14, 0x3eb302509dbc0de3L    # 1.133027231981696E-6

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 590
    const-wide v14, -0x414b052be03cb045L    # -1.2504934821426706E-6

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 591
    const-wide v14, -0x410ae31750b81542L    # -2.013485478078824E-5

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 592
    const-wide v14, 0x3f20c8a78cd9f9d2L    # 1.280502823881162E-4

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 593
    const-wide v14, -0x40d3c9b0190ea9c3L    # -2.1524167411495098E-4

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 594
    const-wide v14, -0x40ace8eed31c5d58L    # -0.0011651675918590652

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 595
    const-wide v14, 0x3f7d919c527f60b2L    # 0.0072189432466631

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 596
    const-wide v14, -0x407c4b50d7b7c1dfL    # -0.009621971527876973

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 597
    const-wide v14, -0x405a650efc3cbf6eL    # -0.04219773455554433

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 598
    const-wide v14, 0x3fc5512320b43fbeL    # 0.16653861138229148

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 599
    const-wide v14, -0x405a7ea1705d8fb8L    # -0.04200263503409524

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 600
    const-wide v14, -0x401b030bfd9505d2L    # -0.6558780715202539

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 601
    const-wide v14, 0x3fe2788cfc6fb619L    # 0.5772156649015329

    mul-double v16, v12, v4

    add-double v4, v14, v16

    .line 603
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    cmpl-double v14, p0, v14

    if-lez v14, :cond_5

    .line 604
    div-double v14, v12, p0

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    sub-double v16, v4, v16

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    sub-double v16, v16, v18

    mul-double v10, v14, v16

    .restart local v10    # "ret":D
    goto/16 :goto_1

    .line 606
    .end local v10    # "ret":D
    :cond_5
    mul-double v10, p0, v4

    .restart local v10    # "ret":D
    goto/16 :goto_1
.end method

.method public static lanczos(D)D
    .locals 8
    .param p0, "x"    # D

    .prologue
    .line 512
    const-wide/16 v2, 0x0

    .line 513
    .local v2, "sum":D
    sget-object v1, Lorg/apache/commons/math3/special/Gamma;->LANCZOS:[D

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 514
    sget-object v1, Lorg/apache/commons/math3/special/Gamma;->LANCZOS:[D

    aget-wide v4, v1, v0

    int-to-double v6, v0

    add-double/2addr v6, p0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 513
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 516
    :cond_0
    sget-object v1, Lorg/apache/commons/math3/special/Gamma;->LANCZOS:[D

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    add-double/2addr v4, v2

    return-wide v4
.end method

.method public static logGamma(D)D
    .locals 14
    .param p0, "x"    # D

    .prologue
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 246
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-nez v10, :cond_0

    const-wide/16 v10, 0x0

    cmpg-double v10, p0, v10

    if-gtz v10, :cond_1

    .line 247
    :cond_0
    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    .line 266
    :goto_0
    return-wide v4

    .line 248
    :cond_1
    cmpg-double v10, p0, v12

    if-gez v10, :cond_2

    .line 249
    invoke-static {p0, p1}, Lorg/apache/commons/math3/special/Gamma;->logGamma1p(D)D

    move-result-wide v10

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v12

    sub-double v4, v10, v12

    goto :goto_0

    .line 250
    :cond_2
    const-wide/high16 v10, 0x4004000000000000L    # 2.5

    cmpg-double v10, p0, v10

    if-gtz v10, :cond_3

    .line 251
    sub-double v10, p0, v12

    sub-double/2addr v10, v12

    invoke-static {v10, v11}, Lorg/apache/commons/math3/special/Gamma;->logGamma1p(D)D

    move-result-wide v4

    goto :goto_0

    .line 252
    :cond_3
    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    cmpg-double v10, p0, v10

    if-gtz v10, :cond_5

    .line 253
    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    sub-double v10, p0, v10

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v10

    double-to-int v1, v10

    .line 254
    .local v1, "n":I
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 255
    .local v2, "prod":D
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-gt v0, v1, :cond_4

    .line 256
    int-to-double v10, v0

    sub-double v10, p0, v10

    mul-double/2addr v2, v10

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 258
    :cond_4
    add-int/lit8 v10, v1, 0x1

    int-to-double v10, v10

    sub-double v10, p0, v10

    invoke-static {v10, v11}, Lorg/apache/commons/math3/special/Gamma;->logGamma1p(D)D

    move-result-wide v10

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v12

    add-double v4, v10, v12

    goto :goto_0

    .line 260
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "prod":D
    :cond_5
    invoke-static {p0, p1}, Lorg/apache/commons/math3/special/Gamma;->lanczos(D)D

    move-result-wide v6

    .line 261
    .local v6, "sum":D
    const-wide v10, 0x4012f80000000000L    # 4.7421875

    add-double/2addr v10, p0

    add-double v8, v10, v12

    .line 262
    .local v8, "tmp":D
    add-double v10, p0, v12

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v10, v8

    sget-wide v12, Lorg/apache/commons/math3/special/Gamma;->HALF_LOG_2_PI:D

    add-double/2addr v10, v12

    div-double v12, v6, p0

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v12

    add-double v4, v10, v12

    .local v4, "ret":D
    goto :goto_0
.end method

.method public static logGamma1p(D)D
    .locals 8
    .param p0, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    .line 627
    cmpg-double v0, p0, v2

    if-gez v0, :cond_0

    .line 628
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 630
    :cond_0
    cmpl-double v0, p0, v4

    if-lez v0, :cond_1

    .line 631
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 634
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/special/Gamma;->invGamma1pm1(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v0

    neg-double v0, v0

    return-wide v0
.end method

.method public static regularizedGammaP(DD)D
    .locals 8
    .param p0, "a"    # D
    .param p2, "x"    # D

    .prologue
    .line 278
    const-wide v4, 0x3d06849b86a12b9bL    # 1.0E-14

    const v6, 0x7fffffff

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/special/Gamma;->regularizedGammaP(DDDI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static regularizedGammaP(DDDI)D
    .locals 14
    .param p0, "a"    # D
    .param p2, "x"    # D
    .param p4, "epsilon"    # D
    .param p6, "maxIterations"    # I

    .prologue
    .line 315
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-nez v10, :cond_0

    const-wide/16 v10, 0x0

    cmpg-double v10, p0, v10

    if-lez v10, :cond_0

    const-wide/16 v10, 0x0

    cmpg-double v10, p2, v10

    if-gez v10, :cond_1

    .line 316
    :cond_0
    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    .line 347
    .local v6, "ret":D
    :goto_0
    return-wide v6

    .line 317
    .end local v6    # "ret":D
    :cond_1
    const-wide/16 v10, 0x0

    cmpl-double v10, p2, v10

    if-nez v10, :cond_2

    .line 318
    const-wide/16 v6, 0x0

    .restart local v6    # "ret":D
    goto :goto_0

    .line 319
    .end local v6    # "ret":D
    :cond_2
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, p0

    cmpl-double v10, p2, v10

    if-ltz v10, :cond_3

    .line 322
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static/range {p0 .. p6}, Lorg/apache/commons/math3/special/Gamma;->regularizedGammaQ(DDDI)D

    move-result-wide v12

    sub-double v6, v10, v12

    .restart local v6    # "ret":D
    goto :goto_0

    .line 325
    .end local v6    # "ret":D
    :cond_3
    const-wide/16 v4, 0x0

    .line 326
    .local v4, "n":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double v2, v10, p0

    .line 327
    .local v2, "an":D
    move-wide v8, v2

    .line 328
    .local v8, "sum":D
    :goto_1
    div-double v10, v2, v8

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    cmpl-double v10, v10, p4

    if-lez v10, :cond_4

    move/from16 v0, p6

    int-to-double v10, v0

    cmpg-double v10, v4, v10

    if-gez v10, :cond_4

    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v10, v8, v10

    if-gez v10, :cond_4

    .line 332
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v10

    .line 333
    add-double v10, p0, v4

    div-double v10, p2, v10

    mul-double/2addr v2, v10

    .line 336
    add-double/2addr v8, v2

    goto :goto_1

    .line 338
    :cond_4
    move/from16 v0, p6

    int-to-double v10, v0

    cmpl-double v10, v4, v10

    if-ltz v10, :cond_5

    .line 339
    new-instance v10, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Ljava/lang/Number;)V

    throw v10

    .line 340
    :cond_5
    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 341
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .restart local v6    # "ret":D
    goto :goto_0

    .line 343
    .end local v6    # "ret":D
    :cond_6
    move-wide/from16 v0, p2

    neg-double v10, v0

    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v12

    mul-double/2addr v12, p0

    add-double/2addr v10, v12

    invoke-static {p0, p1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v12

    sub-double/2addr v10, v12

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v10

    mul-double v6, v10, v8

    .restart local v6    # "ret":D
    goto :goto_0
.end method

.method public static regularizedGammaQ(DD)D
    .locals 8
    .param p0, "a"    # D
    .param p2, "x"    # D

    .prologue
    .line 359
    const-wide v4, 0x3d06849b86a12b9bL    # 1.0E-14

    const v6, 0x7fffffff

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/special/Gamma;->regularizedGammaQ(DDDI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static regularizedGammaQ(DDDI)D
    .locals 12
    .param p0, "a"    # D
    .param p2, "x"    # D
    .param p4, "epsilon"    # D
    .param p6, "maxIterations"    # I

    .prologue
    .line 393
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    cmpg-double v0, p0, v2

    if-lez v0, :cond_0

    const-wide/16 v2, 0x0

    cmpg-double v0, p2, v2

    if-gez v0, :cond_1

    .line 394
    :cond_0
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    .line 420
    .local v8, "ret":D
    :goto_0
    return-wide v8

    .line 395
    .end local v8    # "ret":D
    :cond_1
    const-wide/16 v2, 0x0

    cmpl-double v0, p2, v2

    if-nez v0, :cond_2

    .line 396
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .restart local v8    # "ret":D
    goto :goto_0

    .line 397
    .end local v8    # "ret":D
    :cond_2
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, p0

    cmpg-double v0, p2, v2

    if-gez v0, :cond_3

    .line 400
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static/range {p0 .. p6}, Lorg/apache/commons/math3/special/Gamma;->regularizedGammaP(DDDI)D

    move-result-wide v4

    sub-double v8, v2, v4

    .restart local v8    # "ret":D
    goto :goto_0

    .line 403
    .end local v8    # "ret":D
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/special/Gamma$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/math3/special/Gamma$1;-><init>(D)V

    .line 416
    .local v1, "cf":Lorg/apache/commons/math3/util/ContinuedFraction;
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/util/ContinuedFraction;->evaluate(DDI)D

    move-result-wide v2

    div-double v8, v10, v2

    .line 417
    .restart local v8    # "ret":D
    neg-double v2, p2

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    invoke-static {p0, p1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    mul-double/2addr v8, v2

    goto :goto_0
.end method

.method public static trigamma(D)D
    .locals 12
    .param p0, "x"    # D

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 475
    const-wide/16 v2, 0x0

    cmpl-double v2, p0, v2

    if-lez v2, :cond_0

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v2, p0, v2

    if-gtz v2, :cond_0

    .line 476
    mul-double v2, p0, p0

    div-double v2, v6, v2

    .line 488
    :goto_0
    return-wide v2

    .line 479
    :cond_0
    const-wide v2, 0x4048800000000000L    # 49.0

    cmpl-double v2, p0, v2

    if-ltz v2, :cond_1

    .line 480
    mul-double v2, p0, p0

    div-double v0, v6, v2

    .line 485
    .local v0, "inv":D
    div-double v2, v6, p0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v4, v0, v4

    add-double/2addr v2, v4

    div-double v4, v0, p0

    const-wide v6, 0x3fc5555555555555L    # 0.16666666666666666

    const-wide v8, 0x3fa1111111111111L    # 0.03333333333333333

    const-wide/high16 v10, 0x4045000000000000L    # 42.0

    div-double v10, v0, v10

    add-double/2addr v8, v10

    mul-double/2addr v8, v0

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    goto :goto_0

    .line 488
    .end local v0    # "inv":D
    :cond_1
    add-double v2, p0, v6

    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->trigamma(D)D

    move-result-wide v2

    mul-double v4, p0, p0

    div-double v4, v6, v4

    add-double/2addr v2, v4

    goto :goto_0
.end method
