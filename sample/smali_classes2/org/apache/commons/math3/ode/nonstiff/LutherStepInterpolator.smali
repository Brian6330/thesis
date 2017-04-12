.class Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "LutherStepInterpolator.java"


# static fields
.field private static final Q:D

.field private static final serialVersionUID:J = 0x1335180L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-wide/high16 v0, 0x4035000000000000L    # 21.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 61
    .param p1, "theta"    # D
    .param p3, "oneMinusThetaH"    # D

    .prologue
    .line 121
    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    const-wide v48, -0x3fda666666666666L    # -10.8

    const-wide/high16 v50, 0x4042000000000000L    # 36.0

    const-wide v52, -0x3fb8800000000000L    # -47.0

    const-wide/high16 v54, 0x4035000000000000L    # 21.0

    mul-double v54, v54, p1

    add-double v52, v52, v54

    mul-double v52, v52, p1

    add-double v50, v50, v52

    mul-double v50, v50, p1

    add-double v48, v48, v50

    mul-double v48, v48, p1

    add-double v16, v46, v48

    .line 122
    .local v16, "coeffDot1":D
    const-wide/16 v18, 0x0

    .line 123
    .local v18, "coeffDot2":D
    const-wide v46, -0x3fd4444444444444L    # -13.866666666666667

    const-wide v48, 0x405aaaaaaaaaaaabL    # 106.66666666666667

    const-wide v50, -0x3f96aaaaaaaaaaabL    # -202.66666666666666

    const-wide/high16 v52, 0x405c000000000000L    # 112.0

    mul-double v52, v52, p1

    add-double v50, v50, v52

    mul-double v50, v50, p1

    add-double v48, v48, v50

    mul-double v48, v48, p1

    add-double v46, v46, v48

    mul-double v20, p1, v46

    .line 124
    .local v20, "coeffDot3":D
    const-wide v46, 0x4029eb851eb851ecL    # 12.96

    const-wide v48, -0x3fa7b33333333333L    # -97.2

    const-wide v50, 0x40684ccccccccccdL    # 194.4

    const-wide v52, -0x3f7e480000000000L    # -567.0

    mul-double v52, v52, p1

    const-wide/high16 v54, 0x4014000000000000L    # 5.0

    div-double v52, v52, v54

    add-double v50, v50, v52

    mul-double v50, v50, p1

    add-double v48, v48, v50

    mul-double v48, v48, p1

    add-double v46, v46, v48

    mul-double v22, p1, v46

    .line 125
    .local v22, "coeffDot4":D
    const-wide v46, 0x408a080000000000L    # 833.0

    const-wide v48, 0x4075700000000000L    # 343.0

    sget-wide v50, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v48, v48, v50

    add-double v46, v46, v48

    const-wide v48, 0x4062c00000000000L    # 150.0

    div-double v46, v46, v48

    const-wide v48, -0x3f7c180000000000L    # -637.0

    const-wide v50, 0x4076500000000000L    # 357.0

    sget-wide v52, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v50, v50, v52

    sub-double v48, v48, v50

    const-wide/high16 v50, 0x403e000000000000L    # 30.0

    div-double v48, v48, v50

    const-wide v50, 0x4078800000000000L    # 392.0

    const-wide v52, 0x4071f00000000000L    # 287.0

    sget-wide v54, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v52, v52, v54

    add-double v50, v50, v52

    const-wide/high16 v52, 0x402e000000000000L    # 15.0

    div-double v50, v50, v52

    const-wide v52, -0x3fb7800000000000L    # -49.0

    const-wide v54, 0x4048800000000000L    # 49.0

    sget-wide v56, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v54, v54, v56

    sub-double v52, v52, v54

    mul-double v52, v52, p1

    const-wide/high16 v54, 0x4014000000000000L    # 5.0

    div-double v52, v52, v54

    add-double v50, v50, v52

    mul-double v50, v50, p1

    add-double v48, v48, v50

    mul-double v48, v48, p1

    add-double v46, v46, v48

    mul-double v24, p1, v46

    .line 126
    .local v24, "coeffDot5":D
    const-wide v46, 0x408a080000000000L    # 833.0

    const-wide v48, 0x4075700000000000L    # 343.0

    sget-wide v50, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v48, v48, v50

    sub-double v46, v46, v48

    const-wide v48, 0x4062c00000000000L    # 150.0

    div-double v46, v46, v48

    const-wide v48, -0x3f7c180000000000L    # -637.0

    const-wide v50, 0x4076500000000000L    # 357.0

    sget-wide v52, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v50, v50, v52

    add-double v48, v48, v50

    const-wide/high16 v50, 0x403e000000000000L    # 30.0

    div-double v48, v48, v50

    const-wide v50, 0x4078800000000000L    # 392.0

    const-wide v52, 0x4071f00000000000L    # 287.0

    sget-wide v54, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v52, v52, v54

    sub-double v50, v50, v52

    const-wide/high16 v52, 0x402e000000000000L    # 15.0

    div-double v50, v50, v52

    const-wide v52, -0x3fb7800000000000L    # -49.0

    const-wide v54, 0x4048800000000000L    # 49.0

    sget-wide v56, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v54, v54, v56

    add-double v52, v52, v54

    mul-double v52, v52, p1

    const-wide/high16 v54, 0x4014000000000000L    # 5.0

    div-double v52, v52, v54

    add-double v50, v50, v52

    mul-double v50, v50, p1

    add-double v48, v48, v50

    mul-double v48, v48, p1

    add-double v46, v46, v48

    mul-double v26, p1, v46

    .line 127
    .local v26, "coeffDot6":D
    const-wide v46, 0x3fe3333333333333L    # 0.6

    const-wide/high16 v48, -0x3ff8000000000000L    # -3.0

    const-wide/high16 v50, 0x4008000000000000L    # 3.0

    mul-double v50, v50, p1

    add-double v48, v48, v50

    mul-double v48, v48, p1

    add-double v46, v46, v48

    mul-double v28, p1, v46

    .line 129
    .local v28, "coeffDot7":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->previousState:[D

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    const-wide/high16 v46, 0x3fe0000000000000L    # 0.5

    cmpg-double v31, p1, v46

    if-gtz v31, :cond_0

    .line 131
    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    const-wide v48, -0x3fea666666666666L    # -5.4

    const-wide/high16 v50, 0x4028000000000000L    # 12.0

    const-wide v52, -0x3fd8800000000000L    # -11.75

    const-wide/high16 v54, 0x4035000000000000L    # 21.0

    mul-double v54, v54, p1

    const-wide/high16 v56, 0x4014000000000000L    # 5.0

    div-double v54, v54, v56

    add-double v52, v52, v54

    mul-double v52, v52, p1

    add-double v50, v50, v52

    mul-double v50, v50, p1

    add-double v48, v48, v50

    mul-double v48, v48, p1

    add-double v2, v46, v48

    .line 132
    .local v2, "coeff1":D
    const-wide/16 v4, 0x0

    .line 133
    .local v4, "coeff2":D
    const-wide v46, -0x3fe4444444444444L    # -6.933333333333334

    const-wide v48, 0x4041c71c71c71c72L    # 35.55555555555556

    const-wide v50, -0x3fb6aaaaaaaaaaabL    # -50.666666666666664

    const-wide/high16 v52, 0x405c000000000000L    # 112.0

    mul-double v52, v52, p1

    const-wide/high16 v54, 0x4014000000000000L    # 5.0

    div-double v52, v52, v54

    add-double v50, v50, v52

    mul-double v50, v50, p1

    add-double v48, v48, v50

    mul-double v48, v48, p1

    add-double v46, v46, v48

    mul-double v6, p1, v46

    .line 134
    .local v6, "coeff3":D
    const-wide v46, 0x4019eb851eb851ecL    # 6.48

    const-wide v48, -0x3fbfcccccccccccdL    # -32.4

    const-wide v50, 0x40484ccccccccccdL    # 48.6

    const-wide v52, -0x3f7e480000000000L    # -567.0

    mul-double v52, v52, p1

    const-wide/high16 v54, 0x4039000000000000L    # 25.0

    div-double v52, v52, v54

    add-double v50, v50, v52

    mul-double v50, v50, p1

    add-double v48, v48, v50

    mul-double v48, v48, p1

    add-double v46, v46, v48

    mul-double v8, p1, v46

    .line 135
    .local v8, "coeff4":D
    const-wide v46, 0x408a080000000000L    # 833.0

    const-wide v48, 0x4075700000000000L    # 343.0

    sget-wide v50, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v48, v48, v50

    add-double v46, v46, v48

    const-wide v48, 0x4072c00000000000L    # 300.0

    div-double v46, v46, v48

    const-wide v48, -0x3f7c180000000000L    # -637.0

    const-wide v50, 0x4076500000000000L    # 357.0

    sget-wide v52, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v50, v50, v52

    sub-double v48, v48, v50

    const-wide v50, 0x4056800000000000L    # 90.0

    div-double v48, v48, v50

    const-wide v50, 0x4078800000000000L    # 392.0

    const-wide v52, 0x4071f00000000000L    # 287.0

    sget-wide v54, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v52, v52, v54

    add-double v50, v50, v52

    const-wide/high16 v52, 0x404e000000000000L    # 60.0

    div-double v50, v50, v52

    const-wide v52, -0x3fb7800000000000L    # -49.0

    const-wide v54, 0x4048800000000000L    # 49.0

    sget-wide v56, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v54, v54, v56

    sub-double v52, v52, v54

    mul-double v52, v52, p1

    const-wide/high16 v54, 0x4039000000000000L    # 25.0

    div-double v52, v52, v54

    add-double v50, v50, v52

    mul-double v50, v50, p1

    add-double v48, v48, v50

    mul-double v48, v48, p1

    add-double v46, v46, v48

    mul-double v10, p1, v46

    .line 136
    .local v10, "coeff5":D
    const-wide v46, 0x408a080000000000L    # 833.0

    const-wide v48, 0x4075700000000000L    # 343.0

    sget-wide v50, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v48, v48, v50

    sub-double v46, v46, v48

    const-wide v48, 0x4072c00000000000L    # 300.0

    div-double v46, v46, v48

    const-wide v48, -0x3f7c180000000000L    # -637.0

    const-wide v50, 0x4076500000000000L    # 357.0

    sget-wide v52, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v50, v50, v52

    add-double v48, v48, v50

    const-wide v50, 0x4056800000000000L    # 90.0

    div-double v48, v48, v50

    const-wide v50, 0x4078800000000000L    # 392.0

    const-wide v52, 0x4071f00000000000L    # 287.0

    sget-wide v54, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v52, v52, v54

    sub-double v50, v50, v52

    const-wide/high16 v52, 0x404e000000000000L    # 60.0

    div-double v50, v50, v52

    const-wide v52, -0x3fb7800000000000L    # -49.0

    const-wide v54, 0x4048800000000000L    # 49.0

    sget-wide v56, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v54, v54, v56

    add-double v52, v52, v54

    mul-double v52, v52, p1

    const-wide/high16 v54, 0x4039000000000000L    # 25.0

    div-double v52, v52, v54

    add-double v50, v50, v52

    mul-double v50, v50, p1

    add-double v48, v48, v50

    mul-double v48, v48, p1

    add-double v46, v46, v48

    mul-double v12, p1, v46

    .line 137
    .local v12, "coeff6":D
    const-wide v46, 0x3fd3333333333333L    # 0.3

    const-wide/high16 v48, -0x4010000000000000L    # -1.0

    const-wide/high16 v50, 0x3fe8000000000000L    # 0.75

    mul-double v50, v50, p1

    add-double v48, v48, v50

    mul-double v48, v48, p1

    add-double v46, v46, v48

    mul-double v14, p1, v46

    .line 138
    .local v14, "coeff7":D
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->interpolatedState:[D

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    move-object/from16 v31, v0

    const/16 v46, 0x0

    aget-object v31, v31, v46

    aget-wide v32, v31, v30

    .line 140
    .local v32, "yDot1":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    move-object/from16 v31, v0

    const/16 v46, 0x1

    aget-object v31, v31, v46

    aget-wide v34, v31, v30

    .line 141
    .local v34, "yDot2":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    move-object/from16 v31, v0

    const/16 v46, 0x2

    aget-object v31, v31, v46

    aget-wide v36, v31, v30

    .line 142
    .local v36, "yDot3":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    move-object/from16 v31, v0

    const/16 v46, 0x3

    aget-object v31, v31, v46

    aget-wide v38, v31, v30

    .line 143
    .local v38, "yDot4":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    move-object/from16 v31, v0

    const/16 v46, 0x4

    aget-object v31, v31, v46

    aget-wide v40, v31, v30

    .line 144
    .local v40, "yDot5":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    move-object/from16 v31, v0

    const/16 v46, 0x5

    aget-object v31, v31, v46

    aget-wide v42, v31, v30

    .line 145
    .local v42, "yDot6":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    move-object/from16 v31, v0

    const/16 v46, 0x6

    aget-object v31, v31, v46

    aget-wide v44, v31, v30

    .line 146
    .local v44, "yDot7":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->interpolatedState:[D

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->previousState:[D

    move-object/from16 v46, v0

    aget-wide v46, v46, v30

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->h:D

    move-wide/from16 v48, v0

    mul-double v48, v48, p1

    mul-double v50, v2, v32

    const-wide/16 v52, 0x0

    mul-double v52, v52, v34

    add-double v50, v50, v52

    mul-double v52, v6, v36

    add-double v50, v50, v52

    mul-double v52, v8, v38

    add-double v50, v50, v52

    mul-double v52, v10, v40

    add-double v50, v50, v52

    mul-double v52, v12, v42

    add-double v50, v50, v52

    mul-double v52, v14, v44

    add-double v50, v50, v52

    mul-double v48, v48, v50

    add-double v46, v46, v48

    aput-wide v46, v31, v30

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->interpolatedDerivatives:[D

    move-object/from16 v31, v0

    mul-double v46, v16, v32

    const-wide/16 v48, 0x0

    mul-double v48, v48, v34

    add-double v46, v46, v48

    mul-double v48, v20, v36

    add-double v46, v46, v48

    mul-double v48, v22, v38

    add-double v46, v46, v48

    mul-double v48, v24, v40

    add-double v46, v46, v48

    mul-double v48, v26, v42

    add-double v46, v46, v48

    mul-double v48, v28, v44

    add-double v46, v46, v48

    aput-wide v46, v31, v30

    .line 138
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_0

    .line 154
    .end local v2    # "coeff1":D
    .end local v4    # "coeff2":D
    .end local v6    # "coeff3":D
    .end local v8    # "coeff4":D
    .end local v10    # "coeff5":D
    .end local v12    # "coeff6":D
    .end local v14    # "coeff7":D
    .end local v30    # "i":I
    .end local v32    # "yDot1":D
    .end local v34    # "yDot2":D
    .end local v36    # "yDot3":D
    .end local v38    # "yDot4":D
    .end local v40    # "yDot5":D
    .end local v42    # "yDot6":D
    .end local v44    # "yDot7":D
    :cond_0
    const-wide v46, -0x4056666666666666L    # -0.05

    const-wide v48, 0x3fee666666666666L    # 0.95

    const-wide v50, -0x3fee333333333333L    # -4.45

    const-wide v52, 0x401e333333333333L    # 7.55

    const-wide/high16 v54, -0x3fcb000000000000L    # -21.0

    mul-double v54, v54, p1

    const-wide/high16 v56, 0x4014000000000000L    # 5.0

    div-double v54, v54, v56

    add-double v52, v52, v54

    mul-double v52, v52, p1

    add-double v50, v50, v52

    mul-double v50, v50, p1

    add-double v48, v48, v50

    mul-double v48, v48, p1

    add-double v2, v46, v48

    .line 155
    .restart local v2    # "coeff1":D
    const-wide/16 v4, 0x0

    .line 156
    .restart local v4    # "coeff2":D
    const-wide v46, -0x40293e93e93e93e9L    # -0.35555555555555557

    const-wide v48, -0x40293e93e93e93e9L    # -0.35555555555555557

    const-wide v50, -0x3fe2d82d82d82d83L    # -7.288888888888889

    const-wide v52, 0x403c444444444444L    # 28.266666666666666

    const-wide/high16 v54, -0x3fa4000000000000L    # -112.0

    mul-double v54, v54, p1

    const-wide/high16 v56, 0x4014000000000000L    # 5.0

    div-double v54, v54, v56

    add-double v52, v52, v54

    mul-double v52, v52, p1

    add-double v50, v50, v52

    mul-double v50, v50, p1

    add-double v48, v48, v50

    mul-double v48, v48, p1

    add-double v6, v46, v48

    .line 157
    .restart local v6    # "coeff3":D
    const-wide v46, 0x4019eb851eb851ecL    # 6.48

    const-wide v48, -0x3fc6147ae147ae14L    # -25.92

    const-wide v50, 0x4081b80000000000L    # 567.0

    mul-double v50, v50, p1

    const-wide/high16 v52, 0x4039000000000000L    # 25.0

    div-double v50, v50, v52

    add-double v48, v48, v50

    mul-double v48, v48, p1

    add-double v46, v46, v48

    mul-double v46, v46, p1

    mul-double v8, p1, v46

    .line 158
    .restart local v8    # "coeff4":D
    const-wide v46, -0x402e93e93e93e93fL    # -0.2722222222222222

    const-wide v48, -0x402e93e93e93e93fL    # -0.2722222222222222

    const-wide v50, 0x40a19c0000000000L    # 2254.0

    const-wide v52, 0x4090140000000000L    # 1029.0

    sget-wide v54, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v52, v52, v54

    add-double v50, v50, v52

    const-wide v52, 0x408c200000000000L    # 900.0

    div-double v50, v50, v52

    const-wide v52, -0x3f6a900000000000L    # -1372.0

    const-wide v54, 0x408a780000000000L    # 847.0

    sget-wide v56, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v54, v54, v56

    sub-double v52, v52, v54

    const-wide v54, 0x4072c00000000000L    # 300.0

    div-double v52, v52, v54

    const-wide v54, 0x4048800000000000L    # 49.0

    const-wide v56, 0x4048800000000000L    # 49.0

    sget-wide v58, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v56, v56, v58

    add-double v54, v54, v56

    mul-double v54, v54, p1

    const-wide/high16 v56, 0x4039000000000000L    # 25.0

    div-double v54, v54, v56

    add-double v52, v52, v54

    mul-double v52, v52, p1

    add-double v50, v50, v52

    mul-double v50, v50, p1

    add-double v48, v48, v50

    mul-double v48, v48, p1

    add-double v10, v46, v48

    .line 159
    .restart local v10    # "coeff5":D
    const-wide v46, -0x402e93e93e93e93fL    # -0.2722222222222222

    const-wide v48, -0x402e93e93e93e93fL    # -0.2722222222222222

    const-wide v50, 0x40a19c0000000000L    # 2254.0

    const-wide v52, 0x4090140000000000L    # 1029.0

    sget-wide v54, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v52, v52, v54

    sub-double v50, v50, v52

    const-wide v52, 0x408c200000000000L    # 900.0

    div-double v50, v50, v52

    const-wide v52, -0x3f6a900000000000L    # -1372.0

    const-wide v54, 0x408a780000000000L    # 847.0

    sget-wide v56, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v54, v54, v56

    add-double v52, v52, v54

    const-wide v54, 0x4072c00000000000L    # 300.0

    div-double v52, v52, v54

    const-wide v54, 0x4048800000000000L    # 49.0

    const-wide v56, 0x4048800000000000L    # 49.0

    sget-wide v58, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v56, v56, v58

    sub-double v54, v54, v56

    mul-double v54, v54, p1

    const-wide/high16 v56, 0x4039000000000000L    # 25.0

    div-double v54, v54, v56

    add-double v52, v52, v54

    mul-double v52, v52, p1

    add-double v50, v50, v52

    mul-double v50, v50, p1

    add-double v48, v48, v50

    mul-double v48, v48, p1

    add-double v12, v46, v48

    .line 160
    .restart local v12    # "coeff6":D
    const-wide v46, -0x4056666666666666L    # -0.05

    const-wide v48, -0x4056666666666666L    # -0.05

    const-wide/high16 v50, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v52, -0x4018000000000000L    # -0.75

    mul-double v52, v52, p1

    add-double v50, v50, v52

    mul-double v50, v50, p1

    add-double v48, v48, v50

    mul-double v48, v48, p1

    add-double v14, v46, v48

    .line 161
    .restart local v14    # "coeff7":D
    const/16 v30, 0x0

    .restart local v30    # "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->interpolatedState:[D

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    move-object/from16 v31, v0

    const/16 v46, 0x0

    aget-object v31, v31, v46

    aget-wide v32, v31, v30

    .line 163
    .restart local v32    # "yDot1":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    move-object/from16 v31, v0

    const/16 v46, 0x1

    aget-object v31, v31, v46

    aget-wide v34, v31, v30

    .line 164
    .restart local v34    # "yDot2":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    move-object/from16 v31, v0

    const/16 v46, 0x2

    aget-object v31, v31, v46

    aget-wide v36, v31, v30

    .line 165
    .restart local v36    # "yDot3":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    move-object/from16 v31, v0

    const/16 v46, 0x3

    aget-object v31, v31, v46

    aget-wide v38, v31, v30

    .line 166
    .restart local v38    # "yDot4":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    move-object/from16 v31, v0

    const/16 v46, 0x4

    aget-object v31, v31, v46

    aget-wide v40, v31, v30

    .line 167
    .restart local v40    # "yDot5":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    move-object/from16 v31, v0

    const/16 v46, 0x5

    aget-object v31, v31, v46

    aget-wide v42, v31, v30

    .line 168
    .restart local v42    # "yDot6":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    move-object/from16 v31, v0

    const/16 v46, 0x6

    aget-object v31, v31, v46

    aget-wide v44, v31, v30

    .line 169
    .restart local v44    # "yDot7":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->interpolatedState:[D

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->currentState:[D

    move-object/from16 v46, v0

    aget-wide v46, v46, v30

    mul-double v48, v2, v32

    const-wide/16 v50, 0x0

    mul-double v50, v50, v34

    add-double v48, v48, v50

    mul-double v50, v6, v36

    add-double v48, v48, v50

    mul-double v50, v8, v38

    add-double v48, v48, v50

    mul-double v50, v10, v40

    add-double v48, v48, v50

    mul-double v50, v12, v42

    add-double v48, v48, v50

    mul-double v50, v14, v44

    add-double v48, v48, v50

    mul-double v48, v48, p3

    add-double v46, v46, v48

    aput-wide v46, v31, v30

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->interpolatedDerivatives:[D

    move-object/from16 v31, v0

    mul-double v46, v16, v32

    const-wide/16 v48, 0x0

    mul-double v48, v48, v34

    add-double v46, v46, v48

    mul-double v48, v20, v36

    add-double v46, v46, v48

    mul-double v48, v22, v38

    add-double v46, v46, v48

    mul-double v48, v24, v40

    add-double v46, v46, v48

    mul-double v48, v26, v42

    add-double v46, v46, v48

    mul-double v48, v28, v44

    add-double v46, v46, v48

    aput-wide v46, v31, v30

    .line 161
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_1

    .line 177
    .end local v32    # "yDot1":D
    .end local v34    # "yDot2":D
    .end local v36    # "yDot3":D
    .end local v38    # "yDot4":D
    .end local v40    # "yDot5":D
    .end local v42    # "yDot6":D
    .end local v44    # "yDot7":D
    :cond_1
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;)V

    return-object v0
.end method
