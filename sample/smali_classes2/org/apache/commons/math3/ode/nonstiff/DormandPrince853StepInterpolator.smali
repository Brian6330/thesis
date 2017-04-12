.class Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "DormandPrince853StepInterpolator.java"


# static fields
.field private static final B_01:D = 0.054293734116568765

.field private static final B_06:D = 4.450312892752409

.field private static final B_07:D = 1.8915178993145003

.field private static final B_08:D = -5.801203960010585

.field private static final B_09:D = 0.3111643669578199

.field private static final B_10:D = -0.1521609496625161

.field private static final B_11:D = 0.20136540080403034

.field private static final B_12:D = 0.04471061572777259

.field private static final C14:D = 0.1

.field private static final C15:D = 0.2

.field private static final C16:D = 0.7777777777777778

.field private static final D:[[D

.field private static final K14_01:D = 0.0018737681664791894

.field private static final K14_06:D = -4.450312892752409

.field private static final K14_07:D = -1.6380176890978755

.field private static final K14_08:D = 5.554964922539782

.field private static final K14_09:D = -0.4353557902216363

.field private static final K14_10:D = 0.30545274794128174

.field private static final K14_11:D = -0.19316434850839564

.field private static final K14_12:D = -0.03714271806722689

.field private static final K14_13:D = -0.008298

.field private static final K15_01:D = -0.022459085953066622

.field private static final K15_06:D = -4.422011983080043

.field private static final K15_07:D = -1.8379759110070617

.field private static final K15_08:D = 5.746280211439194

.field private static final K15_09:D = -0.3111643669578199

.field private static final K15_10:D = 0.1521609496625161

.field private static final K15_11:D = -0.2014737481327276

.field private static final K15_12:D = -0.04432804463693693

.field private static final K15_13:D = -3.4046500868740456E-4

.field private static final K15_14:D = 0.1413124436746325

.field private static final K16_01:D = -0.4831900357003607

.field private static final K16_06:D = -9.147934308113573

.field private static final K16_07:D = 5.791903296748099

.field private static final K16_08:D = 9.870193778407696

.field private static final K16_09:D = 0.04556282049746119

.field private static final K16_10:D = 0.1521609496625161

.field private static final K16_11:D = -0.20136540080403034

.field private static final K16_12:D = -0.04471061572777259

.field private static final K16_13:D = -0.0013990241651590145

.field private static final K16_14:D = 2.9475147891527724

.field private static final K16_15:D = -9.15095847217987

.field private static final serialVersionUID:J = 0x132df10L


# instance fields
.field private v:[[D

.field private vectorsInitialized:Z

.field private yDotKLast:[[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 180
    const/4 v0, 0x4

    new-array v0, v0, [[D

    const/4 v1, 0x0

    new-array v2, v3, [D

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [D

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [D

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [D

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->D:[[D

    return-void

    :array_0
    .array-data 8
        -0x3fdf246233c837e5L    # -8.428938276109013
        0x3fe2228765f0a2ebL    # 0.5667149535193777
        -0x3ff772ca5ee8ac8aL    # -3.0689499459498917
        0x400313cca2e462ecL    # 2.38466765651207
        0x4000efafd3c0d1beL    # 2.1170345824450285
        -0x40141d8f65b53f2dL    # -0.871391583777973
        0x4001ec6a759da28bL    # 2.2404374302607883
        0x3fe435e4b2f53319L    # 0.6315787787694688
        -0x404937ede7480f84L    # -0.08899033645133331
        0x40322604753358b4L    # 18.148505520854727
        -0x3fdd9c59249f205fL    # -9.194632392478356
        -0x3fee417fad5da7e3L    # -4.436036387594894
    .end array-data

    :array_1
    .array-data 8
        0x4024dae269ad44fcL    # 10.427508642579134
        0x406e49125d57ed67L    # 242.28349177525817
        0x4064a66a19b8434bL    # 165.20045171727028
        -0x3f8897407e1eb1cbL    # -374.5467547226902
        -0x3fc9e2e6baa73006L    # -22.113666853125302
        0x401eef08f933a023L    # 7.733432668472264
        -0x3fc1536f2edd3cf3L    # -30.674084731089398
        -0x3fdd55f2fcd5f533L    # -9.332130526430229
        0x402f64fc65250f7cL    # 15.697238121770845
        -0x3fc0dc50121302adL    # -31.139403219565178
        -0x3fdd4b4d7f999a36L    # -9.35292435884448
        0x4041e88e43070a10L    # 35.81684148639408
    .end array-data

    :array_2
    .array-data 8
        0x4033fc2c7303381fL    # 19.985053242002433
        -0x3f87cf672ef0dadfL    # -387.0373087493518
        -0x3f985a4cb120b2c7L    # -189.17813819516758
        0x40807e771c2c6a0cL    # 527.8081592054236
        -0x3fd8da29723f9069L    # -11.573902539959631
        0x401b8661dd0f8bd7L    # 6.8812326946963
        -0x400ffd8582980398L    # -1.0006050966910838
        0x3fe8e308023d3331L    # 0.7777137798053443
        -0x3ff9c63c1000a92eL    # -2.778205752353508
        -0x3fb1e6d2b0cf3881L    # -60.19669523126412
        0x40551481861928c0L    # 84.32040550667716
        0x4027fc0d95740812L    # 11.99229113618279
    .end array-data

    :array_3
    .array-data 8
        -0x3fc64e5a6068165dL    # -25.69393346270375
        -0x3f9cb9ed94279f39L    # -154.18974869023643
        -0x3f930f0f5366f670L    # -231.5293791760455
        0x40765a39d3b3c602L    # 357.6391179106141
        0x405759f0d4d83c6fL    # 93.4053241836243
        -0x3fbd4555aadef855L    # -37.45832313645163
        0x405a0660a855838eL    # 104.0996495089623
        0x403dd71d78528cf6L    # 29.8402934266605
        -0x3fba3bb7b1c80882L    # -43.53345659001114
        0x405814c57df82010L    # 96.32455395918828
        -0x3fbc694f7d4a32e2L    # -39.17726167561544
        -0x3f9d48bdc1e34cf3L    # -149.72683625798564
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    move-object v0, v1

    .line 232
    check-cast v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    .line 233
    check-cast v1, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    .line 235
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;)V
    .locals 5
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 244
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    .line 246
    iget-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->currentState:[D

    if-nez v2, :cond_0

    move-object v2, v3

    .line 248
    check-cast v2, [[D

    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    .line 249
    check-cast v3, [[D

    iput-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    .line 250
    iput-boolean v4, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    .line 273
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->currentState:[D

    array-length v0, v2

    .line 256
    .local v0, "dimension":I
    const/4 v2, 0x3

    new-array v2, v2, [[D

    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    .line 257
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 258
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    new-array v3, v0, [D

    aput-object v3, v2, v1

    .line 259
    iget-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v3, v3, v1

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 263
    :cond_1
    const/4 v2, 0x7

    new-array v2, v2, [[D

    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    .line 264
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 265
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    new-array v3, v0, [D

    aput-object v3, v2, v1

    .line 266
    iget-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    aget-object v3, v3, v1

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 269
    :cond_2
    iget-boolean v2, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    iput-boolean v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    goto :goto_0
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 67
    .param p1, "theta"    # D
    .param p3, "oneMinusThetaH"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 319
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    move/from16 v46, v0

    if-nez v46, :cond_3

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v46, v0

    if-nez v46, :cond_0

    .line 322
    const/16 v46, 0x7

    move/from16 v0, v46

    new-array v0, v0, [[D

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    .line 323
    const/16 v17, 0x0

    .local v17, "k":I
    :goto_0
    const/16 v46, 0x7

    move/from16 v0, v17

    move/from16 v1, v46

    if-ge v0, v1, :cond_0

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->interpolatedState:[D

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    array-length v0, v0

    move/from16 v47, v0

    move/from16 v0, v47

    new-array v0, v0, [D

    move-object/from16 v47, v0

    aput-object v47, v46, v17

    .line 323
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 329
    .end local v17    # "k":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->finalizeStep()V

    .line 332
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->interpolatedState:[D

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v0, v16

    move/from16 v1, v46

    if-ge v0, v1, :cond_2

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget-object v46, v46, v47

    aget-wide v22, v46, v16

    .line 334
    .local v22, "yDot1":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x5

    aget-object v46, v46, v47

    aget-wide v38, v46, v16

    .line 335
    .local v38, "yDot6":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x6

    aget-object v46, v46, v47

    aget-wide v40, v46, v16

    .line 336
    .local v40, "yDot7":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x7

    aget-object v46, v46, v47

    aget-wide v42, v46, v16

    .line 337
    .local v42, "yDot8":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x8

    aget-object v46, v46, v47

    aget-wide v44, v46, v16

    .line 338
    .local v44, "yDot9":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x9

    aget-object v46, v46, v47

    aget-wide v24, v46, v16

    .line 339
    .local v24, "yDot10":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    move-object/from16 v46, v0

    const/16 v47, 0xa

    aget-object v46, v46, v47

    aget-wide v26, v46, v16

    .line 340
    .local v26, "yDot11":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    move-object/from16 v46, v0

    const/16 v47, 0xb

    aget-object v46, v46, v47

    aget-wide v28, v46, v16

    .line 341
    .local v28, "yDot12":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    move-object/from16 v46, v0

    const/16 v47, 0xc

    aget-object v46, v46, v47

    aget-wide v30, v46, v16

    .line 342
    .local v30, "yDot13":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget-object v46, v46, v47

    aget-wide v32, v46, v16

    .line 343
    .local v32, "yDot14":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x1

    aget-object v46, v46, v47

    aget-wide v34, v46, v16

    .line 344
    .local v34, "yDot15":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x2

    aget-object v46, v46, v47

    aget-wide v36, v46, v16

    .line 345
    .local v36, "yDot16":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget-object v46, v46, v47

    const-wide v48, 0x3fabcc6368d1177cL    # 0.054293734116568765

    mul-double v48, v48, v22

    const-wide v50, 0x4011cd1ed2ad5ae2L    # 4.450312892752409

    mul-double v50, v50, v38

    add-double v48, v48, v50

    const-wide v50, 0x3ffe43a845d5ab9fL    # 1.8915178993145003

    mul-double v50, v50, v40

    add-double v48, v48, v50

    const-wide v50, -0x3fe8cb91306950bdL    # -5.801203960010585

    mul-double v50, v50, v42

    add-double v48, v48, v50

    const-wide v50, 0x3fd3ea1df2f0eb98L    # 0.3111643669578199

    mul-double v50, v50, v44

    add-double v48, v48, v50

    const-wide v50, -0x403c85fd70bc4ffeL    # -0.1521609496625161

    mul-double v50, v50, v24

    add-double v48, v48, v50

    const-wide v50, 0x3fc9c657697fe72dL    # 0.20136540080403034

    mul-double v50, v50, v26

    add-double v48, v48, v50

    const-wide v50, 0x3fa6e44f50ab6bc2L    # 0.04471061572777259

    mul-double v50, v50, v28

    add-double v48, v48, v50

    aput-wide v48, v46, v16

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x1

    aget-object v46, v46, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aget-object v47, v47, v48

    aget-wide v48, v47, v16

    sub-double v48, v22, v48

    aput-wide v48, v46, v16

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v46, v0

    const/16 v47, 0x2

    aget-object v46, v46, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aget-object v47, v47, v48

    aget-wide v48, v47, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v50, 0x1

    aget-object v47, v47, v50

    aget-wide v50, v47, v16

    sub-double v48, v48, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    move-object/from16 v47, v0

    const/16 v50, 0xc

    aget-object v47, v47, v50

    aget-wide v50, v47, v16

    sub-double v48, v48, v50

    aput-wide v48, v46, v16

    .line 350
    const/16 v17, 0x0

    .restart local v17    # "k":I
    :goto_2
    sget-object v46, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->D:[[D

    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v0, v17

    move/from16 v1, v46

    if-ge v0, v1, :cond_1

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v46, v0

    add-int/lit8 v47, v17, 0x3

    aget-object v46, v46, v47

    sget-object v47, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->D:[[D

    aget-object v47, v47, v17

    const/16 v48, 0x0

    aget-wide v48, v47, v48

    mul-double v48, v48, v22

    sget-object v47, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->D:[[D

    aget-object v47, v47, v17

    const/16 v50, 0x1

    aget-wide v50, v47, v50

    mul-double v50, v50, v38

    add-double v48, v48, v50

    sget-object v47, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->D:[[D

    aget-object v47, v47, v17

    const/16 v50, 0x2

    aget-wide v50, v47, v50

    mul-double v50, v50, v40

    add-double v48, v48, v50

    sget-object v47, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->D:[[D

    aget-object v47, v47, v17

    const/16 v50, 0x3

    aget-wide v50, v47, v50

    mul-double v50, v50, v42

    add-double v48, v48, v50

    sget-object v47, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->D:[[D

    aget-object v47, v47, v17

    const/16 v50, 0x4

    aget-wide v50, v47, v50

    mul-double v50, v50, v44

    add-double v48, v48, v50

    sget-object v47, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->D:[[D

    aget-object v47, v47, v17

    const/16 v50, 0x5

    aget-wide v50, v47, v50

    mul-double v50, v50, v24

    add-double v48, v48, v50

    sget-object v47, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->D:[[D

    aget-object v47, v47, v17

    const/16 v50, 0x6

    aget-wide v50, v47, v50

    mul-double v50, v50, v26

    add-double v48, v48, v50

    sget-object v47, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->D:[[D

    aget-object v47, v47, v17

    const/16 v50, 0x7

    aget-wide v50, v47, v50

    mul-double v50, v50, v28

    add-double v48, v48, v50

    sget-object v47, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->D:[[D

    aget-object v47, v47, v17

    const/16 v50, 0x8

    aget-wide v50, v47, v50

    mul-double v50, v50, v30

    add-double v48, v48, v50

    sget-object v47, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->D:[[D

    aget-object v47, v47, v17

    const/16 v50, 0x9

    aget-wide v50, v47, v50

    mul-double v50, v50, v32

    add-double v48, v48, v50

    sget-object v47, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->D:[[D

    aget-object v47, v47, v17

    const/16 v50, 0xa

    aget-wide v50, v47, v50

    mul-double v50, v50, v34

    add-double v48, v48, v50

    sget-object v47, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->D:[[D

    aget-object v47, v47, v17

    const/16 v50, 0xb

    aget-wide v50, v47, v50

    mul-double v50, v50, v36

    add-double v48, v48, v50

    aput-wide v48, v46, v16

    .line 350
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 332
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 358
    .end local v17    # "k":I
    .end local v22    # "yDot1":D
    .end local v24    # "yDot10":D
    .end local v26    # "yDot11":D
    .end local v28    # "yDot12":D
    .end local v30    # "yDot13":D
    .end local v32    # "yDot14":D
    .end local v34    # "yDot15":D
    .end local v36    # "yDot16":D
    .end local v38    # "yDot6":D
    .end local v40    # "yDot7":D
    .end local v42    # "yDot8":D
    .end local v44    # "yDot9":D
    :cond_2
    const/16 v46, 0x1

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    .line 362
    .end local v16    # "i":I
    :cond_3
    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    sub-double v14, v46, p1

    .line 363
    .local v14, "eta":D
    const-wide/high16 v46, 0x4000000000000000L    # 2.0

    mul-double v20, v46, p1

    .line 364
    .local v20, "twoTheta":D
    mul-double v18, p1, p1

    .line 365
    .local v18, "theta2":D
    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    sub-double v2, v46, v20

    .line 366
    .local v2, "dot1":D
    const-wide/high16 v46, 0x4000000000000000L    # 2.0

    const-wide/high16 v48, 0x4008000000000000L    # 3.0

    mul-double v48, v48, p1

    sub-double v46, v46, v48

    mul-double v4, p1, v46

    .line 367
    .local v4, "dot2":D
    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v48, 0x4008000000000000L    # 3.0

    sub-double v48, v20, v48

    mul-double v48, v48, p1

    add-double v46, v46, v48

    mul-double v6, v20, v46

    .line 368
    .local v6, "dot3":D
    const-wide/high16 v46, 0x4008000000000000L    # 3.0

    const-wide/high16 v48, 0x4014000000000000L    # 5.0

    mul-double v48, v48, p1

    const-wide/high16 v50, 0x4020000000000000L    # 8.0

    sub-double v48, v48, v50

    mul-double v48, v48, p1

    add-double v46, v46, v48

    mul-double v8, v18, v46

    .line 369
    .local v8, "dot4":D
    const-wide/high16 v46, 0x4008000000000000L    # 3.0

    const-wide/high16 v48, -0x3fd8000000000000L    # -12.0

    const-wide/high16 v50, 0x402e000000000000L    # 15.0

    const-wide/high16 v52, 0x4018000000000000L    # 6.0

    mul-double v52, v52, p1

    sub-double v50, v50, v52

    mul-double v50, v50, p1

    add-double v48, v48, v50

    mul-double v48, v48, p1

    add-double v46, v46, v48

    mul-double v10, v18, v46

    .line 370
    .local v10, "dot5":D
    mul-double v46, v18, p1

    const-wide/high16 v48, 0x4010000000000000L    # 4.0

    const-wide/high16 v50, -0x3fd2000000000000L    # -15.0

    const-wide/high16 v52, 0x4032000000000000L    # 18.0

    const-wide/high16 v54, 0x401c000000000000L    # 7.0

    mul-double v54, v54, p1

    sub-double v52, v52, v54

    mul-double v52, v52, p1

    add-double v50, v50, v52

    mul-double v50, v50, p1

    add-double v48, v48, v50

    mul-double v12, v46, v48

    .line 372
    .local v12, "dot6":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->previousState:[D

    move-object/from16 v46, v0

    if-eqz v46, :cond_4

    const-wide/high16 v46, 0x3fe0000000000000L    # 0.5

    cmpg-double v46, p1, v46

    if-gtz v46, :cond_4

    .line 373
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->interpolatedState:[D

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v0, v16

    move/from16 v1, v46

    if-ge v0, v1, :cond_5

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->interpolatedState:[D

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->previousState:[D

    move-object/from16 v47, v0

    aget-wide v48, v47, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->h:D

    move-wide/from16 v50, v0

    mul-double v50, v50, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v52, 0x0

    aget-object v47, v47, v52

    aget-wide v52, v47, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v54, 0x1

    aget-object v47, v47, v54

    aget-wide v54, v47, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v56, 0x2

    aget-object v47, v47, v56

    aget-wide v56, v47, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v58, 0x3

    aget-object v47, v47, v58

    aget-wide v58, v47, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v60, 0x4

    aget-object v47, v47, v60

    aget-wide v60, v47, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v62, 0x5

    aget-object v47, v47, v62

    aget-wide v62, v47, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v64, 0x6

    aget-object v47, v47, v64

    aget-wide v64, v47, v16

    mul-double v64, v64, p1

    add-double v62, v62, v64

    mul-double v62, v62, v14

    add-double v60, v60, v62

    mul-double v60, v60, p1

    add-double v58, v58, v60

    mul-double v58, v58, v14

    add-double v56, v56, v58

    mul-double v56, v56, p1

    add-double v54, v54, v56

    mul-double v54, v54, v14

    add-double v52, v52, v54

    mul-double v50, v50, v52

    add-double v48, v48, v50

    aput-wide v48, v46, v16

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->interpolatedDerivatives:[D

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aget-object v47, v47, v48

    aget-wide v48, v47, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v50, 0x1

    aget-object v47, v47, v50

    aget-wide v50, v47, v16

    mul-double v50, v50, v2

    add-double v48, v48, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v50, 0x2

    aget-object v47, v47, v50

    aget-wide v50, v47, v16

    mul-double v50, v50, v4

    add-double v48, v48, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v50, 0x3

    aget-object v47, v47, v50

    aget-wide v50, v47, v16

    mul-double v50, v50, v6

    add-double v48, v48, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v50, 0x4

    aget-object v47, v47, v50

    aget-wide v50, v47, v16

    mul-double v50, v50, v8

    add-double v48, v48, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v50, 0x5

    aget-object v47, v47, v50

    aget-wide v50, v47, v16

    mul-double v50, v50, v10

    add-double v48, v48, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v50, 0x6

    aget-object v47, v47, v50

    aget-wide v50, v47, v16

    mul-double v50, v50, v12

    add-double v48, v48, v50

    aput-wide v48, v46, v16

    .line 373
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 387
    .end local v16    # "i":I
    :cond_4
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->interpolatedState:[D

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v0, v16

    move/from16 v1, v46

    if-ge v0, v1, :cond_5

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->interpolatedState:[D

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->currentState:[D

    move-object/from16 v47, v0

    aget-wide v48, v47, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v50, 0x0

    aget-object v47, v47, v50

    aget-wide v50, v47, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v52, 0x1

    aget-object v47, v47, v52

    aget-wide v52, v47, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v54, 0x2

    aget-object v47, v47, v54

    aget-wide v54, v47, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v56, 0x3

    aget-object v47, v47, v56

    aget-wide v56, v47, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v58, 0x4

    aget-object v47, v47, v58

    aget-wide v58, v47, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v60, 0x5

    aget-object v47, v47, v60

    aget-wide v60, v47, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v62, 0x6

    aget-object v47, v47, v62

    aget-wide v62, v47, v16

    mul-double v62, v62, p1

    add-double v60, v60, v62

    mul-double v60, v60, v14

    add-double v58, v58, v60

    mul-double v58, v58, p1

    add-double v56, v56, v58

    mul-double v56, v56, v14

    add-double v54, v54, v56

    mul-double v54, v54, p1

    add-double v52, v52, v54

    mul-double v52, v52, p1

    sub-double v50, v50, v52

    mul-double v50, v50, p3

    sub-double v48, v48, v50

    aput-wide v48, v46, v16

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->interpolatedDerivatives:[D

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aget-object v47, v47, v48

    aget-wide v48, v47, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v50, 0x1

    aget-object v47, v47, v50

    aget-wide v50, v47, v16

    mul-double v50, v50, v2

    add-double v48, v48, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v50, 0x2

    aget-object v47, v47, v50

    aget-wide v50, v47, v16

    mul-double v50, v50, v4

    add-double v48, v48, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v50, 0x3

    aget-object v47, v47, v50

    aget-wide v50, v47, v16

    mul-double v50, v50, v6

    add-double v48, v48, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v50, 0x4

    aget-object v47, v47, v50

    aget-wide v50, v47, v16

    mul-double v50, v50, v8

    add-double v48, v48, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v50, 0x5

    aget-object v47, v47, v50

    aget-wide v50, v47, v16

    mul-double v50, v50, v10

    add-double v48, v48, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move-object/from16 v47, v0

    const/16 v50, 0x6

    aget-object v47, v47, v50

    aget-wide v50, v47, v16

    mul-double v50, v50, v12

    add-double v48, v48, v50

    aput-wide v48, v46, v16

    .line 387
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 402
    :cond_5
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .prologue
    .line 278
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;)V

    return-object v0
.end method

.method protected doFinalize()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .prologue
    .line 408
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->currentState:[D

    if-nez v6, :cond_0

    .line 446
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->currentState:[D

    array-length v6, v6

    new-array v1, v6, [D

    .line 415
    .local v1, "yTmp":[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->getGlobalPreviousTime()D

    move-result-wide v2

    .line 418
    .local v2, "pT":D
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->currentState:[D

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 419
    const-wide v6, 0x3f5eb3273fb33980L    # 0.0018737681664791894

    iget-object v8, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/4 v9, 0x0

    aget-object v8, v8, v9

    aget-wide v8, v8, v0

    mul-double/2addr v6, v8

    const-wide v8, -0x3fee32e12d52a51eL    # -4.450312892752409

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/4 v11, 0x5

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, -0x4005caadf6b0e1cfL    # -1.6380176890978755

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/4 v11, 0x6

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, 0x40163848b982f131L    # 5.554964922539782

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/4 v11, 0x7

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, -0x4024232177b7ececL    # -0.4353557902216363

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/16 v11, 0x8

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, 0x3fd38c89aeb8648aL    # 0.30545274794128174

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/16 v11, 0x9

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, -0x4037466400339f26L    # -0.19316434850839564

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/16 v11, 0xa

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, -0x405cfba1313bc1b3L    # -0.03714271806722689

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/16 v11, 0xb

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, -0x407f01754b05b7d0L    # -0.008298

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/16 v11, 0xc

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double v4, v6, v8

    .line 422
    .local v4, "s":D
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->currentState:[D

    aget-wide v6, v6, v0

    iget-wide v8, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->h:D

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    aput-wide v6, v1, v0

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 424
    .end local v4    # "s":D
    :cond_1
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    const-wide v8, 0x3fb999999999999aL    # 0.1

    iget-wide v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->h:D

    mul-double/2addr v8, v10

    add-double/2addr v8, v2

    iget-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    const/4 v10, 0x0

    aget-object v7, v7, v10

    invoke-virtual {v6, v8, v9, v1, v7}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    .line 427
    const/4 v0, 0x0

    :goto_2
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->currentState:[D

    array-length v6, v6

    if-ge v0, v6, :cond_2

    .line 428
    const-wide v6, -0x4069007c415587ceL    # -0.022459085953066622

    iget-object v8, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/4 v9, 0x0

    aget-object v8, v8, v9

    aget-wide v8, v8, v0

    mul-double/2addr v6, v8

    const-wide v8, -0x3fee4fdc17389abdL    # -4.422011983080043

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/4 v11, 0x5

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, -0x400297a6923638c9L    # -1.8379759110070617

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/4 v11, 0x6

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, 0x4016fc30e137221aL    # 5.746280211439194

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/4 v11, 0x7

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, -0x402c15e20d0f1468L    # -0.3111643669578199

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/16 v11, 0x8

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, 0x3fc37a028f43b002L    # 0.1521609496625161

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/16 v11, 0x9

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, -0x4036361bb46239f7L    # -0.2014737481327276

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/16 v11, 0xa

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, -0x40594dd5a3fa3a84L    # -0.04432804463693693

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/16 v11, 0xb

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, -0x40c9aff1ec18eb65L    # -3.4046500868740456E-4

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/16 v11, 0xc

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, 0x3fc21686b20cd989L    # 0.1413124436746325

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    const/4 v11, 0x0

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double v4, v6, v8

    .line 432
    .restart local v4    # "s":D
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->currentState:[D

    aget-wide v6, v6, v0

    iget-wide v8, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->h:D

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    aput-wide v6, v1, v0

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 434
    .end local v4    # "s":D
    :cond_2
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    const-wide v8, 0x3fc999999999999aL    # 0.2

    iget-wide v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->h:D

    mul-double/2addr v8, v10

    add-double/2addr v8, v2

    iget-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    const/4 v10, 0x1

    aget-object v7, v7, v10

    invoke-virtual {v6, v8, v9, v1, v7}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    .line 437
    const/4 v0, 0x0

    :goto_3
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->currentState:[D

    array-length v6, v6

    if-ge v0, v6, :cond_3

    .line 438
    const-wide v6, -0x4021136a19ba7cfcL    # -0.4831900357003607

    iget-object v8, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/4 v9, 0x0

    aget-object v8, v8, v9

    aget-wide v8, v8, v0

    mul-double/2addr v6, v8

    const-wide v8, -0x3fddb441f4516442L    # -9.147934308113573

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/4 v11, 0x5

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, 0x40172ae8b2a482bbL    # 5.791903296748099

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/4 v11, 0x6

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, 0x4023bd8a09f6e330L    # 9.870193778407696

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/4 v11, 0x7

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, 0x3fa754028fe67560L    # 0.04556282049746119

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/16 v11, 0x8

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, 0x3fc37a028f43b002L    # 0.1521609496625161

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/16 v11, 0x9

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, -0x403639a8968018d3L    # -0.20136540080403034

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/16 v11, 0xa

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, -0x40591bb0af54943eL    # -0.04471061572777259

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/16 v11, 0xb

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, -0x40a914113db78e2cL    # -0.0013990241651590145

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotK:[[D

    const/16 v11, 0xc

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, 0x40079482a23f1996L    # 2.9475147891527724

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    const/4 v11, 0x0

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, -0x3fddb2b59235dddeL    # -9.15095847217987

    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    const/4 v11, 0x1

    aget-object v10, v10, v11

    aget-wide v10, v10, v0

    mul-double/2addr v8, v10

    add-double v4, v6, v8

    .line 442
    .restart local v4    # "s":D
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->currentState:[D

    aget-wide v6, v6, v0

    iget-wide v8, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->h:D

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    aput-wide v6, v1, v0

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 444
    .end local v4    # "s":D
    :cond_3
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    const-wide v8, 0x3fe8e38e38e38e39L    # 0.7777777777777778

    iget-wide v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->h:D

    mul-double/2addr v8, v10

    add-double/2addr v8, v2

    iget-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    const/4 v10, 0x2

    aget-object v7, v7, v10

    invoke-virtual {v6, v8, v9, v1, v7}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    goto/16 :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 9
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 481
    const/4 v2, 0x3

    new-array v2, v2, [[D

    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    .line 482
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 483
    .local v0, "dimension":I
    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    if-gez v0, :cond_0

    move-object v2, v3

    :goto_0
    aput-object v2, v4, v6

    .line 484
    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    if-gez v0, :cond_1

    move-object v2, v3

    :goto_1
    aput-object v2, v4, v7

    .line 485
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    if-gez v0, :cond_2

    :goto_2
    aput-object v3, v2, v8

    .line 487
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_3

    .line 488
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v2, v2, v6

    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 489
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v2, v2, v7

    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 490
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v2, v2, v8

    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 483
    .end local v1    # "i":I
    :cond_0
    new-array v2, v0, [D

    goto :goto_0

    .line 484
    :cond_1
    new-array v2, v0, [D

    goto :goto_1

    .line 485
    :cond_2
    new-array v3, v0, [D

    goto :goto_2

    .line 494
    .restart local v1    # "i":I
    :cond_3
    invoke-super {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->readExternal(Ljava/io/ObjectInput;)V

    .line 496
    return-void
.end method

.method public reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V
    .locals 4
    .param p1, "integrator"    # Lorg/apache/commons/math3/ode/AbstractIntegrator;
    .param p2, "y"    # [D
    .param p3, "yDotK"    # [[D
    .param p4, "forward"    # Z
    .param p5, "primaryMapper"    # Lorg/apache/commons/math3/ode/EquationsMapper;
    .param p6, "secondaryMappers"    # [Lorg/apache/commons/math3/ode/EquationsMapper;

    .prologue
    .line 288
    invoke-super/range {p0 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 290
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->currentState:[D

    array-length v0, v2

    .line 292
    .local v0, "dimension":I
    const/4 v2, 0x3

    new-array v2, v2, [[D

    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    .line 293
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 294
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    new-array v3, v0, [D

    aput-object v3, v2, v1

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :cond_0
    const/4 v2, 0x7

    new-array v2, v2, [[D

    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    .line 298
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 299
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    new-array v3, v0, [D

    aput-object v3, v2, v1

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 302
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    .line 304
    return-void
.end method

.method public storeTime(D)V
    .locals 1
    .param p1, "t"    # D

    .prologue
    .line 309
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    .line 311
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 6
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->finalizeStep()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->currentState:[D

    if-nez v4, :cond_0

    const/4 v0, -0x1

    .line 463
    .local v0, "dimension":I
    :goto_0
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 464
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 465
    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aget-wide v4, v4, v1

    invoke-interface {p1, v4, v5}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 466
    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aget-wide v4, v4, v1

    invoke-interface {p1, v4, v5}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 467
    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aget-wide v4, v4, v1

    invoke-interface {p1, v4, v5}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 456
    .end local v0    # "dimension":I
    .end local v1    # "i":I
    :catch_0
    move-exception v3

    .line 457
    .local v3, "mcee":Lorg/apache/commons/math3/exception/MaxCountExceededException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v3}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 458
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v2, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 459
    throw v2

    .line 462
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "mcee":Lorg/apache/commons/math3/exception/MaxCountExceededException;
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->currentState:[D

    array-length v0, v4

    goto :goto_0

    .line 471
    .restart local v0    # "dimension":I
    .restart local v1    # "i":I
    :cond_1
    invoke-super {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 473
    return-void
.end method
