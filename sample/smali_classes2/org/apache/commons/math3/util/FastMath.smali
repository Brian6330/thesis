.class public Lorg/apache/commons/math3/util/FastMath;
.super Ljava/lang/Object;
.source "FastMath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/FastMath$CodyWaite;,
        Lorg/apache/commons/math3/util/FastMath$lnMant;,
        Lorg/apache/commons/math3/util/FastMath$ExpFracTable;,
        Lorg/apache/commons/math3/util/FastMath$ExpIntTable;
    }
.end annotation


# static fields
.field private static final CBRTTWO:[D

.field private static final COSINE_TABLE_A:[D

.field private static final COSINE_TABLE_B:[D

.field public static final E:D = 2.718281828459045

.field private static final EIGHTHS:[D

.field static final EXP_FRAC_TABLE_LEN:I = 0x401

.field static final EXP_INT_TABLE_LEN:I = 0x5dc

.field static final EXP_INT_TABLE_MAX_INDEX:I = 0x2ee

.field private static final F_11_12:D = 0.9166666666666666

.field private static final F_13_14:D = 0.9285714285714286

.field private static final F_15_16:D = 0.9375

.field private static final F_1_11:D = 0.09090909090909091

.field private static final F_1_13:D = 0.07692307692307693

.field private static final F_1_15:D = 0.06666666666666667

.field private static final F_1_17:D = 0.058823529411764705

.field private static final F_1_2:D = 0.5

.field private static final F_1_3:D = 0.3333333333333333

.field private static final F_1_4:D = 0.25

.field private static final F_1_5:D = 0.2

.field private static final F_1_7:D = 0.14285714285714285

.field private static final F_1_9:D = 0.1111111111111111

.field private static final F_3_4:D = 0.75

.field private static final F_5_6:D = 0.8333333333333334

.field private static final F_7_8:D = 0.875

.field private static final F_9_10:D = 0.9

.field private static final HEX_40000000:J = 0x40000000L

.field private static final LN_2_A:D = 0.6931470632553101

.field private static final LN_2_B:D = 1.1730463525082348E-7

.field private static final LN_HI_PREC_COEF:[[D

.field static final LN_MANT_LEN:I = 0x400

.field private static final LN_QUICK_COEF:[[D

.field private static final LOG_MAX_VALUE:D

.field private static final MASK_30BITS:J = -0x40000000L

.field private static final MASK_NON_SIGN_INT:I = 0x7fffffff

.field private static final MASK_NON_SIGN_LONG:J = 0x7fffffffffffffffL

.field public static final PI:D = 3.141592653589793

.field private static final PI_O_4_BITS:[J

.field private static final RECIP_2PI:[J

.field private static final RECOMPUTE_TABLES_AT_RUNTIME:Z = false

.field private static final SINE_TABLE_A:[D

.field private static final SINE_TABLE_B:[D

.field private static final SINE_TABLE_LEN:I = 0xe

.field private static final TANGENT_TABLE_A:[D

.field private static final TANGENT_TABLE_B:[D

.field private static final TWO_POWER_52:D = 4.503599627370496E15

.field private static final TWO_POWER_53:D = 9.007199254740992E15


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/16 v4, 0xe

    const/4 v3, 0x2

    .line 99
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/util/FastMath;->LOG_MAX_VALUE:D

    .line 117
    const/16 v0, 0x9

    new-array v0, v0, [[D

    new-array v1, v3, [D

    fill-array-data v1, :array_0

    aput-object v1, v0, v6

    new-array v1, v3, [D

    fill-array-data v1, :array_1

    aput-object v1, v0, v7

    new-array v1, v3, [D

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [D

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [D

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v3, [D

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [D

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [D

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [D

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/math3/util/FastMath;->LN_QUICK_COEF:[[D

    .line 130
    const/4 v0, 0x6

    new-array v0, v0, [[D

    new-array v1, v3, [D

    fill-array-data v1, :array_9

    aput-object v1, v0, v6

    new-array v1, v3, [D

    fill-array-data v1, :array_a

    aput-object v1, v0, v7

    new-array v1, v3, [D

    fill-array-data v1, :array_b

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [D

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [D

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    new-array v1, v3, [D

    fill-array-data v1, :array_e

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/commons/math3/util/FastMath;->LN_HI_PREC_COEF:[[D

    .line 143
    new-array v0, v4, [D

    fill-array-data v0, :array_f

    sput-object v0, Lorg/apache/commons/math3/util/FastMath;->SINE_TABLE_A:[D

    .line 162
    new-array v0, v4, [D

    fill-array-data v0, :array_10

    sput-object v0, Lorg/apache/commons/math3/util/FastMath;->SINE_TABLE_B:[D

    .line 181
    new-array v0, v4, [D

    fill-array-data v0, :array_11

    sput-object v0, Lorg/apache/commons/math3/util/FastMath;->COSINE_TABLE_A:[D

    .line 200
    new-array v0, v4, [D

    fill-array-data v0, :array_12

    sput-object v0, Lorg/apache/commons/math3/util/FastMath;->COSINE_TABLE_B:[D

    .line 220
    new-array v0, v4, [D

    fill-array-data v0, :array_13

    sput-object v0, Lorg/apache/commons/math3/util/FastMath;->TANGENT_TABLE_A:[D

    .line 239
    new-array v0, v4, [D

    fill-array-data v0, :array_14

    sput-object v0, Lorg/apache/commons/math3/util/FastMath;->TANGENT_TABLE_B:[D

    .line 258
    const/16 v0, 0x12

    new-array v0, v0, [J

    fill-array-data v0, :array_15

    sput-object v0, Lorg/apache/commons/math3/util/FastMath;->RECIP_2PI:[J

    .line 279
    new-array v0, v3, [J

    fill-array-data v0, :array_16

    sput-object v0, Lorg/apache/commons/math3/util/FastMath;->PI_O_4_BITS:[J

    .line 287
    new-array v0, v4, [D

    fill-array-data v0, :array_17

    sput-object v0, Lorg/apache/commons/math3/util/FastMath;->EIGHTHS:[D

    .line 290
    new-array v0, v5, [D

    fill-array-data v0, :array_18

    sput-object v0, Lorg/apache/commons/math3/util/FastMath;->CBRTTWO:[D

    return-void

    .line 117
    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3b1b6a1c267a4b13L    # 5.669184079525E-24
    .end array-data

    :array_1
    .array-data 8
        -0x4030000000000000L    # -0.25
        -0x4030000000000000L    # -0.25
    .end array-data

    :array_2
    .array-data 8
        0x3fd5555540000000L    # 0.3333333134651184
        0x3e555555554bc4dfL    # 1.986821492305628E-8
    .end array-data

    :array_3
    .array-data 8
        -0x4030000000000000L    # -0.25
        -0x42cd3e694bd1e228L    # -6.663542893624021E-14
    .end array-data

    :array_4
    .array-data 8
        0x3fc9999980000000L    # 0.19999998807907104
        0x3e4999ab97c05f95L    # 1.1921056801463227E-8
    .end array-data

    :array_5
    .array-data 8
        -0x403aaaaac0000000L    # -0.1666666567325592
        -0x41bf3fad3df74b94L    # -7.800414592973399E-9
    .end array-data

    :array_6
    .array-data 8
        0x3fc2492480000000L    # 0.1428571343421936
        0x3e38443f9cfb0f62L    # 5.650007086920087E-9
    .end array-data

    :array_7
    .array-data 8
        -0x403fff2bc0000000L    # -0.12502530217170715
        -0x422b8a4dddba2203L    # -7.44321345601866E-11
    .end array-data

    :array_8
    .array-data 8
        0x3fbc738b80000000L    # 0.11113807559013367
        0x3e43cc7f8d7f1d27L    # 9.219544613762692E-9
    .end array-data

    .line 130
    :array_9
    .array-data 8
        0x3ff0000000000000L    # 1.0
        -0x44adc4d4b7a5f493L    # -6.032174644509064E-23
    .end array-data

    :array_a
    .array-data 8
        -0x4030000000000000L    # -0.25
        -0x4030000000000000L    # -0.25
    .end array-data

    :array_b
    .array-data 8
        0x3fd5555540000000L    # 0.3333333134651184
        0x3e55555197ea2f51L    # 1.9868161777724352E-8
    .end array-data

    :array_c
    .array-data 8
        -0x4030000040000000L    # -0.2499999701976776
        -0x41a03fd729481089L    # -2.957007209750105E-8
    .end array-data

    :array_d
    .array-data 8
        0x3fc99995c0000000L    # 0.19999954104423523
        0x3de5c2091d0952dfL    # 1.5830993332061267E-10
    .end array-data

    :array_e
    .array-data 8
        -0x403ab85c00000000L    # -0.16624879837036133
        -0x41a40be07956f7d9L    # -2.6033824355191673E-8
    .end array-data

    .line 143
    :array_f
    .array-data 8
        0x0
        0x3fbfeaaf00000000L    # 0.1246747374534607
        0x3fcfaaeec0000000L
        0x3fd7710240000000L    # 0.366272509098053
        0x3fdeaee880000000L    # 0.4794255495071411
        0x3fe2b91e00000000L    # 0.5850973129272461
        0x3fe5cffc00000000L    # 0.6816387176513672
        0x3fe88fb780000000L    # 0.7675435543060303
        0x3feaed5480000000L    # 0.8414709568023682
        0x3fecdf6040000000L    # 0.902267575263977
        0x3fee5e1500000000L    # 0.9489846229553223
        0x3fef6379c0000000L    # 0.9808930158615112
        0x3fefeb7a80000000L    # 0.9974949359893799
        0x3feff3f800000000L    # 0.9985313415527344
    .end array-data

    .line 162
    :array_10
    .array-data 8
        0x0
        -0x41ce86ee35ca069bL    # -4.068233003401932E-9
        0x3e44f31576ba89dfL    # 9.755392680573412E-9
        0x3e55764213d22a52L    # 1.9987994582857286E-8
        -0x41b8960bdfd0ec98L    # -1.0902938113007961E-8
        -0x419a88421d817238L    # -3.9986783938944604E-8
        0x3e66bf8f0d65b2c7L    # 4.23719669792332E-8
        -0x41940b8da1ad99e2L    # -5.207000323380292E-8
        0x3e5e1219dc0831baL    # 2.800552834259E-8
        0x3e54395b9ba52bdeL    # 1.883511811213715E-8
        -0x41d11418c1f26420L
        0x3e6619369d5ac9deL    # 4.116164446561962E-8
        0x3e6b2c6d8ade6d02L    # 5.0614674548127384E-8
        -0x41ee9934d7791580L    # -1.0129027912496858E-9
    .end array-data

    .line 181
    :array_11
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fefc01540000000L    # 0.9921976327896118
        0x3fef015480000000L    # 0.9689123630523682
        0x3fedc6b800000000L    # 0.9305076599121094
        0x3fec152800000000L    # 0.8775825500488281
        0x3fe9f36900000000L    # 0.8109631538391113
        0x3fe769fec0000000L    # 0.7316888570785522
        0x3fe4830bc0000000L    # 0.6409968137741089
        0x3fe14a2800000000L    # 0.5403022766113281
        0x3fdb986580000000L    # 0.4311765432357788
        0x3fd42e3dc0000000L    # 0.3153223395347595
        0x3fc8e6f080000000L    # 0.19454771280288696
        0x3fb21bd540000000L    # 0.07073719799518585
        -0x405442e500000000L    # -0.05417713522911072
    .end array-data

    .line 200
    :array_12
    .array-data 8
        0x0
        0x3e627d5bd36da3cdL    # 3.4439717236742845E-8
        0x3e6f7deea174f07aL    # 5.865827662008209E-8
        -0x419b9959120a59b2L    # -3.7999795083850525E-8
        0x3e496df53e76deeeL    # 1.184154459111628E-8
        -0x419d912f84b8b7f8L    # -3.43338934259355E-8
        0x3e4954847b9f5d96L    # 1.1795268640216787E-8
        0x3e67d4ceb377de00L    # 4.438921624363781E-8
        0x3e5f6a0d17247090L    # 2.925681159240093E-8
        -0x41a39d05959b3904L    # -2.6437112632041807E-8
        0x3e588bd951d9589eL    # 2.2860509143963117E-8
        -0x41cb530fac069102L    # -4.813899778443457E-9
        0x3e2f8bf34e87d450L    # 3.6725170580355583E-9
        0x3debc96115437580L    # 2.0217439756338078E-10
    .end array-data

    .line 220
    :array_13
    .array-data 8
        0x0
        0x3fc01577c0000000L    # 0.1256551444530487
        0x3fd05785c0000000L    # 0.25534194707870483
        0x3fd9312d80000000L    # 0.3936265707015991
        0x3fe17b4f40000000L    # 0.5463024377822876
        0x3fe7166680000000L    # 0.7214844226837158
        0x3fedcfa380000000L    # 0.9315965175628662
        0x3ff328a380000000L    # 1.1974215507507324
        0x3ff8eb2440000000L    # 1.5574076175689697
        0x4000bd9600000000L    # 2.092571258544922
        0x4008139940000000L    # 3.0095696449279785
        0x40142aebc0000000L    # 5.041914939880371
        0x402c33ed40000000L    # 14.101419448852539
        -0x3fcd91b300000000L    # -18.430862426757812
    .end array-data

    .line 239
    :array_14
    .array-data 8
        0x0
        -0x41bf1511a4e045a1L    # -7.877917738262007E-9
        -0x41a43c4c55e63940L    # -2.5857668567479893E-8
        0x3e366fe2bf10b114L    # 5.2240336371356666E-9
        0x3e6bf3474a431796L    # 5.206150291559893E-8
        0x3e53a83ddf05d806L    # 1.8307188599677033E-8
        -0x419110eeebe0c3faL    # -5.7618793749770706E-8
        0x3e75115a5dbf6d33L    # 7.848361555046424E-8
        0x3e7cbee3a5b8acc8L    # 1.0708593250394448E-7
        0x3e532451b242ac7cL    # 1.7827257129423813E-8
        0x3e5f118d40a85840L    # 2.893485277253286E-8
        0x3e953f29e3a7b3e9L    # 3.1660099222737955E-7
        0x3ea0b887775a6a07L    # 4.983191803254889E-7
        -0x41697a3ba64a83f0L    # -3.356118100840571E-7
    .end array-data

    .line 258
    :array_15
    .array-data 8
        0x28be60db9391054aL
        0x7f09d5f47d4d3770L    # 8.858637187045085E303
        0x36d8a5664f10e410L    # 1.726826568726609E-44
        0x7f9458eaf7aef158L    # 3.5720961930666036E306
        0x6dc91b8e909374b8L    # 7.090433745230334E220
        0x1924bba82746487L
        0x3f877ac72c4a69cfL    # 0.011464649237770267
        -0x45df7282b4512edfL    # -1.044621797628068E-28
        0x3a671c09ad17df90L    # 2.333465466106487E-27
        0x4e64758e60d4ce7dL    # 4.412632339855038E69
        0x272117e2ef7e4a0eL    # 3.309770029673895E-120
        -0x3801da00087e99fdL    # -6.4118634369864365E38
        -0x4343b9d297d64b9L    # -2.114058060274595E288
        -0x24b2604c360d3d93L    # -6.5709692303435024E131
        -0x2c2e702658680575L    # -5.861253522665201E95
        0x5d49eeb1faf97c5eL    # 2.470533517408828E141
        -0x30be31821d6b5b46L    # -6.292310740746215E73
        -0x6501281400000000L    # -1.189283686241432E-178
    .end array-data

    .line 279
    :array_16
    .array-data 8
        -0x36f0255dde973dccL    # -8.879609370493449E43
        -0x3b399d747f23e32fL    # -2.114197916374807E23
    .end array-data

    .line 287
    :array_17
    .array-data 8
        0x0
        0x3fc0000000000000L    # 0.125
        0x3fd0000000000000L    # 0.25
        0x3fd8000000000000L    # 0.375
        0x3fe0000000000000L    # 0.5
        0x3fe4000000000000L    # 0.625
        0x3fe8000000000000L    # 0.75
        0x3fec000000000000L    # 0.875
        0x3ff0000000000000L    # 1.0
        0x3ff2000000000000L    # 1.125
        0x3ff4000000000000L    # 1.25
        0x3ff6000000000000L    # 1.375
        0x3ff8000000000000L    # 1.5
        0x3ffa000000000000L    # 1.625
    .end array-data

    .line 290
    :array_18
    .array-data 8
        0x3fe428a2f98d728bL    # 0.6299605249474366
        0x3fe965fea53d6e3dL    # 0.7937005259840998
        0x3ff0000000000000L    # 1.0
        0x3ff428a2f98d728bL    # 1.2599210498948732
        0x3ff965fea53d6e3cL    # 1.5874010519681994
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IEEEremainder(DD)D
    .locals 2
    .param p0, "dividend"    # D
    .param p2, "divisor"    # D

    .prologue
    .line 3651
    invoke-static {p0, p1, p2, p3}, Ljava/lang/StrictMath;->IEEEremainder(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static abs(D)D
    .locals 4
    .param p0, "x"    # D

    .prologue
    .line 3047
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static abs(F)F
    .locals 2
    .param p0, "x"    # F

    .prologue
    .line 3038
    const v0, 0x7fffffff

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static abs(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 3014
    ushr-int/lit8 v0, p0, 0x1f

    .line 3015
    .local v0, "i":I
    xor-int/lit8 v1, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    xor-int/2addr v1, p0

    add-int/2addr v1, v0

    return v1
.end method

.method public static abs(J)J
    .locals 6
    .param p0, "x"    # J

    .prologue
    .line 3024
    const/16 v2, 0x3f

    ushr-long v0, p0, v2

    .line 3029
    .local v0, "l":J
    const-wide/16 v2, -0x1

    xor-long/2addr v2, v0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    xor-long/2addr v2, p0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public static acos(D)D
    .locals 28
    .param p0, "x"    # D

    .prologue
    .line 2801
    cmpl-double v24, p0, p0

    if-eqz v24, :cond_0

    .line 2802
    const-wide/high16 v24, 0x7ff8000000000000L    # NaN

    .line 2875
    :goto_0
    return-wide v24

    .line 2805
    :cond_0
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpl-double v24, p0, v24

    if-gtz v24, :cond_1

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    cmpg-double v24, p0, v24

    if-gez v24, :cond_2

    .line 2806
    :cond_1
    const-wide/high16 v24, 0x7ff8000000000000L    # NaN

    goto :goto_0

    .line 2809
    :cond_2
    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    cmpl-double v24, p0, v24

    if-nez v24, :cond_3

    .line 2810
    const-wide v24, 0x400921fb54442d18L    # Math.PI

    goto :goto_0

    .line 2813
    :cond_3
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpl-double v24, p0, v24

    if-nez v24, :cond_4

    .line 2814
    const-wide/16 v24, 0x0

    goto :goto_0

    .line 2817
    :cond_4
    const-wide/16 v24, 0x0

    cmpl-double v24, p0, v24

    if-nez v24, :cond_5

    .line 2818
    const-wide v24, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto :goto_0

    .line 2824
    :cond_5
    const-wide/high16 v24, 0x41d0000000000000L    # 1.073741824E9

    mul-double v8, p0, v24

    .line 2825
    .local v8, "temp":D
    add-double v24, p0, v8

    sub-double v10, v24, v8

    .line 2826
    .local v10, "xa":D
    sub-double v12, p0, v10

    .line 2829
    .local v12, "xb":D
    mul-double v16, v10, v10

    .line 2830
    .local v16, "ya":D
    mul-double v24, v10, v12

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v24, v24, v26

    mul-double v26, v12, v12

    add-double v18, v24, v26

    .line 2833
    .local v18, "yb":D
    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    .line 2834
    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 2836
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    add-double v20, v24, v16

    .line 2837
    .local v20, "za":D
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    sub-double v24, v20, v24

    sub-double v24, v24, v16

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v22, v0

    .line 2839
    .local v22, "zb":D
    add-double v8, v20, v18

    .line 2840
    sub-double v24, v8, v20

    sub-double v24, v24, v18

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    add-double v22, v22, v24

    .line 2841
    move-wide/from16 v20, v8

    .line 2844
    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    .line 2845
    .local v14, "y":D
    const-wide/high16 v24, 0x41d0000000000000L    # 1.073741824E9

    mul-double v8, v14, v24

    .line 2846
    add-double v24, v14, v8

    sub-double v16, v24, v8

    .line 2847
    sub-double v18, v14, v16

    .line 2850
    mul-double v24, v16, v16

    sub-double v24, v20, v24

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v16

    mul-double v26, v26, v18

    sub-double v24, v24, v26

    mul-double v26, v18, v18

    sub-double v24, v24, v26

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v14

    div-double v24, v24, v26

    add-double v18, v18, v24

    .line 2853
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    mul-double v24, v24, v14

    div-double v24, v22, v24

    add-double v18, v18, v24

    .line 2854
    add-double v14, v16, v18

    .line 2855
    sub-double v24, v14, v16

    sub-double v24, v24, v18

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 2858
    div-double v2, v14, p0

    .line 2861
    .local v2, "r":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 2862
    const-wide v24, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto/16 :goto_0

    .line 2865
    :cond_6
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->doubleHighPart(D)D

    move-result-wide v4

    .line 2866
    .local v4, "ra":D
    sub-double v6, v2, v4

    .line 2868
    .local v6, "rb":D
    mul-double v24, v4, v10

    sub-double v24, v14, v24

    mul-double v26, v4, v12

    sub-double v24, v24, v26

    mul-double v26, v6, v10

    sub-double v24, v24, v26

    mul-double v26, v6, v12

    sub-double v24, v24, v26

    div-double v24, v24, p0

    add-double v6, v6, v24

    .line 2869
    div-double v24, v18, p0

    add-double v6, v6, v24

    .line 2871
    add-double v8, v4, v6

    .line 2872
    sub-double v24, v8, v4

    sub-double v24, v24, v6

    move-wide/from16 v0, v24

    neg-double v6, v0

    .line 2873
    move-wide v4, v8

    .line 2875
    const-wide/16 v24, 0x0

    cmpg-double v24, p0, v24

    if-gez v24, :cond_7

    const/16 v24, 0x1

    :goto_1
    move/from16 v0, v24

    invoke-static {v4, v5, v6, v7, v0}, Lorg/apache/commons/math3/util/FastMath;->atan(DDZ)D

    move-result-wide v24

    goto/16 :goto_0

    :cond_7
    const/16 v24, 0x0

    goto :goto_1
.end method

.method public static acosh(D)D
    .locals 4
    .param p0, "a"    # D

    .prologue
    .line 713
    mul-double v0, p0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static addExact(II)I
    .locals 6
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 3741
    add-int v0, p0, p1

    .line 3744
    .local v0, "sum":I
    xor-int v1, p0, p1

    if-ltz v1, :cond_0

    xor-int v1, v0, p1

    if-gez v1, :cond_0

    .line 3745
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 3748
    :cond_0
    return v0
.end method

.method public static addExact(JJ)J
    .locals 8
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 3762
    add-long v0, p0, p2

    .line 3765
    .local v0, "sum":J
    xor-long v2, p0, p2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    xor-long v2, v0, p2

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 3766
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 3769
    :cond_0
    return-wide v0
.end method

.method public static asin(D)D
    .locals 30
    .param p0, "x"    # D

    .prologue
    .line 2725
    cmpl-double v26, p0, p0

    if-eqz v26, :cond_1

    .line 2726
    const-wide/high16 p0, 0x7ff8000000000000L    # NaN

    .line 2793
    .end local p0    # "x":D
    :cond_0
    :goto_0
    return-wide p0

    .line 2729
    .restart local p0    # "x":D
    :cond_1
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpl-double v26, p0, v26

    if-gtz v26, :cond_2

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    cmpg-double v26, p0, v26

    if-gez v26, :cond_3

    .line 2730
    :cond_2
    const-wide/high16 p0, 0x7ff8000000000000L    # NaN

    goto :goto_0

    .line 2733
    :cond_3
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpl-double v26, p0, v26

    if-nez v26, :cond_4

    .line 2734
    const-wide p0, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto :goto_0

    .line 2737
    :cond_4
    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    cmpl-double v26, p0, v26

    if-nez v26, :cond_5

    .line 2738
    const-wide p0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_0

    .line 2741
    :cond_5
    const-wide/16 v26, 0x0

    cmpl-double v26, p0, v26

    if-eqz v26, :cond_0

    .line 2748
    const-wide/high16 v26, 0x41d0000000000000L    # 1.073741824E9

    mul-double v10, p0, v26

    .line 2749
    .local v10, "temp":D
    add-double v26, p0, v10

    sub-double v12, v26, v10

    .line 2750
    .local v12, "xa":D
    sub-double v14, p0, v12

    .line 2753
    .local v14, "xb":D
    mul-double v18, v12, v12

    .line 2754
    .local v18, "ya":D
    mul-double v26, v12, v14

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v28

    mul-double v28, v14, v14

    add-double v20, v26, v28

    .line 2757
    .local v20, "yb":D
    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 2758
    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    .line 2760
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    add-double v22, v26, v18

    .line 2761
    .local v22, "za":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    sub-double v26, v22, v26

    sub-double v26, v26, v18

    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v24, v0

    .line 2763
    .local v24, "zb":D
    add-double v10, v22, v20

    .line 2764
    sub-double v26, v10, v22

    sub-double v26, v26, v20

    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    .line 2765
    move-wide/from16 v22, v10

    .line 2769
    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v16

    .line 2770
    .local v16, "y":D
    const-wide/high16 v26, 0x41d0000000000000L    # 1.073741824E9

    mul-double v10, v16, v26

    .line 2771
    add-double v26, v16, v10

    sub-double v18, v26, v10

    .line 2772
    sub-double v20, v16, v18

    .line 2775
    mul-double v26, v18, v18

    sub-double v26, v22, v26

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v28, v28, v18

    mul-double v28, v28, v20

    sub-double v26, v26, v28

    mul-double v28, v20, v20

    sub-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v28, v28, v16

    div-double v26, v26, v28

    add-double v20, v20, v26

    .line 2778
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v16

    div-double v2, v24, v26

    .line 2781
    .local v2, "dx":D
    div-double v4, p0, v16

    .line 2782
    .local v4, "r":D
    const-wide/high16 v26, 0x41d0000000000000L    # 1.073741824E9

    mul-double v10, v4, v26

    .line 2783
    add-double v26, v4, v10

    sub-double v6, v26, v10

    .line 2784
    .local v6, "ra":D
    sub-double v8, v4, v6

    .line 2786
    .local v8, "rb":D
    mul-double v26, v6, v18

    sub-double v26, p0, v26

    mul-double v28, v6, v20

    sub-double v26, v26, v28

    mul-double v28, v8, v18

    sub-double v26, v26, v28

    mul-double v28, v8, v20

    sub-double v26, v26, v28

    div-double v26, v26, v16

    add-double v8, v8, v26

    .line 2787
    move-wide/from16 v0, p0

    neg-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v2

    div-double v26, v26, v16

    div-double v26, v26, v16

    add-double v8, v8, v26

    .line 2789
    add-double v10, v6, v8

    .line 2790
    sub-double v26, v10, v6

    sub-double v26, v26, v8

    move-wide/from16 v0, v26

    neg-double v8, v0

    .line 2791
    move-wide v6, v10

    .line 2793
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-static {v6, v7, v8, v9, v0}, Lorg/apache/commons/math3/util/FastMath;->atan(DDZ)D

    move-result-wide p0

    goto/16 :goto_0
.end method

.method public static asinh(D)D
    .locals 28
    .param p0, "a"    # D

    .prologue
    .line 721
    const/4 v6, 0x0

    .line 722
    .local v6, "negative":Z
    const-wide/16 v8, 0x0

    cmpg-double v7, p0, v8

    if-gez v7, :cond_0

    .line 723
    const/4 v6, 0x1

    .line 724
    move-wide/from16 v0, p0

    neg-double v0, v0

    move-wide/from16 p0, v0

    .line 728
    :cond_0
    const-wide v8, 0x3fc5604189374bc7L    # 0.167

    cmpl-double v7, p0, v8

    if-lez v7, :cond_2

    .line 729
    mul-double v8, p0, p0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    add-double v8, v8, p0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    .line 743
    .local v4, "absAsinh":D
    :goto_0
    if-eqz v6, :cond_1

    neg-double v4, v4

    .end local v4    # "absAsinh":D
    :cond_1
    return-wide v4

    .line 731
    :cond_2
    mul-double v2, p0, p0

    .line 732
    .local v2, "a2":D
    const-wide v8, 0x3fb8d4fdf3b645a2L    # 0.097

    cmpl-double v7, p0, v8

    if-lez v7, :cond_3

    .line 733
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v10, 0x3fd5555555555555L    # 0.3333333333333333

    const-wide v12, 0x3fc999999999999aL    # 0.2

    const-wide v14, 0x3fc2492492492492L    # 0.14285714285714285

    const-wide v16, 0x3fbc71c71c71c71cL    # 0.1111111111111111

    const-wide v18, 0x3fb745d1745d1746L    # 0.09090909090909091

    const-wide v20, 0x3fb3b13b13b13b14L    # 0.07692307692307693

    const-wide v22, 0x3fb1111111111111L    # 0.06666666666666667

    const-wide v24, 0x3fae1e1e1e1e1e1eL    # 0.058823529411764705

    mul-double v24, v24, v2

    const-wide/high16 v26, 0x3fee000000000000L    # 0.9375

    mul-double v24, v24, v26

    sub-double v22, v22, v24

    mul-double v22, v22, v2

    const-wide v24, 0x3fedb6db6db6db6eL    # 0.9285714285714286

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    mul-double v20, v20, v2

    const-wide v22, 0x3fed555555555555L    # 0.9166666666666666

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    mul-double v18, v18, v2

    const-wide v20, 0x3feccccccccccccdL    # 0.9

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    mul-double v16, v16, v2

    const-wide/high16 v18, 0x3fec000000000000L    # 0.875

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    mul-double/2addr v14, v2

    const-wide v16, 0x3feaaaaaaaaaaaabL    # 0.8333333333333334

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    mul-double/2addr v12, v2

    const-wide/high16 v14, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    mul-double/2addr v10, v2

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    mul-double v4, p0, v8

    .restart local v4    # "absAsinh":D
    goto :goto_0

    .line 734
    .end local v4    # "absAsinh":D
    :cond_3
    const-wide v8, 0x3fa26e978d4fdf3bL    # 0.036

    cmpl-double v7, p0, v8

    if-lez v7, :cond_4

    .line 735
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v10, 0x3fd5555555555555L    # 0.3333333333333333

    const-wide v12, 0x3fc999999999999aL    # 0.2

    const-wide v14, 0x3fc2492492492492L    # 0.14285714285714285

    const-wide v16, 0x3fbc71c71c71c71cL    # 0.1111111111111111

    const-wide v18, 0x3fb745d1745d1746L    # 0.09090909090909091

    const-wide v20, 0x3fb3b13b13b13b14L    # 0.07692307692307693

    mul-double v20, v20, v2

    const-wide v22, 0x3fed555555555555L    # 0.9166666666666666

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    mul-double v18, v18, v2

    const-wide v20, 0x3feccccccccccccdL    # 0.9

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    mul-double v16, v16, v2

    const-wide/high16 v18, 0x3fec000000000000L    # 0.875

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    mul-double/2addr v14, v2

    const-wide v16, 0x3feaaaaaaaaaaaabL    # 0.8333333333333334

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    mul-double/2addr v12, v2

    const-wide/high16 v14, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    mul-double/2addr v10, v2

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    mul-double v4, p0, v8

    .restart local v4    # "absAsinh":D
    goto/16 :goto_0

    .line 736
    .end local v4    # "absAsinh":D
    :cond_4
    const-wide v8, 0x3f6d7dbf487fcb92L    # 0.0036

    cmpl-double v7, p0, v8

    if-lez v7, :cond_5

    .line 737
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v10, 0x3fd5555555555555L    # 0.3333333333333333

    const-wide v12, 0x3fc999999999999aL    # 0.2

    const-wide v14, 0x3fc2492492492492L    # 0.14285714285714285

    const-wide v16, 0x3fbc71c71c71c71cL    # 0.1111111111111111

    mul-double v16, v16, v2

    const-wide/high16 v18, 0x3fec000000000000L    # 0.875

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    mul-double/2addr v14, v2

    const-wide v16, 0x3feaaaaaaaaaaaabL    # 0.8333333333333334

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    mul-double/2addr v12, v2

    const-wide/high16 v14, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    mul-double/2addr v10, v2

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    mul-double v4, p0, v8

    .restart local v4    # "absAsinh":D
    goto/16 :goto_0

    .line 739
    .end local v4    # "absAsinh":D
    :cond_5
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v10, 0x3fd5555555555555L    # 0.3333333333333333

    const-wide v12, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v12, v2

    const-wide/high16 v14, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    mul-double/2addr v10, v2

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    mul-double v4, p0, v8

    .restart local v4    # "absAsinh":D
    goto/16 :goto_0
.end method

.method public static atan(D)D
    .locals 4
    .param p0, "x"    # D

    .prologue
    .line 2441
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->atan(DDZ)D

    move-result-wide v0

    return-wide v0
.end method

.method private static atan(DDZ)D
    .locals 58
    .param p0, "xa"    # D
    .param p2, "xb"    # D
    .param p4, "leftPlane"    # Z

    .prologue
    .line 2451
    const-wide/16 v50, 0x0

    cmpl-double v50, p0, v50

    if-nez v50, :cond_1

    .line 2452
    if-eqz p4, :cond_0

    const-wide v50, 0x400921fb54442d18L    # Math.PI

    move-wide/from16 v0, v50

    move-wide/from16 v2, p0

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->copySign(DD)D

    move-result-wide p0

    .line 2594
    .end local p0    # "xa":D
    :cond_0
    :goto_0
    return-wide p0

    .line 2456
    .restart local p0    # "xa":D
    :cond_1
    const-wide/16 v50, 0x0

    cmpg-double v50, p0, v50

    if-gez v50, :cond_2

    .line 2458
    move-wide/from16 v0, p0

    neg-double v0, v0

    move-wide/from16 p0, v0

    .line 2459
    move-wide/from16 v0, p2

    neg-double v0, v0

    move-wide/from16 p2, v0

    .line 2460
    const/4 v15, 0x1

    .line 2465
    .local v15, "negate":Z
    :goto_1
    const-wide v50, 0x434d02967c31cdb5L    # 1.633123935319537E16

    cmpl-double v50, p0, v50

    if-lez v50, :cond_4

    .line 2466
    xor-int v50, v15, p4

    if-eqz v50, :cond_3

    const-wide v50, -0x4006de04abbbd2e8L    # -1.5707963267948966

    :goto_2
    move-wide/from16 p0, v50

    goto :goto_0

    .line 2462
    .end local v15    # "negate":Z
    :cond_2
    const/4 v15, 0x0

    .restart local v15    # "negate":Z
    goto :goto_1

    .line 2466
    :cond_3
    const-wide v50, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto :goto_2

    .line 2471
    :cond_4
    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    cmpg-double v50, p0, v50

    if-gez v50, :cond_7

    .line 2472
    const-wide v50, -0x400487ed5110b461L    # -1.7168146928204135

    mul-double v50, v50, p0

    mul-double v50, v50, p0

    const-wide/high16 v52, 0x4020000000000000L    # 8.0

    add-double v50, v50, v52

    mul-double v50, v50, p0

    const-wide/high16 v52, 0x3fe0000000000000L    # 0.5

    add-double v50, v50, v52

    move-wide/from16 v0, v50

    double-to-int v14, v0

    .line 2478
    .local v14, "idx":I
    :goto_3
    sget-object v50, Lorg/apache/commons/math3/util/FastMath;->TANGENT_TABLE_A:[D

    aget-wide v30, v50, v14

    .line 2479
    .local v30, "ttA":D
    sget-object v50, Lorg/apache/commons/math3/util/FastMath;->TANGENT_TABLE_B:[D

    aget-wide v32, v50, v14

    .line 2481
    .local v32, "ttB":D
    sub-double v8, p0, v30

    .line 2482
    .local v8, "epsA":D
    sub-double v50, v8, p0

    add-double v50, v50, v30

    move-wide/from16 v0, v50

    neg-double v12, v0

    .line 2483
    .local v12, "epsB":D
    sub-double v50, p2, v32

    add-double v12, v12, v50

    .line 2485
    add-double v26, v8, v12

    .line 2486
    .local v26, "temp":D
    sub-double v50, v26, v8

    sub-double v50, v50, v12

    move-wide/from16 v0, v50

    neg-double v12, v0

    .line 2487
    move-wide/from16 v8, v26

    .line 2490
    const-wide/high16 v50, 0x41d0000000000000L    # 1.073741824E9

    mul-double v26, p0, v50

    .line 2491
    add-double v50, p0, v26

    sub-double v34, v50, v26

    .line 2492
    .local v34, "ya":D
    add-double v50, p2, p0

    sub-double v40, v50, v34

    .line 2493
    .local v40, "yb":D
    move-wide/from16 p0, v34

    .line 2494
    add-double p2, p2, v40

    .line 2497
    if-nez v14, :cond_8

    .line 2500
    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v52, 0x3ff0000000000000L    # 1.0

    add-double v54, p0, p2

    add-double v56, v30, v32

    mul-double v54, v54, v56

    add-double v52, v52, v54

    div-double v4, v50, v52

    .line 2502
    .local v4, "denom":D
    mul-double v34, v8, v4

    .line 2503
    mul-double v40, v12, v4

    .line 2532
    .end local v4    # "denom":D
    :goto_4
    move-wide/from16 v8, v34

    .line 2533
    move-wide/from16 v12, v40

    .line 2536
    mul-double v10, v8, v8

    .line 2547
    .local v10, "epsA2":D
    const-wide v40, 0x3fb32d2f6f8219e7L    # 0.07490822288864472

    .line 2548
    mul-double v50, v40, v10

    const-wide v52, 0x3fb74435086a6a2fL    # 0.09088450866185192

    sub-double v40, v50, v52

    .line 2549
    mul-double v50, v40, v10

    const-wide v52, 0x3fbc71c490f31505L    # 0.11111095942313305

    add-double v40, v50, v52

    .line 2550
    mul-double v50, v40, v10

    const-wide v52, 0x3fc24924913c3052L    # 0.1428571423679182

    sub-double v40, v50, v52

    .line 2551
    mul-double v50, v40, v10

    const-wide v52, 0x3fc9999999992e0dL    # 0.19999999999923582

    add-double v40, v50, v52

    .line 2552
    mul-double v50, v40, v10

    const-wide v52, 0x3fd555555555554dL    # 0.33333333333333287

    sub-double v40, v50, v52

    .line 2553
    mul-double v50, v40, v10

    mul-double v40, v50, v8

    .line 2556
    move-wide/from16 v34, v8

    .line 2558
    add-double v26, v34, v40

    .line 2559
    sub-double v50, v26, v34

    sub-double v50, v50, v40

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v40, v0

    .line 2560
    move-wide/from16 v34, v26

    .line 2563
    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    mul-double v52, v8, v8

    add-double v50, v50, v52

    div-double v50, v12, v50

    add-double v40, v40, v50

    .line 2565
    sget-object v50, Lorg/apache/commons/math3/util/FastMath;->EIGHTHS:[D

    aget-wide v6, v50, v14

    .line 2568
    .local v6, "eighths":D
    add-double v42, v6, v34

    .line 2569
    .local v42, "za":D
    sub-double v50, v42, v6

    sub-double v50, v50, v34

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v48, v0

    .line 2570
    .local v48, "zb":D
    add-double v26, v42, v40

    .line 2571
    sub-double v50, v26, v42

    sub-double v50, v50, v40

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v50, v0

    add-double v48, v48, v50

    .line 2572
    move-wide/from16 v42, v26

    .line 2574
    add-double v22, v42, v48

    .line 2576
    .local v22, "result":D
    if-eqz p4, :cond_5

    .line 2578
    sub-double v50, v22, v42

    sub-double v50, v50, v48

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v24, v0

    .line 2579
    .local v24, "resultb":D
    const-wide v18, 0x400921fb54442d18L    # Math.PI

    .line 2580
    .local v18, "pia":D
    const-wide v20, 0x3ca1a62633145c07L    # 1.2246467991473532E-16

    .line 2582
    .local v20, "pib":D
    const-wide v50, 0x400921fb54442d18L    # Math.PI

    sub-double v42, v50, v22

    .line 2583
    const-wide v50, 0x400921fb54442d18L    # Math.PI

    sub-double v50, v42, v50

    add-double v50, v50, v22

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v48, v0

    .line 2584
    const-wide v50, 0x3ca1a62633145c07L    # 1.2246467991473532E-16

    sub-double v50, v50, v24

    add-double v48, v48, v50

    .line 2586
    add-double v22, v42, v48

    .line 2590
    .end local v18    # "pia":D
    .end local v20    # "pib":D
    .end local v24    # "resultb":D
    :cond_5
    xor-int v50, v15, p4

    if-eqz v50, :cond_6

    .line 2591
    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    :cond_6
    move-wide/from16 p0, v22

    .line 2594
    goto/16 :goto_0

    .line 2474
    .end local v6    # "eighths":D
    .end local v8    # "epsA":D
    .end local v10    # "epsA2":D
    .end local v12    # "epsB":D
    .end local v14    # "idx":I
    .end local v22    # "result":D
    .end local v26    # "temp":D
    .end local v30    # "ttA":D
    .end local v32    # "ttB":D
    .end local v34    # "ya":D
    .end local v40    # "yb":D
    .end local v42    # "za":D
    .end local v48    # "zb":D
    :cond_7
    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    div-double v16, v50, p0

    .line 2475
    .local v16, "oneOverXa":D
    const-wide v50, -0x400487ed5110b461L    # -1.7168146928204135

    mul-double v50, v50, v16

    mul-double v50, v50, v16

    const-wide/high16 v52, 0x4020000000000000L    # 8.0

    add-double v50, v50, v52

    mul-double v50, v50, v16

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v50, v0

    const-wide v52, 0x402a23d70a3d70a4L    # 13.07

    add-double v50, v50, v52

    move-wide/from16 v0, v50

    double-to-int v14, v0

    .restart local v14    # "idx":I
    goto/16 :goto_3

    .line 2505
    .end local v16    # "oneOverXa":D
    .restart local v8    # "epsA":D
    .restart local v12    # "epsB":D
    .restart local v26    # "temp":D
    .restart local v30    # "ttA":D
    .restart local v32    # "ttB":D
    .restart local v34    # "ya":D
    .restart local v40    # "yb":D
    :cond_8
    mul-double v28, p0, v30

    .line 2506
    .local v28, "temp2":D
    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    add-double v42, v50, v28

    .line 2507
    .restart local v42    # "za":D
    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    sub-double v50, v42, v50

    sub-double v50, v50, v28

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v48, v0

    .line 2508
    .restart local v48    # "zb":D
    mul-double v50, p2, v30

    mul-double v52, p0, v32

    add-double v28, v50, v52

    .line 2509
    add-double v26, v42, v28

    .line 2510
    sub-double v50, v26, v42

    sub-double v50, v50, v28

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v50, v0

    add-double v48, v48, v50

    .line 2511
    move-wide/from16 v42, v26

    .line 2513
    mul-double v50, p2, v32

    add-double v48, v48, v50

    .line 2514
    div-double v34, v8, v42

    .line 2516
    const-wide/high16 v50, 0x41d0000000000000L    # 1.073741824E9

    mul-double v26, v34, v50

    .line 2517
    add-double v50, v34, v26

    sub-double v36, v50, v26

    .line 2518
    .local v36, "yaa":D
    sub-double v38, v34, v36

    .line 2520
    .local v38, "yab":D
    const-wide/high16 v50, 0x41d0000000000000L    # 1.073741824E9

    mul-double v26, v42, v50

    .line 2521
    add-double v50, v42, v26

    sub-double v44, v50, v26

    .line 2522
    .local v44, "zaa":D
    sub-double v46, v42, v44

    .line 2525
    .local v46, "zab":D
    mul-double v50, v36, v44

    sub-double v50, v8, v50

    mul-double v52, v36, v46

    sub-double v50, v50, v52

    mul-double v52, v38, v44

    sub-double v50, v50, v52

    mul-double v52, v38, v46

    sub-double v50, v50, v52

    div-double v40, v50, v42

    .line 2527
    neg-double v0, v8

    move-wide/from16 v50, v0

    mul-double v50, v50, v48

    div-double v50, v50, v42

    div-double v50, v50, v42

    add-double v40, v40, v50

    .line 2528
    div-double v50, v12, v42

    add-double v40, v40, v50

    goto/16 :goto_4
.end method

.method public static atan2(DD)D
    .locals 26
    .param p0, "y"    # D
    .param p2, "x"    # D

    .prologue
    .line 2604
    cmpl-double v22, p2, p2

    if-nez v22, :cond_0

    cmpl-double v22, p0, p0

    if-eqz v22, :cond_2

    .line 2605
    :cond_0
    const-wide/high16 v14, 0x7ff8000000000000L    # NaN

    .line 2717
    :cond_1
    :goto_0
    return-wide v14

    .line 2608
    :cond_2
    const-wide/16 v22, 0x0

    cmpl-double v22, p0, v22

    if-nez v22, :cond_8

    .line 2609
    mul-double v14, p2, p0

    .line 2610
    .local v14, "result":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    div-double v4, v22, p2

    .line 2611
    .local v4, "invx":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    div-double v6, v22, p0

    .line 2613
    .local v6, "invy":D
    const-wide/16 v22, 0x0

    cmpl-double v22, v4, v22

    if-nez v22, :cond_4

    .line 2614
    const-wide/16 v22, 0x0

    cmpl-double v22, p2, v22

    if-lez v22, :cond_3

    move-wide/from16 v14, p0

    .line 2615
    goto :goto_0

    .line 2617
    :cond_3
    const-wide v22, 0x400921fb54442d18L    # Math.PI

    move-wide/from16 v0, v22

    move-wide/from16 v2, p0

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->copySign(DD)D

    move-result-wide v14

    goto :goto_0

    .line 2621
    :cond_4
    const-wide/16 v22, 0x0

    cmpg-double v22, p2, v22

    if-ltz v22, :cond_5

    const-wide/16 v22, 0x0

    cmpg-double v22, v4, v22

    if-gez v22, :cond_1

    .line 2622
    :cond_5
    const-wide/16 v22, 0x0

    cmpg-double v22, p0, v22

    if-ltz v22, :cond_6

    const-wide/16 v22, 0x0

    cmpg-double v22, v6, v22

    if-gez v22, :cond_7

    .line 2623
    :cond_6
    const-wide v14, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    goto :goto_0

    .line 2625
    :cond_7
    const-wide v14, 0x400921fb54442d18L    # Math.PI

    goto :goto_0

    .line 2634
    .end local v4    # "invx":D
    .end local v6    # "invy":D
    .end local v14    # "result":D
    :cond_8
    const-wide/high16 v22, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v22, p0, v22

    if-nez v22, :cond_b

    .line 2635
    const-wide/high16 v22, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v22, p2, v22

    if-nez v22, :cond_9

    .line 2636
    const-wide v14, 0x3fe921fb54442d18L    # 0.7853981633974483

    goto :goto_0

    .line 2639
    :cond_9
    const-wide/high16 v22, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v22, p2, v22

    if-nez v22, :cond_a

    .line 2640
    const-wide v14, 0x4002d97c7f3321d2L    # 2.356194490192345

    goto :goto_0

    .line 2643
    :cond_a
    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto :goto_0

    .line 2646
    :cond_b
    const-wide/high16 v22, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v22, p0, v22

    if-nez v22, :cond_e

    .line 2647
    const-wide/high16 v22, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v22, p2, v22

    if-nez v22, :cond_c

    .line 2648
    const-wide v14, -0x4016de04abbbd2e8L    # -0.7853981633974483

    goto/16 :goto_0

    .line 2651
    :cond_c
    const-wide/high16 v22, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v22, p2, v22

    if-nez v22, :cond_d

    .line 2652
    const-wide v14, -0x3ffd268380ccde2eL    # -2.356194490192345

    goto/16 :goto_0

    .line 2655
    :cond_d
    const-wide v14, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto/16 :goto_0

    .line 2658
    :cond_e
    const-wide/high16 v22, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v22, p2, v22

    if-nez v22, :cond_12

    .line 2659
    const-wide/16 v22, 0x0

    cmpl-double v22, p0, v22

    if-gtz v22, :cond_f

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    div-double v22, v22, p0

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-lez v22, :cond_10

    .line 2660
    :cond_f
    const-wide/16 v14, 0x0

    goto/16 :goto_0

    .line 2663
    :cond_10
    const-wide/16 v22, 0x0

    cmpg-double v22, p0, v22

    if-ltz v22, :cond_11

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    div-double v22, v22, p0

    const-wide/16 v24, 0x0

    cmpg-double v22, v22, v24

    if-gez v22, :cond_12

    .line 2664
    :cond_11
    const-wide/high16 v14, -0x8000000000000000L

    goto/16 :goto_0

    .line 2668
    :cond_12
    const-wide/high16 v22, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v22, p2, v22

    if-nez v22, :cond_16

    .line 2670
    const-wide/16 v22, 0x0

    cmpl-double v22, p0, v22

    if-gtz v22, :cond_13

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    div-double v22, v22, p0

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-lez v22, :cond_14

    .line 2671
    :cond_13
    const-wide v14, 0x400921fb54442d18L    # Math.PI

    goto/16 :goto_0

    .line 2674
    :cond_14
    const-wide/16 v22, 0x0

    cmpg-double v22, p0, v22

    if-ltz v22, :cond_15

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    div-double v22, v22, p0

    const-wide/16 v24, 0x0

    cmpg-double v22, v22, v24

    if-gez v22, :cond_16

    .line 2675
    :cond_15
    const-wide v14, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    goto/16 :goto_0

    .line 2681
    :cond_16
    const-wide/16 v22, 0x0

    cmpl-double v22, p2, v22

    if-nez v22, :cond_1a

    .line 2682
    const-wide/16 v22, 0x0

    cmpl-double v22, p0, v22

    if-gtz v22, :cond_17

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    div-double v22, v22, p0

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-lez v22, :cond_18

    .line 2683
    :cond_17
    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto/16 :goto_0

    .line 2686
    :cond_18
    const-wide/16 v22, 0x0

    cmpg-double v22, p0, v22

    if-ltz v22, :cond_19

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    div-double v22, v22, p0

    const-wide/16 v24, 0x0

    cmpg-double v22, v22, v24

    if-gez v22, :cond_1a

    .line 2687
    :cond_19
    const-wide v14, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto/16 :goto_0

    .line 2692
    :cond_1a
    div-double v8, p0, p2

    .line 2693
    .local v8, "r":D
    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 2694
    const-wide/16 v24, 0x0

    const-wide/16 v22, 0x0

    cmpg-double v22, p2, v22

    if-gez v22, :cond_1b

    const/16 v22, 0x1

    :goto_1
    move-wide/from16 v0, v24

    move/from16 v2, v22

    invoke-static {v8, v9, v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->atan(DDZ)D

    move-result-wide v14

    goto/16 :goto_0

    :cond_1b
    const/16 v22, 0x0

    goto :goto_1

    .line 2697
    :cond_1c
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->doubleHighPart(D)D

    move-result-wide v10

    .line 2698
    .local v10, "ra":D
    sub-double v12, v8, v10

    .line 2701
    .local v12, "rb":D
    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/util/FastMath;->doubleHighPart(D)D

    move-result-wide v18

    .line 2702
    .local v18, "xa":D
    sub-double v20, p2, v18

    .line 2704
    .local v20, "xb":D
    mul-double v22, v10, v18

    sub-double v22, p0, v22

    mul-double v24, v10, v20

    sub-double v22, v22, v24

    mul-double v24, v12, v18

    sub-double v22, v22, v24

    mul-double v24, v12, v20

    sub-double v22, v22, v24

    div-double v22, v22, p2

    add-double v12, v12, v22

    .line 2706
    add-double v16, v10, v12

    .line 2707
    .local v16, "temp":D
    sub-double v22, v16, v10

    sub-double v22, v22, v12

    move-wide/from16 v0, v22

    neg-double v12, v0

    .line 2708
    move-wide/from16 v10, v16

    .line 2710
    const-wide/16 v22, 0x0

    cmpl-double v22, v10, v22

    if-nez v22, :cond_1d

    .line 2711
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-wide/from16 v2, p0

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->copySign(DD)D

    move-result-wide v10

    .line 2715
    :cond_1d
    const-wide/16 v22, 0x0

    cmpg-double v22, p2, v22

    if-gez v22, :cond_1e

    const/16 v22, 0x1

    :goto_2
    move/from16 v0, v22

    invoke-static {v10, v11, v12, v13, v0}, Lorg/apache/commons/math3/util/FastMath;->atan(DDZ)D

    move-result-wide v14

    .line 2717
    .restart local v14    # "result":D
    goto/16 :goto_0

    .line 2715
    .end local v14    # "result":D
    :cond_1e
    const/16 v22, 0x0

    goto :goto_2
.end method

.method public static atanh(D)D
    .locals 26
    .param p0, "a"    # D

    .prologue
    .line 751
    const/4 v6, 0x0

    .line 752
    .local v6, "negative":Z
    const-wide/16 v8, 0x0

    cmpg-double v7, p0, v8

    if-gez v7, :cond_0

    .line 753
    const/4 v6, 0x1

    .line 754
    move-wide/from16 v0, p0

    neg-double v0, v0

    move-wide/from16 p0, v0

    .line 758
    :cond_0
    const-wide v8, 0x3fc3333333333333L    # 0.15

    cmpl-double v7, p0, v8

    if-lez v7, :cond_2

    .line 759
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double v10, v10, p0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v12, v12, p0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v10

    mul-double v4, v8, v10

    .line 773
    .local v4, "absAtanh":D
    :goto_0
    if-eqz v6, :cond_1

    neg-double v4, v4

    .end local v4    # "absAtanh":D
    :cond_1
    return-wide v4

    .line 761
    :cond_2
    mul-double v2, p0, p0

    .line 762
    .local v2, "a2":D
    const-wide v8, 0x3fb645a1cac08312L    # 0.087

    cmpl-double v7, p0, v8

    if-lez v7, :cond_3

    .line 763
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v10, 0x3fd5555555555555L    # 0.3333333333333333

    const-wide v12, 0x3fc999999999999aL    # 0.2

    const-wide v14, 0x3fc2492492492492L    # 0.14285714285714285

    const-wide v16, 0x3fbc71c71c71c71cL    # 0.1111111111111111

    const-wide v18, 0x3fb745d1745d1746L    # 0.09090909090909091

    const-wide v20, 0x3fb3b13b13b13b14L    # 0.07692307692307693

    const-wide v22, 0x3fb1111111111111L    # 0.06666666666666667

    const-wide v24, 0x3fae1e1e1e1e1e1eL    # 0.058823529411764705

    mul-double v24, v24, v2

    add-double v22, v22, v24

    mul-double v22, v22, v2

    add-double v20, v20, v22

    mul-double v20, v20, v2

    add-double v18, v18, v20

    mul-double v18, v18, v2

    add-double v16, v16, v18

    mul-double v16, v16, v2

    add-double v14, v14, v16

    mul-double/2addr v14, v2

    add-double/2addr v12, v14

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    mul-double v4, p0, v8

    .restart local v4    # "absAtanh":D
    goto :goto_0

    .line 764
    .end local v4    # "absAtanh":D
    :cond_3
    const-wide v8, 0x3f9fbe76c8b43958L    # 0.031

    cmpl-double v7, p0, v8

    if-lez v7, :cond_4

    .line 765
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v10, 0x3fd5555555555555L    # 0.3333333333333333

    const-wide v12, 0x3fc999999999999aL    # 0.2

    const-wide v14, 0x3fc2492492492492L    # 0.14285714285714285

    const-wide v16, 0x3fbc71c71c71c71cL    # 0.1111111111111111

    const-wide v18, 0x3fb745d1745d1746L    # 0.09090909090909091

    const-wide v20, 0x3fb3b13b13b13b14L    # 0.07692307692307693

    mul-double v20, v20, v2

    add-double v18, v18, v20

    mul-double v18, v18, v2

    add-double v16, v16, v18

    mul-double v16, v16, v2

    add-double v14, v14, v16

    mul-double/2addr v14, v2

    add-double/2addr v12, v14

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    mul-double v4, p0, v8

    .restart local v4    # "absAtanh":D
    goto/16 :goto_0

    .line 766
    .end local v4    # "absAtanh":D
    :cond_4
    const-wide v8, 0x3f689374bc6a7efaL    # 0.003

    cmpl-double v7, p0, v8

    if-lez v7, :cond_5

    .line 767
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v10, 0x3fd5555555555555L    # 0.3333333333333333

    const-wide v12, 0x3fc999999999999aL    # 0.2

    const-wide v14, 0x3fc2492492492492L    # 0.14285714285714285

    const-wide v16, 0x3fbc71c71c71c71cL    # 0.1111111111111111

    mul-double v16, v16, v2

    add-double v14, v14, v16

    mul-double/2addr v14, v2

    add-double/2addr v12, v14

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    mul-double v4, p0, v8

    .restart local v4    # "absAtanh":D
    goto/16 :goto_0

    .line 769
    .end local v4    # "absAtanh":D
    :cond_5
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v10, 0x3fd5555555555555L    # 0.3333333333333333

    const-wide v12, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    mul-double v4, p0, v8

    .restart local v4    # "absAtanh":D
    goto/16 :goto_0
.end method

.method public static cbrt(D)D
    .locals 36
    .param p0, "x"    # D

    .prologue
    .line 2884
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    .line 2885
    .local v6, "inbits":J
    const/16 v17, 0x34

    shr-long v32, v6, v17

    const-wide/16 v34, 0x7ff

    and-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    add-int/lit16 v5, v0, -0x3ff

    .line 2886
    .local v5, "exponent":I
    const/16 v16, 0x0

    .line 2888
    .local v16, "subnormal":Z
    const/16 v17, -0x3ff

    move/from16 v0, v17

    if-ne v5, v0, :cond_2

    .line 2889
    const-wide/16 v32, 0x0

    cmpl-double v17, p0, v32

    if-nez v17, :cond_1

    .line 2959
    .end local p0    # "x":D
    :cond_0
    :goto_0
    return-wide p0

    .line 2894
    .restart local p0    # "x":D
    :cond_1
    const/16 v16, 0x1

    .line 2895
    const-wide/high16 v32, 0x4350000000000000L    # 1.8014398509481984E16

    mul-double p0, p0, v32

    .line 2896
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    .line 2897
    const/16 v17, 0x34

    shr-long v32, v6, v17

    const-wide/16 v34, 0x7ff

    and-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    add-int/lit16 v5, v0, -0x3ff

    .line 2900
    :cond_2
    const/16 v17, 0x400

    move/from16 v0, v17

    if-eq v5, v0, :cond_0

    .line 2906
    div-int/lit8 v4, v5, 0x3

    .line 2909
    .local v4, "exp3":I
    const-wide/high16 v32, -0x8000000000000000L

    and-long v32, v32, v6

    add-int/lit16 v0, v4, 0x3ff

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x7ff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const/16 v17, 0x34

    shl-long v34, v34, v17

    or-long v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    .line 2913
    .local v14, "p2":D
    const-wide v32, 0xfffffffffffffL

    and-long v32, v32, v6

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    or-long v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 2916
    .local v8, "mant":D
    const-wide v2, -0x407a0e6a8db69e58L    # -0.010714690733195933

    .line 2917
    .local v2, "est":D
    mul-double v32, v2, v8

    const-wide v34, 0x3fb66c0dc5466945L    # 0.0875862700108075

    add-double v2, v32, v34

    .line 2918
    mul-double v32, v2, v8

    const-wide v34, -0x402c6dbf3a3bd7a4L    # -0.3058015757857271

    add-double v2, v32, v34

    .line 2919
    mul-double v32, v2, v8

    const-wide v34, 0x3fe733323180162bL    # 0.7249995199969751

    add-double v2, v32, v34

    .line 2920
    mul-double v32, v2, v8

    const-wide v34, 0x3fe01ff6c0b8a77fL    # 0.5039018405998233

    add-double v2, v32, v34

    .line 2922
    sget-object v17, Lorg/apache/commons/math3/util/FastMath;->CBRTTWO:[D

    rem-int/lit8 v32, v5, 0x3

    add-int/lit8 v32, v32, 0x2

    aget-wide v32, v17, v32

    mul-double v2, v2, v32

    .line 2927
    mul-double v32, v14, v14

    mul-double v32, v32, v14

    div-double v22, p0, v32

    .line 2928
    .local v22, "xs":D
    mul-double v32, v2, v2

    mul-double v32, v32, v2

    sub-double v32, v22, v32

    const-wide/high16 v34, 0x4008000000000000L    # 3.0

    mul-double v34, v34, v2

    mul-double v34, v34, v2

    div-double v32, v32, v34

    add-double v2, v2, v32

    .line 2929
    mul-double v32, v2, v2

    mul-double v32, v32, v2

    sub-double v32, v22, v32

    const-wide/high16 v34, 0x4008000000000000L    # 3.0

    mul-double v34, v34, v2

    mul-double v34, v34, v2

    div-double v32, v32, v34

    add-double v2, v2, v32

    .line 2932
    const-wide/high16 v32, 0x41d0000000000000L    # 1.073741824E9

    mul-double v18, v2, v32

    .line 2933
    .local v18, "temp":D
    add-double v32, v2, v18

    sub-double v24, v32, v18

    .line 2934
    .local v24, "ya":D
    sub-double v26, v2, v24

    .line 2936
    .local v26, "yb":D
    mul-double v28, v24, v24

    .line 2937
    .local v28, "za":D
    mul-double v32, v24, v26

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    mul-double v32, v32, v34

    mul-double v34, v26, v26

    add-double v30, v32, v34

    .line 2938
    .local v30, "zb":D
    const-wide/high16 v32, 0x41d0000000000000L    # 1.073741824E9

    mul-double v18, v28, v32

    .line 2939
    add-double v32, v28, v18

    sub-double v20, v32, v18

    .line 2940
    .local v20, "temp2":D
    sub-double v32, v28, v20

    add-double v30, v30, v32

    .line 2941
    move-wide/from16 v28, v20

    .line 2943
    mul-double v32, v28, v26

    mul-double v34, v24, v30

    add-double v32, v32, v34

    mul-double v34, v30, v26

    add-double v30, v32, v34

    .line 2944
    mul-double v28, v28, v24

    .line 2946
    sub-double v10, v22, v28

    .line 2947
    .local v10, "na":D
    sub-double v32, v10, v22

    add-double v32, v32, v28

    move-wide/from16 v0, v32

    neg-double v12, v0

    .line 2948
    .local v12, "nb":D
    sub-double v12, v12, v30

    .line 2950
    add-double v32, v10, v12

    const-wide/high16 v34, 0x4008000000000000L    # 3.0

    mul-double v34, v34, v2

    mul-double v34, v34, v2

    div-double v32, v32, v34

    add-double v2, v2, v32

    .line 2953
    mul-double/2addr v2, v14

    .line 2955
    if-eqz v16, :cond_3

    .line 2956
    const-wide/high16 v32, 0x3ed0000000000000L    # 3.814697265625E-6

    mul-double v2, v2, v32

    :cond_3
    move-wide/from16 p0, v2

    .line 2959
    goto/16 :goto_0
.end method

.method public static ceil(D)D
    .locals 4
    .param p0, "x"    # D

    .prologue
    .line 3388
    cmpl-double v2, p0, p0

    if-eqz v2, :cond_1

    move-wide v0, p0

    .line 3403
    :cond_0
    :goto_0
    return-wide v0

    .line 3392
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    .line 3393
    .local v0, "y":D
    cmpl-double v2, v0, p0

    if-eqz v2, :cond_0

    .line 3397
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    .line 3399
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .line 3400
    mul-double/2addr v0, p0

    goto :goto_0
.end method

.method public static copySign(DD)D
    .locals 8
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D

    .prologue
    .line 3980
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 3981
    .local v0, "m":J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 3982
    .local v2, "s":J
    xor-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 3985
    .end local p0    # "magnitude":D
    :goto_0
    return-wide p0

    .restart local p0    # "magnitude":D
    :cond_0
    neg-double p0, p0

    goto :goto_0
.end method

.method public static copySign(FF)F
    .locals 3
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F

    .prologue
    .line 4001
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 4002
    .local v0, "m":I
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 4003
    .local v1, "s":I
    xor-int v2, v0, v1

    if-ltz v2, :cond_0

    .line 4006
    .end local p0    # "magnitude":F
    :goto_0
    return p0

    .restart local p0    # "magnitude":F
    :cond_0
    neg-float p0, p0

    goto :goto_0
.end method

.method public static cos(D)D
    .locals 12
    .param p0, "x"    # D

    .prologue
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    .line 2311
    const/4 v1, 0x0

    .line 2314
    .local v1, "quadrant":I
    move-wide v4, p0

    .line 2315
    .local v4, "xa":D
    const-wide/16 v10, 0x0

    cmpg-double v3, p0, v10

    if-gez v3, :cond_0

    .line 2316
    neg-double v4, v4

    .line 2319
    :cond_0
    cmpl-double v3, v4, v4

    if-nez v3, :cond_1

    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v3, v4, v10

    if-nez v3, :cond_2

    .line 2354
    :cond_1
    :goto_0
    return-wide v8

    .line 2324
    :cond_2
    const-wide/16 v6, 0x0

    .line 2325
    .local v6, "xb":D
    const-wide v10, 0x414921fb00000000L    # 3294198.0

    cmpl-double v3, v4, v10

    if-lez v3, :cond_4

    .line 2329
    const/4 v3, 0x3

    new-array v2, v3, [D

    .line 2330
    .local v2, "reduceResults":[D
    invoke-static {v4, v5, v2}, Lorg/apache/commons/math3/util/FastMath;->reducePayneHanek(D[D)V

    .line 2331
    const/4 v3, 0x0

    aget-wide v10, v2, v3

    double-to-int v3, v10

    and-int/lit8 v1, v3, 0x3

    .line 2332
    const/4 v3, 0x1

    aget-wide v4, v2, v3

    .line 2333
    const/4 v3, 0x2

    aget-wide v6, v2, v3

    .line 2344
    .end local v2    # "reduceResults":[D
    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2346
    :pswitch_0
    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->cosQ(DD)D

    move-result-wide v8

    goto :goto_0

    .line 2334
    :cond_4
    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v3, v4, v10

    if-lez v3, :cond_3

    .line 2335
    new-instance v0, Lorg/apache/commons/math3/util/FastMath$CodyWaite;

    invoke-direct {v0, v4, v5}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;-><init>(D)V

    .line 2336
    .local v0, "cw":Lorg/apache/commons/math3/util/FastMath$CodyWaite;
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->getK()I

    move-result v3

    and-int/lit8 v1, v3, 0x3

    .line 2337
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->getRemA()D

    move-result-wide v4

    .line 2338
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->getRemB()D

    move-result-wide v6

    goto :goto_1

    .line 2348
    .end local v0    # "cw":Lorg/apache/commons/math3/util/FastMath$CodyWaite;
    :pswitch_1
    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sinQ(DD)D

    move-result-wide v8

    neg-double v8, v8

    goto :goto_0

    .line 2350
    :pswitch_2
    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->cosQ(DD)D

    move-result-wide v8

    neg-double v8, v8

    goto :goto_0

    .line 2352
    :pswitch_3
    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sinQ(DD)D

    move-result-wide v8

    goto :goto_0

    .line 2344
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static cosQ(DD)D
    .locals 10
    .param p0, "xa"    # D
    .param p2, "xb"    # D

    .prologue
    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 1859
    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 1860
    .local v4, "pi2a":D
    const-wide v6, 0x3c91a62633145c07L    # 6.123233995736766E-17

    .line 1862
    .local v6, "pi2b":D
    sub-double v0, v8, p0

    .line 1863
    .local v0, "a":D
    sub-double v8, v0, v8

    add-double/2addr v8, p0

    neg-double v2, v8

    .line 1864
    .local v2, "b":D
    const-wide v8, 0x3c91a62633145c07L    # 6.123233995736766E-17

    sub-double/2addr v8, p2

    add-double/2addr v2, v8

    .line 1866
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sinQ(DD)D

    move-result-wide v8

    return-wide v8
.end method

.method public static cosh(D)D
    .locals 30
    .param p0, "x"    # D

    .prologue
    .line 395
    cmpl-double v5, p0, p0

    if-eqz v5, :cond_0

    .line 456
    .end local p0    # "x":D
    .local v4, "hiPrec":[D
    .local v6, "recip":D
    .local v8, "recipa":D
    .local v10, "recipb":D
    .local v12, "result":D
    .local v16, "temp":D
    .local v18, "ya":D
    .local v20, "yaa":D
    .local v22, "yab":D
    .local v24, "yb":D
    :goto_0
    return-wide p0

    .line 404
    .end local v4    # "hiPrec":[D
    .end local v6    # "recip":D
    .end local v8    # "recipa":D
    .end local v10    # "recipb":D
    .end local v12    # "result":D
    .end local v16    # "temp":D
    .end local v18    # "ya":D
    .end local v20    # "yaa":D
    .end local v22    # "yab":D
    .end local v24    # "yb":D
    .restart local p0    # "x":D
    :cond_0
    const-wide/high16 v26, 0x4034000000000000L    # 20.0

    cmpl-double v5, p0, v26

    if-lez v5, :cond_2

    .line 405
    sget-wide v26, Lorg/apache/commons/math3/util/FastMath;->LOG_MAX_VALUE:D

    cmpl-double v5, p0, v26

    if-ltz v5, :cond_1

    .line 407
    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    mul-double v26, v26, p0

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v14

    .line 408
    .local v14, "t":D
    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    mul-double v26, v26, v14

    mul-double p0, v26, v14

    goto :goto_0

    .line 410
    .end local v14    # "t":D
    :cond_1
    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v28

    mul-double p0, v26, v28

    goto :goto_0

    .line 412
    :cond_2
    const-wide/high16 v26, -0x3fcc000000000000L    # -20.0

    cmpg-double v5, p0, v26

    if-gez v5, :cond_4

    .line 413
    sget-wide v26, Lorg/apache/commons/math3/util/FastMath;->LOG_MAX_VALUE:D

    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v26, v0

    cmpg-double v5, p0, v26

    if-gtz v5, :cond_3

    .line 415
    const-wide/high16 v26, -0x4020000000000000L    # -0.5

    mul-double v26, v26, p0

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v14

    .line 416
    .restart local v14    # "t":D
    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    mul-double v26, v26, v14

    mul-double p0, v26, v14

    goto :goto_0

    .line 418
    .end local v14    # "t":D
    :cond_3
    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    move-wide/from16 v0, p0

    neg-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v28

    mul-double p0, v26, v28

    goto :goto_0

    .line 422
    :cond_4
    const/4 v5, 0x2

    new-array v4, v5, [D

    .line 423
    .restart local v4    # "hiPrec":[D
    const-wide/16 v26, 0x0

    cmpg-double v5, p0, v26

    if-gez v5, :cond_5

    .line 424
    move-wide/from16 v0, p0

    neg-double v0, v0

    move-wide/from16 p0, v0

    .line 426
    :cond_5
    const-wide/16 v26, 0x0

    move-wide/from16 v0, p0

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->exp(DD[D)D

    .line 428
    const/4 v5, 0x0

    aget-wide v26, v4, v5

    const/4 v5, 0x1

    aget-wide v28, v4, v5

    add-double v18, v26, v28

    .line 429
    .restart local v18    # "ya":D
    const/4 v5, 0x0

    aget-wide v26, v4, v5

    sub-double v26, v18, v26

    const/4 v5, 0x1

    aget-wide v28, v4, v5

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v24, v0

    .line 431
    .restart local v24    # "yb":D
    const-wide/high16 v26, 0x41d0000000000000L    # 1.073741824E9

    mul-double v16, v18, v26

    .line 432
    .restart local v16    # "temp":D
    add-double v26, v18, v16

    sub-double v20, v26, v16

    .line 433
    .restart local v20    # "yaa":D
    sub-double v22, v18, v20

    .line 436
    .restart local v22    # "yab":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    div-double v6, v26, v18

    .line 437
    .restart local v6    # "recip":D
    const-wide/high16 v26, 0x41d0000000000000L    # 1.073741824E9

    mul-double v16, v6, v26

    .line 438
    add-double v26, v6, v16

    sub-double v8, v26, v16

    .line 439
    .restart local v8    # "recipa":D
    sub-double v10, v6, v8

    .line 442
    .restart local v10    # "recipb":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    mul-double v28, v20, v8

    sub-double v26, v26, v28

    mul-double v28, v20, v10

    sub-double v26, v26, v28

    mul-double v28, v22, v8

    sub-double v26, v26, v28

    mul-double v28, v22, v10

    sub-double v26, v26, v28

    mul-double v26, v26, v6

    add-double v10, v10, v26

    .line 444
    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v6

    mul-double v26, v26, v6

    add-double v10, v10, v26

    .line 447
    add-double v16, v18, v8

    .line 448
    sub-double v26, v16, v18

    sub-double v26, v26, v8

    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    .line 449
    move-wide/from16 v18, v16

    .line 450
    add-double v16, v18, v10

    .line 451
    sub-double v26, v16, v18

    sub-double v26, v26, v10

    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    .line 452
    move-wide/from16 v18, v16

    .line 454
    add-double v12, v18, v24

    .line 455
    .restart local v12    # "result":D
    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    mul-double v12, v12, v26

    move-wide/from16 p0, v12

    .line 456
    goto/16 :goto_0
.end method

.method public static decrementExact(I)I
    .locals 6
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 3707
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    .line 3708
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_SUBTRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 3711
    :cond_0
    add-int/lit8 v0, p0, -0x1

    return v0
.end method

.method public static decrementExact(J)J
    .locals 6
    .param p0, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 3723
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 3724
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_SUBTRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 3727
    :cond_0
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    return-wide v0
.end method

.method private static doubleHighPart(D)D
    .locals 4
    .param p0, "d"    # D

    .prologue
    .line 373
    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    neg-double v2, v2

    cmpl-double v2, p0, v2

    if-lez v2, :cond_0

    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    .line 378
    .end local p0    # "d":D
    :goto_0
    return-wide p0

    .line 376
    .restart local p0    # "d":D
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 377
    .local v0, "xl":J
    const-wide/32 v2, -0x40000000

    and-long/2addr v0, v2

    .line 378
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    goto :goto_0
.end method

.method public static exp(D)D
    .locals 4
    .param p0, "x"    # D

    .prologue
    .line 857
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->exp(DD[D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static exp(DD[D)D
    .locals 34
    .param p0, "x"    # D
    .param p2, "extra"    # D
    .param p4, "hiPrec"    # [D

    .prologue
    .line 870
    move-wide/from16 v0, p0

    double-to-int v13, v0

    .line 876
    .local v13, "intVal":I
    const-wide/16 v28, 0x0

    cmpg-double v28, p0, v28

    if-gez v28, :cond_6

    .line 880
    const-wide v28, -0x3f78b00000000000L    # -746.0

    cmpg-double v28, p0, v28

    if-gez v28, :cond_2

    .line 881
    if-eqz p4, :cond_0

    .line 882
    const/16 v28, 0x0

    const-wide/16 v30, 0x0

    aput-wide v30, p4, v28

    .line 883
    const/16 v28, 0x1

    const-wide/16 v30, 0x0

    aput-wide v30, p4, v28

    .line 885
    :cond_0
    const-wide/16 v18, 0x0

    .line 977
    :cond_1
    :goto_0
    return-wide v18

    .line 888
    :cond_2
    const/16 v28, -0x2c5

    move/from16 v0, v28

    if-ge v13, v0, :cond_3

    .line 890
    const-wide v28, 0x4044188000000000L    # 40.19140625

    add-double v28, v28, p0

    move-wide/from16 v0, v28

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->exp(DD[D)D

    move-result-wide v28

    const-wide v30, 0x438fa553a68e6b40L    # 2.85040095144011776E17

    div-double v18, v28, v30

    .line 891
    .local v18, "result":D
    if-eqz p4, :cond_1

    .line 892
    const/16 v28, 0x0

    aget-wide v30, p4, v28

    const-wide v32, 0x438fa553a68e6b40L    # 2.85040095144011776E17

    div-double v30, v30, v32

    aput-wide v30, p4, v28

    .line 893
    const/16 v28, 0x1

    aget-wide v30, p4, v28

    const-wide v32, 0x438fa553a68e6b40L    # 2.85040095144011776E17

    div-double v30, v30, v32

    aput-wide v30, p4, v28

    goto :goto_0

    .line 898
    .end local v18    # "result":D
    :cond_3
    const/16 v28, -0x2c5

    move/from16 v0, v28

    if-ne v13, v0, :cond_4

    .line 900
    const-wide v28, 0x3ff7e80000000000L    # 1.494140625

    add-double v28, v28, p0

    move-wide/from16 v0, v28

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->exp(DD[D)D

    move-result-wide v28

    const-wide v30, 0x4011d270274c83abL    # 4.455505956692757

    div-double v18, v28, v30

    .line 901
    .restart local v18    # "result":D
    if-eqz p4, :cond_1

    .line 902
    const/16 v28, 0x0

    aget-wide v30, p4, v28

    const-wide v32, 0x4011d270274c83abL    # 4.455505956692757

    div-double v30, v30, v32

    aput-wide v30, p4, v28

    .line 903
    const/16 v28, 0x1

    aget-wide v30, p4, v28

    const-wide v32, 0x4011d270274c83abL    # 4.455505956692757

    div-double v30, v30, v32

    aput-wide v30, p4, v28

    goto :goto_0

    .line 908
    .end local v18    # "result":D
    :cond_4
    add-int/lit8 v13, v13, -0x1

    .line 921
    :cond_5
    # getter for: Lorg/apache/commons/math3/util/FastMath$ExpIntTable;->EXP_INT_TABLE_A:[D
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$ExpIntTable;->access$000()[D

    move-result-object v28

    add-int/lit16 v0, v13, 0x2ee

    move/from16 v29, v0

    aget-wide v14, v28, v29

    .line 922
    .local v14, "intPartA":D
    # getter for: Lorg/apache/commons/math3/util/FastMath$ExpIntTable;->EXP_INT_TABLE_B:[D
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$ExpIntTable;->access$100()[D

    move-result-object v28

    add-int/lit16 v0, v13, 0x2ee

    move/from16 v29, v0

    aget-wide v16, v28, v29

    .line 928
    .local v16, "intPartB":D
    int-to-double v0, v13

    move-wide/from16 v28, v0

    sub-double v28, p0, v28

    const-wide/high16 v30, 0x4090000000000000L    # 1024.0

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v12, v0

    .line 929
    .local v12, "intFrac":I
    # getter for: Lorg/apache/commons/math3/util/FastMath$ExpFracTable;->EXP_FRAC_TABLE_A:[D
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$ExpFracTable;->access$200()[D

    move-result-object v28

    aget-wide v8, v28, v12

    .line 930
    .local v8, "fracPartA":D
    # getter for: Lorg/apache/commons/math3/util/FastMath$ExpFracTable;->EXP_FRAC_TABLE_B:[D
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$ExpFracTable;->access$300()[D

    move-result-object v28

    aget-wide v10, v28, v12

    .line 936
    .local v10, "fracPartB":D
    int-to-double v0, v13

    move-wide/from16 v28, v0

    int-to-double v0, v12

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4090000000000000L    # 1024.0

    div-double v30, v30, v32

    add-double v28, v28, v30

    sub-double v6, p0, v28

    .line 945
    .local v6, "epsilon":D
    const-wide v26, 0x3fa5580030b20837L    # 0.04168701738764507

    .line 946
    .local v26, "z":D
    mul-double v28, v26, v6

    const-wide v30, 0x3fc55555329ee223L    # 0.1666666505023083

    add-double v26, v28, v30

    .line 947
    mul-double v28, v26, v6

    const-wide v30, 0x3fe0000000009631L    # 0.5000000000042687

    add-double v26, v28, v30

    .line 948
    mul-double v28, v26, v6

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    add-double v26, v28, v30

    .line 949
    mul-double v28, v26, v6

    const-wide v30, -0x4418bd44dd9ed4efL    # -3.940510424527919E-20

    add-double v26, v28, v30

    .line 956
    mul-double v20, v14, v8

    .line 957
    .local v20, "tempA":D
    mul-double v28, v14, v10

    mul-double v30, v16, v8

    add-double v28, v28, v30

    mul-double v30, v16, v10

    add-double v22, v28, v30

    .line 963
    .local v22, "tempB":D
    add-double v24, v22, v20

    .line 965
    .local v24, "tempC":D
    const-wide/16 v28, 0x0

    cmpl-double v28, p2, v28

    if-eqz v28, :cond_8

    .line 966
    mul-double v28, v24, p2

    mul-double v28, v28, v26

    mul-double v30, v24, p2

    add-double v28, v28, v30

    mul-double v30, v24, v26

    add-double v28, v28, v30

    add-double v28, v28, v22

    add-double v18, v28, v20

    .line 971
    .restart local v18    # "result":D
    :goto_1
    if-eqz p4, :cond_1

    .line 973
    const/16 v28, 0x0

    aput-wide v20, p4, v28

    .line 974
    const/16 v28, 0x1

    mul-double v30, v24, p2

    mul-double v30, v30, v26

    mul-double v32, v24, p2

    add-double v30, v30, v32

    mul-double v32, v24, v26

    add-double v30, v30, v32

    add-double v30, v30, v22

    aput-wide v30, p4, v28

    goto/16 :goto_0

    .line 911
    .end local v6    # "epsilon":D
    .end local v8    # "fracPartA":D
    .end local v10    # "fracPartB":D
    .end local v12    # "intFrac":I
    .end local v14    # "intPartA":D
    .end local v16    # "intPartB":D
    .end local v18    # "result":D
    .end local v20    # "tempA":D
    .end local v22    # "tempB":D
    .end local v24    # "tempC":D
    .end local v26    # "z":D
    :cond_6
    const/16 v28, 0x2c5

    move/from16 v0, v28

    if-le v13, v0, :cond_5

    .line 912
    if-eqz p4, :cond_7

    .line 913
    const/16 v28, 0x0

    const-wide/high16 v30, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    aput-wide v30, p4, v28

    .line 914
    const/16 v28, 0x1

    const-wide/16 v30, 0x0

    aput-wide v30, p4, v28

    .line 916
    :cond_7
    const-wide/high16 v18, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto/16 :goto_0

    .line 968
    .restart local v6    # "epsilon":D
    .restart local v8    # "fracPartA":D
    .restart local v10    # "fracPartB":D
    .restart local v12    # "intFrac":I
    .restart local v14    # "intPartA":D
    .restart local v16    # "intPartB":D
    .restart local v20    # "tempA":D
    .restart local v22    # "tempB":D
    .restart local v24    # "tempC":D
    .restart local v26    # "z":D
    :cond_8
    mul-double v28, v24, v26

    add-double v28, v28, v22

    add-double v18, v28, v20

    .restart local v18    # "result":D
    goto :goto_1
.end method

.method public static expm1(D)D
    .locals 2
    .param p0, "x"    # D

    .prologue
    .line 985
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/FastMath;->expm1(D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static expm1(D[D)D
    .locals 46
    .param p0, "x"    # D
    .param p2, "hiPrecOut"    # [D

    .prologue
    .line 994
    cmpl-double v21, p0, p0

    if-nez v21, :cond_0

    const-wide/16 v42, 0x0

    cmpl-double v21, p0, v42

    if-nez v21, :cond_1

    .line 1132
    .end local p0    # "x":D
    :cond_0
    :goto_0
    return-wide p0

    .line 998
    .restart local p0    # "x":D
    :cond_1
    const-wide/high16 v42, -0x4010000000000000L    # -1.0

    cmpg-double v21, p0, v42

    if-lez v21, :cond_2

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    cmpl-double v21, p0, v42

    if-ltz v21, :cond_4

    .line 1001
    :cond_2
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [D

    move-object/from16 v18, v0

    .line 1002
    .local v18, "hiPrec":[D
    const-wide/16 v42, 0x0

    move-wide/from16 v0, p0

    move-wide/from16 v2, v42

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->exp(DD[D)D

    .line 1003
    const-wide/16 v42, 0x0

    cmpl-double v21, p0, v42

    if-lez v21, :cond_3

    .line 1004
    const-wide/high16 v42, -0x4010000000000000L    # -1.0

    const/16 v21, 0x0

    aget-wide v44, v18, v21

    add-double v42, v42, v44

    const/16 v21, 0x1

    aget-wide v44, v18, v21

    add-double p0, v42, v44

    goto :goto_0

    .line 1006
    :cond_3
    const-wide/high16 v42, -0x4010000000000000L    # -1.0

    const/16 v21, 0x0

    aget-wide v44, v18, v21

    add-double v22, v42, v44

    .line 1007
    .local v22, "ra":D
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    add-double v42, v42, v22

    const/16 v21, 0x0

    aget-wide v44, v18, v21

    sub-double v42, v42, v44

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v26, v0

    .line 1008
    .local v26, "rb":D
    const/16 v21, 0x1

    aget-wide v42, v18, v21

    add-double v26, v26, v42

    .line 1009
    add-double p0, v22, v26

    goto :goto_0

    .line 1016
    .end local v18    # "hiPrec":[D
    .end local v22    # "ra":D
    .end local v26    # "rb":D
    :cond_4
    const/16 v20, 0x0

    .line 1018
    .local v20, "negative":Z
    const-wide/16 v42, 0x0

    cmpg-double v21, p0, v42

    if-gez v21, :cond_5

    .line 1019
    move-wide/from16 v0, p0

    neg-double v0, v0

    move-wide/from16 p0, v0

    .line 1020
    const/16 v20, 0x1

    .line 1024
    :cond_5
    const-wide/high16 v42, 0x4090000000000000L    # 1024.0

    mul-double v42, v42, p0

    move-wide/from16 v0, v42

    double-to-int v0, v0

    move/from16 v19, v0

    .line 1025
    .local v19, "intFrac":I
    # getter for: Lorg/apache/commons/math3/util/FastMath$ExpFracTable;->EXP_FRAC_TABLE_A:[D
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$ExpFracTable;->access$200()[D

    move-result-object v21

    aget-wide v42, v21, v19

    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    sub-double v30, v42, v44

    .line 1026
    .local v30, "tempA":D
    # getter for: Lorg/apache/commons/math3/util/FastMath$ExpFracTable;->EXP_FRAC_TABLE_B:[D
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$ExpFracTable;->access$300()[D

    move-result-object v21

    aget-wide v32, v21, v19

    .line 1028
    .local v32, "tempB":D
    add-double v28, v30, v32

    .line 1029
    .local v28, "temp":D
    sub-double v42, v28, v30

    sub-double v42, v42, v32

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v32, v0

    .line 1030
    move-wide/from16 v30, v28

    .line 1032
    const-wide/high16 v42, 0x41d0000000000000L    # 1.073741824E9

    mul-double v28, v30, v42

    .line 1033
    add-double v42, v30, v28

    sub-double v6, v42, v28

    .line 1034
    .local v6, "baseA":D
    sub-double v42, v30, v6

    add-double v8, v32, v42

    .line 1036
    .local v8, "baseB":D
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v42, v0

    const-wide/high16 v44, 0x4090000000000000L    # 1024.0

    div-double v42, v42, v44

    sub-double v16, p0, v42

    .line 1041
    .local v16, "epsilon":D
    const-wide v40, 0x3f8112dba54d5643L    # 0.008336750013465571

    .line 1042
    .local v40, "zb":D
    mul-double v42, v40, v16

    const-wide v44, 0x3fa555553d639997L    # 0.041666663879186654

    add-double v40, v42, v44

    .line 1043
    mul-double v42, v40, v16

    const-wide v44, 0x3fc555555555c421L    # 0.16666666666745392

    add-double v40, v42, v44

    .line 1044
    mul-double v42, v40, v16

    const-wide v44, 0x3fdfffffffffffffL    # 0.49999999999999994

    add-double v40, v42, v44

    .line 1045
    mul-double v40, v40, v16

    .line 1046
    mul-double v40, v40, v16

    .line 1048
    move-wide/from16 v38, v16

    .line 1049
    .local v38, "za":D
    add-double v28, v38, v40

    .line 1050
    sub-double v42, v28, v38

    sub-double v42, v42, v40

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v40, v0

    .line 1051
    move-wide/from16 v38, v28

    .line 1053
    const-wide/high16 v42, 0x41d0000000000000L    # 1.073741824E9

    mul-double v28, v38, v42

    .line 1054
    add-double v42, v38, v28

    sub-double v28, v42, v28

    .line 1055
    sub-double v42, v38, v28

    add-double v40, v40, v42

    .line 1056
    move-wide/from16 v38, v28

    .line 1059
    mul-double v34, v38, v6

    .line 1061
    .local v34, "ya":D
    mul-double v42, v38, v8

    add-double v28, v34, v42

    .line 1062
    sub-double v42, v28, v34

    mul-double v44, v38, v8

    sub-double v42, v42, v44

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v36, v0

    .line 1063
    .local v36, "yb":D
    move-wide/from16 v34, v28

    .line 1065
    mul-double v42, v40, v6

    add-double v28, v34, v42

    .line 1066
    sub-double v42, v28, v34

    mul-double v44, v40, v6

    sub-double v42, v42, v44

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    add-double v36, v36, v42

    .line 1067
    move-wide/from16 v34, v28

    .line 1069
    mul-double v42, v40, v8

    add-double v28, v34, v42

    .line 1070
    sub-double v42, v28, v34

    mul-double v44, v40, v8

    sub-double v42, v42, v44

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    add-double v36, v36, v42

    .line 1071
    move-wide/from16 v34, v28

    .line 1075
    add-double v28, v34, v6

    .line 1076
    sub-double v42, v28, v6

    sub-double v42, v42, v34

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    add-double v36, v36, v42

    .line 1077
    move-wide/from16 v34, v28

    .line 1079
    add-double v28, v34, v38

    .line 1081
    sub-double v42, v28, v34

    sub-double v42, v42, v38

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    add-double v36, v36, v42

    .line 1082
    move-wide/from16 v34, v28

    .line 1084
    add-double v28, v34, v8

    .line 1086
    sub-double v42, v28, v34

    sub-double v42, v42, v8

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    add-double v36, v36, v42

    .line 1087
    move-wide/from16 v34, v28

    .line 1089
    add-double v28, v34, v40

    .line 1091
    sub-double v42, v28, v34

    sub-double v42, v42, v40

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    add-double v36, v36, v42

    .line 1092
    move-wide/from16 v34, v28

    .line 1094
    if-eqz v20, :cond_6

    .line 1096
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    add-double v10, v42, v34

    .line 1097
    .local v10, "denom":D
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    div-double v14, v42, v10

    .line 1098
    .local v14, "denomr":D
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    sub-double v42, v10, v42

    sub-double v42, v42, v34

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    add-double v12, v42, v36

    .line 1099
    .local v12, "denomb":D
    mul-double v24, v34, v14

    .line 1100
    .local v24, "ratio":D
    const-wide/high16 v42, 0x41d0000000000000L    # 1.073741824E9

    mul-double v28, v24, v42

    .line 1101
    add-double v42, v24, v28

    sub-double v22, v42, v28

    .line 1102
    .restart local v22    # "ra":D
    sub-double v26, v24, v22

    .line 1104
    .restart local v26    # "rb":D
    const-wide/high16 v42, 0x41d0000000000000L    # 1.073741824E9

    mul-double v28, v10, v42

    .line 1105
    add-double v42, v10, v28

    sub-double v38, v42, v28

    .line 1106
    sub-double v40, v10, v38

    .line 1108
    mul-double v42, v38, v22

    sub-double v42, v34, v42

    mul-double v44, v38, v26

    sub-double v42, v42, v44

    mul-double v44, v40, v22

    sub-double v42, v42, v44

    mul-double v44, v40, v26

    sub-double v42, v42, v44

    mul-double v42, v42, v14

    add-double v26, v26, v42

    .line 1119
    mul-double v42, v36, v14

    add-double v26, v26, v42

    .line 1120
    move-wide/from16 v0, v34

    neg-double v0, v0

    move-wide/from16 v42, v0

    mul-double v42, v42, v12

    mul-double v42, v42, v14

    mul-double v42, v42, v14

    add-double v26, v26, v42

    .line 1123
    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v34, v0

    .line 1124
    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v36, v0

    .line 1127
    .end local v10    # "denom":D
    .end local v12    # "denomb":D
    .end local v14    # "denomr":D
    .end local v22    # "ra":D
    .end local v24    # "ratio":D
    .end local v26    # "rb":D
    :cond_6
    if-eqz p2, :cond_7

    .line 1128
    const/16 v21, 0x0

    aput-wide v34, p2, v21

    .line 1129
    const/16 v21, 0x1

    aput-wide v36, p2, v21

    .line 1132
    :cond_7
    add-double p0, v34, v36

    goto/16 :goto_0
.end method

.method public static floor(D)D
    .locals 4
    .param p0, "x"    # D

    .prologue
    .line 3361
    cmpl-double v2, p0, p0

    if-eqz v2, :cond_1

    .line 3378
    .end local p0    # "x":D
    .local v0, "y":J
    :cond_0
    :goto_0
    return-wide p0

    .line 3365
    .end local v0    # "y":J
    .restart local p0    # "x":D
    :cond_1
    const-wide/high16 v2, 0x4330000000000000L    # 4.503599627370496E15

    cmpl-double v2, p0, v2

    if-gez v2, :cond_0

    const-wide/high16 v2, -0x3cd0000000000000L    # -4.503599627370496E15

    cmpg-double v2, p0, v2

    if-lez v2, :cond_0

    .line 3369
    double-to-long v0, p0

    .line 3370
    .restart local v0    # "y":J
    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_2

    long-to-double v2, v0

    cmpl-double v2, v2, p0

    if-eqz v2, :cond_2

    .line 3371
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 3374
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 3375
    long-to-double v2, v0

    mul-double/2addr p0, v2

    goto :goto_0

    .line 3378
    :cond_3
    long-to-double p0, v0

    goto :goto_0
.end method

.method public static floorDiv(II)I
    .locals 4
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 3862
    if-nez p1, :cond_0

    .line 3863
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 3866
    :cond_0
    rem-int v0, p0, p1

    .line 3867
    .local v0, "m":I
    xor-int v1, p0, p1

    if-gez v1, :cond_1

    if-nez v0, :cond_2

    .line 3869
    :cond_1
    div-int v1, p0, p1

    .line 3872
    :goto_0
    return v1

    :cond_2
    div-int v1, p0, p1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static floorDiv(JJ)J
    .locals 6
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 3892
    cmp-long v2, p2, v4

    if-nez v2, :cond_0

    .line 3893
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 3896
    :cond_0
    rem-long v0, p0, p2

    .line 3897
    .local v0, "m":J
    xor-long v2, p0, p2

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    .line 3899
    :cond_1
    div-long v2, p0, p2

    .line 3902
    :goto_0
    return-wide v2

    :cond_2
    div-long v2, p0, p2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    goto :goto_0
.end method

.method public static floorMod(II)I
    .locals 4
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 3922
    if-nez p1, :cond_0

    .line 3923
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 3926
    :cond_0
    rem-int v0, p0, p1

    .line 3927
    .local v0, "m":I
    xor-int v1, p0, p1

    if-gez v1, :cond_1

    if-nez v0, :cond_2

    .line 3932
    .end local v0    # "m":I
    :cond_1
    :goto_0
    return v0

    .restart local v0    # "m":I
    :cond_2
    add-int/2addr v0, p1

    goto :goto_0
.end method

.method public static floorMod(JJ)J
    .locals 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 3952
    cmp-long v2, p2, v4

    if-nez v2, :cond_0

    .line 3953
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 3956
    :cond_0
    rem-long v0, p0, p2

    .line 3957
    .local v0, "m":J
    xor-long v2, p0, p2

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    .line 3962
    .end local v0    # "m":J
    :cond_1
    :goto_0
    return-wide v0

    .restart local v0    # "m":J
    :cond_2
    add-long/2addr v0, p2

    goto :goto_0
.end method

.method public static getExponent(D)I
    .locals 4
    .param p0, "d"    # D

    .prologue
    .line 4020
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x34

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x7ff

    and-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, -0x3ff

    return v0
.end method

.method public static getExponent(F)I
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 4034
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x17

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, -0x7f

    return v0
.end method

.method public static hypot(DD)D
    .locals 16
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    .line 3596
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3597
    :cond_0
    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 3623
    :goto_0
    return-wide v12

    .line 3598
    :cond_1
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3599
    :cond_2
    const-wide/high16 v12, 0x7ff8000000000000L    # NaN

    goto :goto_0

    .line 3602
    :cond_3
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/FastMath;->getExponent(D)I

    move-result v2

    .line 3603
    .local v2, "expX":I
    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/util/FastMath;->getExponent(D)I

    move-result v3

    .line 3604
    .local v3, "expY":I
    add-int/lit8 v5, v3, 0x1b

    if-le v2, v5, :cond_4

    .line 3606
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    goto :goto_0

    .line 3607
    :cond_4
    add-int/lit8 v5, v2, 0x1b

    if-le v3, v5, :cond_5

    .line 3609
    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    goto :goto_0

    .line 3613
    :cond_5
    add-int v5, v2, v3

    div-int/lit8 v4, v5, 0x2

    .line 3616
    .local v4, "middleExp":I
    neg-int v5, v4

    move-wide/from16 v0, p0

    invoke-static {v0, v1, v5}, Lorg/apache/commons/math3/util/FastMath;->scalb(DI)D

    move-result-wide v8

    .line 3617
    .local v8, "scaledX":D
    neg-int v5, v4

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v5}, Lorg/apache/commons/math3/util/FastMath;->scalb(DI)D

    move-result-wide v10

    .line 3620
    .local v10, "scaledY":D
    mul-double v12, v8, v8

    mul-double v14, v10, v10

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    .line 3623
    .local v6, "scaledH":D
    invoke-static {v6, v7, v4}, Lorg/apache/commons/math3/util/FastMath;->scalb(DI)D

    move-result-wide v12

    goto :goto_0
.end method

.method public static incrementExact(I)I
    .locals 6
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 3675
    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    .line 3676
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 3679
    :cond_0
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static incrementExact(J)J
    .locals 6
    .param p0, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 3691
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 3692
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 3695
    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static log(D)D
    .locals 2
    .param p0, "x"    # D

    .prologue
    .line 1142
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/FastMath;->log(D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static log(DD)D
    .locals 4
    .param p0, "base"    # D
    .param p2, "x"    # D

    .prologue
    .line 1450
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static log(D[D)D
    .locals 48
    .param p0, "x"    # D
    .param p2, "hiPrec"    # [D

    .prologue
    .line 1152
    const-wide/16 v42, 0x0

    cmpl-double v25, p0, v42

    if-nez v25, :cond_0

    .line 1153
    const-wide/high16 v42, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 1370
    :goto_0
    return-wide v42

    .line 1155
    :cond_0
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    .line 1158
    .local v10, "bits":J
    const-wide/high16 v42, -0x8000000000000000L

    and-long v42, v42, v10

    const-wide/16 v44, 0x0

    cmp-long v25, v42, v44

    if-nez v25, :cond_1

    cmpl-double v25, p0, p0

    if-eqz v25, :cond_3

    :cond_1
    const-wide/16 v42, 0x0

    cmpl-double v25, p0, v42

    if-eqz v25, :cond_3

    .line 1159
    if-eqz p2, :cond_2

    .line 1160
    const/16 v25, 0x0

    const-wide/high16 v42, 0x7ff8000000000000L    # NaN

    aput-wide v42, p2, v25

    .line 1163
    :cond_2
    const-wide/high16 v42, 0x7ff8000000000000L    # NaN

    goto :goto_0

    .line 1167
    :cond_3
    const-wide/high16 v42, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v25, p0, v42

    if-nez v25, :cond_5

    .line 1168
    if-eqz p2, :cond_4

    .line 1169
    const/16 v25, 0x0

    const-wide/high16 v42, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    aput-wide v42, p2, v25

    .line 1172
    :cond_4
    const-wide/high16 v42, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 1176
    :cond_5
    const/16 v25, 0x34

    shr-long v42, v10, v25

    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    add-int/lit16 v0, v0, -0x3ff

    move/from16 v20, v0

    .line 1178
    .local v20, "exp":I
    const-wide/high16 v42, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long v42, v42, v10

    const-wide/16 v44, 0x0

    cmp-long v25, v42, v44

    if-nez v25, :cond_8

    .line 1180
    const-wide/16 v42, 0x0

    cmpl-double v25, p0, v42

    if-nez v25, :cond_7

    .line 1182
    if-eqz p2, :cond_6

    .line 1183
    const/16 v25, 0x0

    const-wide/high16 v42, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    aput-wide v42, p2, v25

    .line 1186
    :cond_6
    const-wide/high16 v42, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    .line 1190
    :cond_7
    const/16 v25, 0x1

    shl-long v10, v10, v25

    .line 1191
    :goto_1
    const-wide/high16 v42, 0x10000000000000L

    and-long v42, v42, v10

    const-wide/16 v44, 0x0

    cmp-long v25, v42, v44

    if-nez v25, :cond_8

    .line 1192
    add-int/lit8 v20, v20, -0x1

    .line 1193
    const/16 v25, 0x1

    shl-long v10, v10, v25

    goto :goto_1

    .line 1198
    :cond_8
    const/16 v25, -0x1

    move/from16 v0, v20

    move/from16 v1, v25

    if-eq v0, v1, :cond_9

    if-nez v20, :cond_b

    :cond_9
    const-wide v42, 0x3ff028f5c28f5c29L    # 1.01

    cmpg-double v25, p0, v42

    if-gez v25, :cond_b

    const-wide v42, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v25, p0, v42

    if-lez v25, :cond_b

    if-nez p2, :cond_b

    .line 1203
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    sub-double v34, p0, v42

    .line 1204
    .local v34, "xa":D
    sub-double v42, v34, p0

    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    add-double v36, v42, v44

    .line 1205
    .local v36, "xb":D
    const-wide/high16 v42, 0x41d0000000000000L    # 1.073741824E9

    mul-double v32, v34, v42

    .line 1206
    .local v32, "tmp":D
    add-double v42, v34, v32

    sub-double v4, v42, v32

    .line 1207
    .local v4, "aa":D
    sub-double v6, v34, v4

    .line 1208
    .local v6, "ab":D
    move-wide/from16 v34, v4

    .line 1209
    move-wide/from16 v36, v6

    .line 1211
    sget-object v25, Lorg/apache/commons/math3/util/FastMath;->LN_QUICK_COEF:[[D

    sget-object v42, Lorg/apache/commons/math3/util/FastMath;->LN_QUICK_COEF:[[D

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x1

    aget-object v23, v25, v42

    .line 1212
    .local v23, "lnCoef_last":[D
    const/16 v25, 0x0

    aget-wide v38, v23, v25

    .line 1213
    .local v38, "ya":D
    const/16 v25, 0x1

    aget-wide v40, v23, v25

    .line 1215
    .local v40, "yb":D
    sget-object v25, Lorg/apache/commons/math3/util/FastMath;->LN_QUICK_COEF:[[D

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v21, v25, -0x2

    .local v21, "i":I
    :goto_2
    if-ltz v21, :cond_a

    .line 1217
    mul-double v4, v38, v34

    .line 1218
    mul-double v42, v38, v36

    mul-double v44, v40, v34

    add-double v42, v42, v44

    mul-double v44, v40, v36

    add-double v6, v42, v44

    .line 1220
    const-wide/high16 v42, 0x41d0000000000000L    # 1.073741824E9

    mul-double v32, v4, v42

    .line 1221
    add-double v42, v4, v32

    sub-double v38, v42, v32

    .line 1222
    sub-double v42, v4, v38

    add-double v40, v42, v6

    .line 1225
    sget-object v25, Lorg/apache/commons/math3/util/FastMath;->LN_QUICK_COEF:[[D

    aget-object v22, v25, v21

    .line 1226
    .local v22, "lnCoef_i":[D
    const/16 v25, 0x0

    aget-wide v42, v22, v25

    add-double v4, v38, v42

    .line 1227
    const/16 v25, 0x1

    aget-wide v42, v22, v25

    add-double v6, v40, v42

    .line 1229
    const-wide/high16 v42, 0x41d0000000000000L    # 1.073741824E9

    mul-double v32, v4, v42

    .line 1230
    add-double v42, v4, v32

    sub-double v38, v42, v32

    .line 1231
    sub-double v42, v4, v38

    add-double v40, v42, v6

    .line 1215
    add-int/lit8 v21, v21, -0x1

    goto :goto_2

    .line 1235
    .end local v22    # "lnCoef_i":[D
    :cond_a
    mul-double v4, v38, v34

    .line 1236
    mul-double v42, v38, v36

    mul-double v44, v40, v34

    add-double v42, v42, v44

    mul-double v44, v40, v36

    add-double v6, v42, v44

    .line 1238
    const-wide/high16 v42, 0x41d0000000000000L    # 1.073741824E9

    mul-double v32, v4, v42

    .line 1239
    add-double v42, v4, v32

    sub-double v38, v42, v32

    .line 1240
    sub-double v42, v4, v38

    add-double v40, v42, v6

    .line 1242
    add-double v42, v38, v40

    goto/16 :goto_0

    .line 1246
    .end local v4    # "aa":D
    .end local v6    # "ab":D
    .end local v21    # "i":I
    .end local v23    # "lnCoef_last":[D
    .end local v32    # "tmp":D
    .end local v34    # "xa":D
    .end local v36    # "xb":D
    .end local v38    # "ya":D
    .end local v40    # "yb":D
    :cond_b
    # getter for: Lorg/apache/commons/math3/util/FastMath$lnMant;->LN_MANT:[[D
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$lnMant;->access$400()[[D

    move-result-object v25

    const-wide v42, 0xffc0000000000L

    and-long v42, v42, v10

    const/16 v44, 0x2a

    shr-long v42, v42, v44

    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v42, v0

    aget-object v24, v25, v42

    .line 1257
    .local v24, "lnm":[D
    const-wide v42, 0x3ffffffffffL

    and-long v42, v42, v10

    move-wide/from16 v0, v42

    long-to-double v0, v0

    move-wide/from16 v42, v0

    const-wide/high16 v44, 0x4330000000000000L    # 4.503599627370496E15

    const-wide v46, 0xffc0000000000L

    and-long v46, v46, v10

    move-wide/from16 v0, v46

    long-to-double v0, v0

    move-wide/from16 v46, v0

    add-double v44, v44, v46

    div-double v18, v42, v44

    .line 1259
    .local v18, "epsilon":D
    const-wide/16 v26, 0x0

    .line 1260
    .local v26, "lnza":D
    const-wide/16 v28, 0x0

    .line 1262
    .local v28, "lnzb":D
    if-eqz p2, :cond_e

    .line 1264
    const-wide/high16 v42, 0x41d0000000000000L    # 1.073741824E9

    mul-double v32, v18, v42

    .line 1265
    .restart local v32    # "tmp":D
    add-double v42, v18, v32

    sub-double v4, v42, v32

    .line 1266
    .restart local v4    # "aa":D
    sub-double v6, v18, v4

    .line 1267
    .restart local v6    # "ab":D
    move-wide/from16 v34, v4

    .line 1268
    .restart local v34    # "xa":D
    move-wide/from16 v36, v6

    .line 1271
    .restart local v36    # "xb":D
    const-wide v42, 0x3ffffffffffL

    and-long v42, v42, v10

    move-wide/from16 v0, v42

    long-to-double v0, v0

    move-wide/from16 v30, v0

    .line 1272
    .local v30, "numer":D
    const-wide/high16 v42, 0x4330000000000000L    # 4.503599627370496E15

    const-wide v44, 0xffc0000000000L

    and-long v44, v44, v10

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v44, v0

    add-double v16, v42, v44

    .line 1273
    .local v16, "denom":D
    mul-double v42, v34, v16

    sub-double v42, v30, v42

    mul-double v44, v36, v16

    sub-double v4, v42, v44

    .line 1274
    div-double v42, v4, v16

    add-double v36, v36, v42

    .line 1277
    sget-object v25, Lorg/apache/commons/math3/util/FastMath;->LN_HI_PREC_COEF:[[D

    sget-object v42, Lorg/apache/commons/math3/util/FastMath;->LN_HI_PREC_COEF:[[D

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x1

    aget-object v23, v25, v42

    .line 1278
    .restart local v23    # "lnCoef_last":[D
    const/16 v25, 0x0

    aget-wide v38, v23, v25

    .line 1279
    .restart local v38    # "ya":D
    const/16 v25, 0x1

    aget-wide v40, v23, v25

    .line 1281
    .restart local v40    # "yb":D
    sget-object v25, Lorg/apache/commons/math3/util/FastMath;->LN_HI_PREC_COEF:[[D

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v21, v25, -0x2

    .restart local v21    # "i":I
    :goto_3
    if-ltz v21, :cond_c

    .line 1283
    mul-double v4, v38, v34

    .line 1284
    mul-double v42, v38, v36

    mul-double v44, v40, v34

    add-double v42, v42, v44

    mul-double v44, v40, v36

    add-double v6, v42, v44

    .line 1286
    const-wide/high16 v42, 0x41d0000000000000L    # 1.073741824E9

    mul-double v32, v4, v42

    .line 1287
    add-double v42, v4, v32

    sub-double v38, v42, v32

    .line 1288
    sub-double v42, v4, v38

    add-double v40, v42, v6

    .line 1291
    sget-object v25, Lorg/apache/commons/math3/util/FastMath;->LN_HI_PREC_COEF:[[D

    aget-object v22, v25, v21

    .line 1292
    .restart local v22    # "lnCoef_i":[D
    const/16 v25, 0x0

    aget-wide v42, v22, v25

    add-double v4, v38, v42

    .line 1293
    const/16 v25, 0x1

    aget-wide v42, v22, v25

    add-double v6, v40, v42

    .line 1295
    const-wide/high16 v42, 0x41d0000000000000L    # 1.073741824E9

    mul-double v32, v4, v42

    .line 1296
    add-double v42, v4, v32

    sub-double v38, v42, v32

    .line 1297
    sub-double v42, v4, v38

    add-double v40, v42, v6

    .line 1281
    add-int/lit8 v21, v21, -0x1

    goto :goto_3

    .line 1301
    .end local v22    # "lnCoef_i":[D
    :cond_c
    mul-double v4, v38, v34

    .line 1302
    mul-double v42, v38, v36

    mul-double v44, v40, v34

    add-double v42, v42, v44

    mul-double v44, v40, v36

    add-double v6, v42, v44

    .line 1310
    add-double v26, v4, v6

    .line 1311
    sub-double v42, v26, v4

    sub-double v42, v42, v6

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v28, v0

    .line 1338
    .end local v4    # "aa":D
    .end local v6    # "ab":D
    .end local v16    # "denom":D
    .end local v21    # "i":I
    .end local v23    # "lnCoef_last":[D
    .end local v30    # "numer":D
    .end local v32    # "tmp":D
    .end local v34    # "xa":D
    .end local v36    # "xb":D
    .end local v38    # "ya":D
    .end local v40    # "yb":D
    :goto_4
    const-wide v42, 0x3fe62e42c0000000L    # 0.6931470632553101

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v2, v42, v44

    .line 1339
    .local v2, "a":D
    const-wide/16 v8, 0x0

    .line 1340
    .local v8, "b":D
    const/16 v25, 0x0

    aget-wide v42, v24, v25

    add-double v12, v2, v42

    .line 1341
    .local v12, "c":D
    sub-double v42, v12, v2

    const/16 v25, 0x0

    aget-wide v44, v24, v25

    sub-double v42, v42, v44

    move-wide/from16 v0, v42

    neg-double v14, v0

    .line 1342
    .local v14, "d":D
    move-wide v2, v12

    .line 1343
    add-double/2addr v8, v14

    .line 1345
    add-double v12, v2, v26

    .line 1346
    sub-double v42, v12, v2

    sub-double v42, v42, v26

    move-wide/from16 v0, v42

    neg-double v14, v0

    .line 1347
    move-wide v2, v12

    .line 1348
    add-double/2addr v8, v14

    .line 1350
    const-wide v42, 0x3e7f7d1cf79abc9eL    # 1.1730463525082348E-7

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v42, v42, v44

    add-double v12, v2, v42

    .line 1351
    sub-double v42, v12, v2

    const-wide v44, 0x3e7f7d1cf79abc9eL    # 1.1730463525082348E-7

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    sub-double v42, v42, v44

    move-wide/from16 v0, v42

    neg-double v14, v0

    .line 1352
    move-wide v2, v12

    .line 1353
    add-double/2addr v8, v14

    .line 1355
    const/16 v25, 0x1

    aget-wide v42, v24, v25

    add-double v12, v2, v42

    .line 1356
    sub-double v42, v12, v2

    const/16 v25, 0x1

    aget-wide v44, v24, v25

    sub-double v42, v42, v44

    move-wide/from16 v0, v42

    neg-double v14, v0

    .line 1357
    move-wide v2, v12

    .line 1358
    add-double/2addr v8, v14

    .line 1360
    add-double v12, v2, v28

    .line 1361
    sub-double v42, v12, v2

    sub-double v42, v42, v28

    move-wide/from16 v0, v42

    neg-double v14, v0

    .line 1362
    move-wide v2, v12

    .line 1363
    add-double/2addr v8, v14

    .line 1365
    if-eqz p2, :cond_d

    .line 1366
    const/16 v25, 0x0

    aput-wide v2, p2, v25

    .line 1367
    const/16 v25, 0x1

    aput-wide v8, p2, v25

    .line 1370
    :cond_d
    add-double v42, v2, v8

    goto/16 :goto_0

    .line 1315
    .end local v2    # "a":D
    .end local v8    # "b":D
    .end local v12    # "c":D
    .end local v14    # "d":D
    :cond_e
    const-wide v26, -0x403ab85bc817c0f3L    # -0.16624882440418567

    .line 1316
    mul-double v42, v26, v18

    const-wide v44, 0x3fc99995c0570824L    # 0.19999954120254515

    add-double v26, v42, v44

    .line 1317
    mul-double v42, v26, v18

    const-wide v44, -0x40300000007fae53L    # -0.2499999997677497

    add-double v26, v42, v44

    .line 1318
    mul-double v42, v26, v18

    const-wide v44, 0x3fd5555555555198L    # 0.3333333333332802

    add-double v26, v42, v44

    .line 1319
    mul-double v42, v26, v18

    const-wide/high16 v44, -0x4020000000000000L    # -0.5

    add-double v26, v42, v44

    .line 1320
    mul-double v42, v26, v18

    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    add-double v26, v42, v44

    .line 1321
    mul-double v26, v26, v18

    goto/16 :goto_4
.end method

.method public static log10(D)D
    .locals 20
    .param p0, "x"    # D

    .prologue
    .line 1416
    const/4 v3, 0x2

    new-array v2, v3, [D

    .line 1418
    .local v2, "hiPrec":[D
    move-wide/from16 v0, p0

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log(D[D)D

    move-result-wide v8

    .line 1419
    .local v8, "lores":D
    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1430
    .end local v8    # "lores":D
    :goto_0
    return-wide v8

    .line 1423
    .restart local v8    # "lores":D
    :cond_0
    const/4 v3, 0x0

    aget-wide v16, v2, v3

    const-wide/high16 v18, 0x41d0000000000000L    # 1.073741824E9

    mul-double v14, v16, v18

    .line 1424
    .local v14, "tmp":D
    const/4 v3, 0x0

    aget-wide v16, v2, v3

    add-double v16, v16, v14

    sub-double v4, v16, v14

    .line 1425
    .local v4, "lna":D
    const/4 v3, 0x0

    aget-wide v16, v2, v3

    sub-double v16, v16, v4

    const/4 v3, 0x1

    aget-wide v18, v2, v3

    add-double v6, v16, v18

    .line 1427
    .local v6, "lnb":D
    const-wide v10, 0x3fdbcb7b00000000L    # 0.4342944622039795

    .line 1428
    .local v10, "rln10a":D
    const-wide v12, 0x3e5526e50e32a6abL    # 1.9699272335463627E-8

    .line 1430
    .local v12, "rln10b":D
    const-wide v16, 0x3e5526e50e32a6abL    # 1.9699272335463627E-8

    mul-double v16, v16, v6

    const-wide v18, 0x3e5526e50e32a6abL    # 1.9699272335463627E-8

    mul-double v18, v18, v4

    add-double v16, v16, v18

    const-wide v18, 0x3fdbcb7b00000000L    # 0.4342944622039795

    mul-double v18, v18, v6

    add-double v16, v16, v18

    const-wide v18, 0x3fdbcb7b00000000L    # 0.4342944622039795

    mul-double v18, v18, v4

    add-double v8, v16, v18

    goto :goto_0
.end method

.method public static log1p(D)D
    .locals 18
    .param p0, "x"    # D

    .prologue
    .line 1380
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    cmpl-double v5, p0, v14

    if-nez v5, :cond_1

    .line 1381
    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 1407
    :cond_0
    :goto_0
    return-wide v6

    .line 1384
    :cond_1
    const-wide/high16 v14, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v5, p0, v14

    if-nez v5, :cond_2

    .line 1385
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 1388
    :cond_2
    const-wide v14, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v5, p0, v14

    if-gtz v5, :cond_3

    const-wide v14, -0x414f39085f4a1273L    # -1.0E-6

    cmpg-double v5, p0, v14

    if-gez v5, :cond_4

    .line 1390
    :cond_3
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double v8, v14, p0

    .line 1391
    .local v8, "xpa":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v14, v8, v14

    sub-double v14, v14, p0

    neg-double v10, v14

    .line 1393
    .local v10, "xpb":D
    const/4 v5, 0x2

    new-array v4, v5, [D

    .line 1394
    .local v4, "hiPrec":[D
    invoke-static {v8, v9, v4}, Lorg/apache/commons/math3/util/FastMath;->log(D[D)D

    move-result-wide v6

    .line 1395
    .local v6, "lores":D
    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1401
    div-double v2, v10, v8

    .line 1402
    .local v2, "fx1":D
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v14, v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v0, v14, v16

    .line 1403
    .local v0, "epsilon":D
    mul-double v14, v0, v2

    const/4 v5, 0x1

    aget-wide v16, v4, v5

    add-double v14, v14, v16

    const/4 v5, 0x0

    aget-wide v16, v4, v5

    add-double v6, v14, v16

    goto :goto_0

    .line 1406
    .end local v0    # "epsilon":D
    .end local v2    # "fx1":D
    .end local v4    # "hiPrec":[D
    .end local v6    # "lores":D
    .end local v8    # "xpa":D
    .end local v10    # "xpb":D
    :cond_4
    const-wide v14, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double v14, v14, p0

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    sub-double v14, v14, v16

    mul-double v14, v14, p0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v12, v14, v16

    .line 1407
    .local v12, "y":D
    mul-double v6, v12, p0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "a"    # [Ljava/lang/String;

    .prologue
    const/16 v5, 0x5dc

    const/16 v3, 0x401

    const/16 v4, 0xe

    .line 4043
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 4044
    .local v0, "out":Ljava/io/PrintStream;
    const-string v1, "EXP_INT_TABLE_A"

    # getter for: Lorg/apache/commons/math3/util/FastMath$ExpIntTable;->EXP_INT_TABLE_A:[D
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$ExpIntTable;->access$000()[D

    move-result-object v2

    invoke-static {v0, v1, v5, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    .line 4045
    const-string v1, "EXP_INT_TABLE_B"

    # getter for: Lorg/apache/commons/math3/util/FastMath$ExpIntTable;->EXP_INT_TABLE_B:[D
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$ExpIntTable;->access$100()[D

    move-result-object v2

    invoke-static {v0, v1, v5, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    .line 4046
    const-string v1, "EXP_FRAC_TABLE_A"

    # getter for: Lorg/apache/commons/math3/util/FastMath$ExpFracTable;->EXP_FRAC_TABLE_A:[D
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$ExpFracTable;->access$200()[D

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    .line 4047
    const-string v1, "EXP_FRAC_TABLE_B"

    # getter for: Lorg/apache/commons/math3/util/FastMath$ExpFracTable;->EXP_FRAC_TABLE_B:[D
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$ExpFracTable;->access$300()[D

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    .line 4048
    const-string v1, "LN_MANT"

    const/16 v2, 0x400

    # getter for: Lorg/apache/commons/math3/util/FastMath$lnMant;->LN_MANT:[[D
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$lnMant;->access$400()[[D

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMathCalc;->printarray(Ljava/io/PrintStream;Ljava/lang/String;I[[D)V

    .line 4049
    const-string v1, "SINE_TABLE_A"

    sget-object v2, Lorg/apache/commons/math3/util/FastMath;->SINE_TABLE_A:[D

    invoke-static {v0, v1, v4, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    .line 4050
    const-string v1, "SINE_TABLE_B"

    sget-object v2, Lorg/apache/commons/math3/util/FastMath;->SINE_TABLE_B:[D

    invoke-static {v0, v1, v4, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    .line 4051
    const-string v1, "COSINE_TABLE_A"

    sget-object v2, Lorg/apache/commons/math3/util/FastMath;->COSINE_TABLE_A:[D

    invoke-static {v0, v1, v4, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    .line 4052
    const-string v1, "COSINE_TABLE_B"

    sget-object v2, Lorg/apache/commons/math3/util/FastMath;->COSINE_TABLE_B:[D

    invoke-static {v0, v1, v4, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    .line 4053
    const-string v1, "TANGENT_TABLE_A"

    sget-object v2, Lorg/apache/commons/math3/util/FastMath;->TANGENT_TABLE_A:[D

    invoke-static {v0, v1, v4, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    .line 4054
    const-string v1, "TANGENT_TABLE_B"

    sget-object v2, Lorg/apache/commons/math3/util/FastMath;->TANGENT_TABLE_B:[D

    invoke-static {v0, v1, v4, v2}, Lorg/apache/commons/math3/util/FastMathCalc;->printarray(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    .line 4055
    return-void
.end method

.method public static max(DD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 3562
    cmpl-double v2, p0, p2

    if-lez v2, :cond_1

    .line 3578
    .end local p0    # "a":D
    :cond_0
    :goto_0
    return-wide p0

    .line 3565
    .restart local p0    # "a":D
    :cond_1
    cmpg-double v2, p0, p2

    if-gez v2, :cond_2

    move-wide p0, p2

    .line 3566
    goto :goto_0

    .line 3569
    :cond_2
    cmpl-double v2, p0, p2

    if-eqz v2, :cond_3

    .line 3570
    const-wide/high16 p0, 0x7ff8000000000000L    # NaN

    goto :goto_0

    .line 3574
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 3575
    .local v0, "bits":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    move-wide p0, p2

    .line 3576
    goto :goto_0
.end method

.method public static max(FF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 3537
    cmpl-float v1, p0, p1

    if-lez v1, :cond_1

    .line 3553
    .end local p0    # "a":F
    :cond_0
    :goto_0
    return p0

    .line 3540
    .restart local p0    # "a":F
    :cond_1
    cmpg-float v1, p0, p1

    if-gez v1, :cond_2

    move p0, p1

    .line 3541
    goto :goto_0

    .line 3544
    :cond_2
    cmpl-float v1, p0, p1

    if-eqz v1, :cond_3

    .line 3545
    const/high16 p0, 0x7fc00000    # NaNf

    goto :goto_0

    .line 3549
    :cond_3
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 3550
    .local v0, "bits":I
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    move p0, p1

    .line 3551
    goto :goto_0
.end method

.method public static max(II)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 3519
    if-gt p0, p1, :cond_0

    .end local p1    # "b":I
    :goto_0
    return p1

    .restart local p1    # "b":I
    :cond_0
    move p1, p0

    goto :goto_0
.end method

.method public static max(JJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 3528
    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    .end local p2    # "b":J
    :goto_0
    return-wide p2

    .restart local p2    # "b":J
    :cond_0
    move-wide p2, p0

    goto :goto_0
.end method

.method public static min(DD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 3494
    cmpl-double v2, p0, p2

    if-lez v2, :cond_1

    .line 3510
    .end local p2    # "b":D
    :cond_0
    :goto_0
    return-wide p2

    .line 3497
    .restart local p2    # "b":D
    :cond_1
    cmpg-double v2, p0, p2

    if-gez v2, :cond_2

    move-wide p2, p0

    .line 3498
    goto :goto_0

    .line 3501
    :cond_2
    cmpl-double v2, p0, p2

    if-eqz v2, :cond_3

    .line 3502
    const-wide/high16 p2, 0x7ff8000000000000L    # NaN

    goto :goto_0

    .line 3506
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 3507
    .local v0, "bits":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    move-wide p2, p0

    .line 3508
    goto :goto_0
.end method

.method public static min(FF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 3469
    cmpl-float v1, p0, p1

    if-lez v1, :cond_1

    .line 3485
    .end local p1    # "b":F
    :cond_0
    :goto_0
    return p1

    .line 3472
    .restart local p1    # "b":F
    :cond_1
    cmpg-float v1, p0, p1

    if-gez v1, :cond_2

    move p1, p0

    .line 3473
    goto :goto_0

    .line 3476
    :cond_2
    cmpl-float v1, p0, p1

    if-eqz v1, :cond_3

    .line 3477
    const/high16 p1, 0x7fc00000    # NaNf

    goto :goto_0

    .line 3481
    :cond_3
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 3482
    .local v0, "bits":I
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    move p1, p0

    .line 3483
    goto :goto_0
.end method

.method public static min(II)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 3451
    if-gt p0, p1, :cond_0

    .end local p0    # "a":I
    :goto_0
    return p0

    .restart local p0    # "a":I
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static min(JJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 3460
    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    .end local p0    # "a":J
    :goto_0
    return-wide p0

    .restart local p0    # "a":J
    :cond_0
    move-wide p0, p2

    goto :goto_0
.end method

.method public static multiplyExact(II)I
    .locals 5
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    const v3, 0x7fffffff

    const/4 v2, -0x1

    const/high16 v1, -0x80000000

    .line 3823
    if-lez p1, :cond_0

    div-int v0, v3, p1

    if-gt p0, v0, :cond_2

    div-int v0, v1, p1

    if-lt p0, v0, :cond_2

    :cond_0
    if-ge p1, v2, :cond_1

    div-int v0, v1, p1

    if-gt p0, v0, :cond_2

    div-int v0, v3, p1

    if-lt p0, v0, :cond_2

    :cond_1
    if-ne p1, v2, :cond_3

    if-ne p0, v1, :cond_3

    .line 3826
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_MULTIPLICATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 3828
    :cond_3
    mul-int v0, p0, p1

    return v0
.end method

.method public static multiplyExact(JJ)J
    .locals 8
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v4, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    .line 3839
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    div-long v0, v6, p2

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    div-long v0, v2, p2

    cmp-long v0, p0, v0

    if-ltz v0, :cond_2

    :cond_0
    cmp-long v0, p2, v4

    if-gez v0, :cond_1

    div-long v0, v2, p2

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    div-long v0, v6, p2

    cmp-long v0, p0, v0

    if-ltz v0, :cond_2

    :cond_1
    cmp-long v0, p2, v4

    if-nez v0, :cond_3

    cmp-long v0, p0, v2

    if-nez v0, :cond_3

    .line 3842
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_MULTIPLICATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 3844
    :cond_3
    mul-long v0, p0, p2

    return-wide v0
.end method

.method public static nextAfter(DD)D
    .locals 8
    .param p0, "d"    # D
    .param p2, "direction"    # D

    .prologue
    .line 3276
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3277
    :cond_0
    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    .line 3293
    :goto_0
    return-wide v4

    .line 3278
    :cond_1
    cmpl-double v4, p0, p2

    if-nez v4, :cond_2

    move-wide v4, p2

    .line 3279
    goto :goto_0

    .line 3280
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3281
    const-wide/16 v4, 0x0

    cmpg-double v4, p0, v4

    if-gez v4, :cond_3

    const-wide v4, -0x10000000000001L

    goto :goto_0

    :cond_3
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_0

    .line 3282
    :cond_4
    const-wide/16 v4, 0x0

    cmpl-double v4, p0, v4

    if-nez v4, :cond_6

    .line 3283
    const-wide/16 v4, 0x0

    cmpg-double v4, p2, v4

    if-gez v4, :cond_5

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_5
    const-wide/16 v4, 0x1

    goto :goto_0

    .line 3288
    :cond_6
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 3289
    .local v0, "bits":J
    const-wide/high16 v4, -0x8000000000000000L

    and-long v2, v0, v4

    .line 3290
    .local v2, "sign":J
    cmpg-double v4, p2, p0

    if-gez v4, :cond_7

    const/4 v4, 0x1

    move v5, v4

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-nez v4, :cond_8

    const/4 v4, 0x1

    :goto_2
    xor-int/2addr v4, v5

    if-eqz v4, :cond_9

    .line 3291
    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v4, v0

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    or-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    goto :goto_0

    .line 3290
    :cond_7
    const/4 v4, 0x0

    move v5, v4

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    .line 3293
    :cond_9
    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v4, v0

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    or-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    goto :goto_0
.end method

.method public static nextAfter(FD)F
    .locals 9
    .param p0, "f"    # F
    .param p1, "direction"    # D

    .prologue
    const v7, 0x7fffffff

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 3332
    float-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3333
    :cond_0
    const/high16 v2, 0x7fc00000    # NaNf

    .line 3349
    :goto_0
    return v2

    .line 3334
    :cond_1
    float-to-double v4, p0

    cmpl-double v4, v4, p1

    if-nez v4, :cond_2

    .line 3335
    double-to-float v2, p1

    goto :goto_0

    .line 3336
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3337
    cmpg-float v2, p0, v6

    if-gez v2, :cond_3

    const v2, -0x800001

    goto :goto_0

    :cond_3
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    .line 3338
    :cond_4
    cmpl-float v4, p0, v6

    if-nez v4, :cond_6

    .line 3339
    const-wide/16 v2, 0x0

    cmpg-double v2, p1, v2

    if-gez v2, :cond_5

    const v2, -0x7fffffff

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    .line 3344
    :cond_6
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 3345
    .local v0, "bits":I
    const/high16 v4, -0x80000000

    and-int v1, v0, v4

    .line 3346
    .local v1, "sign":I
    float-to-double v4, p0

    cmpg-double v4, p1, v4

    if-gez v4, :cond_7

    move v4, v2

    :goto_1
    if-nez v1, :cond_8

    :goto_2
    xor-int/2addr v2, v4

    if-eqz v2, :cond_9

    .line 3347
    and-int v2, v0, v7

    add-int/lit8 v2, v2, 0x1

    or-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    goto :goto_0

    :cond_7
    move v4, v3

    .line 3346
    goto :goto_1

    :cond_8
    move v2, v3

    goto :goto_2

    .line 3349
    :cond_9
    and-int v2, v0, v7

    add-int/lit8 v2, v2, -0x1

    or-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    goto :goto_0
.end method

.method public static nextDown(D)D
    .locals 2
    .param p0, "a"    # D

    .prologue
    .line 816
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextDown(F)F
    .locals 2
    .param p0, "a"    # F

    .prologue
    .line 825
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(FD)F

    move-result v0

    return v0
.end method

.method public static nextUp(D)D
    .locals 2
    .param p0, "a"    # D

    .prologue
    .line 799
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextUp(F)F
    .locals 2
    .param p0, "a"    # F

    .prologue
    .line 807
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(FD)F

    move-result v0

    return v0
.end method

.method private static polyCosine(D)D
    .locals 8
    .param p0, "x"    # D

    .prologue
    .line 1716
    mul-double v2, p0, p0

    .line 1718
    .local v2, "x2":D
    const-wide v0, 0x3efa0097667cf584L    # 2.479773539153719E-5

    .line 1719
    .local v0, "p":D
    mul-double v4, v0, v2

    const-wide v6, -0x40a93e93eebce3e0L    # -0.0013888888689039883

    add-double v0, v4, v6

    .line 1720
    mul-double v4, v0, v2

    const-wide v6, 0x3fa5555555553bb8L    # 0.041666666666621166

    add-double v0, v4, v6

    .line 1721
    mul-double v4, v0, v2

    const-wide v6, -0x4020000000000001L    # -0.49999999999999994

    add-double v0, v4, v6

    .line 1722
    mul-double/2addr v0, v2

    .line 1724
    return-wide v0
.end method

.method private static polySine(D)D
    .locals 8
    .param p0, "x"    # D

    .prologue
    .line 1696
    mul-double v2, p0, p0

    .line 1698
    .local v2, "x2":D
    const-wide v0, 0x3ec71d2322488cdeL    # 2.7553817452272217E-6

    .line 1699
    .local v0, "p":D
    mul-double v4, v0, v2

    const-wide v6, -0x40d5fe5fe9fd292eL    # -1.9841269659586505E-4

    add-double v0, v4, v6

    .line 1700
    mul-double v4, v0, v2

    const-wide v6, 0x3f811111111107c0L    # 0.008333333333329196

    add-double v0, v4, v6

    .line 1701
    mul-double v4, v0, v2

    const-wide v6, -0x403aaaaaaaaaaaabL    # -0.16666666666666666

    add-double v0, v4, v6

    .line 1704
    mul-double v4, v0, v2

    mul-double v0, v4, p0

    .line 1706
    return-wide v0
.end method

.method public static pow(DD)D
    .locals 36
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    .line 1461
    const/4 v15, 0x2

    new-array v14, v15, [D

    .line 1463
    .local v14, "lns":[D
    const-wide/16 v32, 0x0

    cmpl-double v15, p2, v32

    if-nez v15, :cond_1

    .line 1464
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 1617
    .end local p2    # "y":D
    :cond_0
    :goto_0
    return-wide p2

    .line 1467
    .restart local p2    # "y":D
    :cond_1
    cmpl-double v15, p0, p0

    if-eqz v15, :cond_2

    move-wide/from16 p2, p0

    .line 1468
    goto :goto_0

    .line 1472
    :cond_2
    const-wide/16 v32, 0x0

    cmpl-double v15, p0, v32

    if-nez v15, :cond_7

    .line 1473
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v8

    .line 1474
    .local v8, "bits":J
    const-wide/high16 v32, -0x8000000000000000L

    and-long v32, v32, v8

    const-wide/16 v34, 0x0

    cmp-long v15, v32, v34

    if-eqz v15, :cond_4

    .line 1476
    move-wide/from16 v0, p2

    double-to-long v0, v0

    move-wide/from16 v28, v0

    .line 1478
    .local v28, "yi":J
    const-wide/16 v32, 0x0

    cmpg-double v15, p2, v32

    if-gez v15, :cond_3

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v32, v0

    cmpl-double v15, p2, v32

    if-nez v15, :cond_3

    const-wide/16 v32, 0x1

    and-long v32, v32, v28

    const-wide/16 v34, 0x1

    cmp-long v15, v32, v34

    if-nez v15, :cond_3

    .line 1479
    const-wide/high16 p2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    .line 1482
    :cond_3
    const-wide/16 v32, 0x0

    cmpl-double v15, p2, v32

    if-lez v15, :cond_4

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v32, v0

    cmpl-double v15, p2, v32

    if-nez v15, :cond_4

    const-wide/16 v32, 0x1

    and-long v32, v32, v28

    const-wide/16 v34, 0x1

    cmp-long v15, v32, v34

    if-nez v15, :cond_4

    .line 1483
    const-wide/high16 p2, -0x8000000000000000L

    goto :goto_0

    .line 1487
    .end local v28    # "yi":J
    :cond_4
    const-wide/16 v32, 0x0

    cmpg-double v15, p2, v32

    if-gez v15, :cond_5

    .line 1488
    const-wide/high16 p2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 1490
    :cond_5
    const-wide/16 v32, 0x0

    cmpl-double v15, p2, v32

    if-lez v15, :cond_6

    .line 1491
    const-wide/16 p2, 0x0

    goto :goto_0

    .line 1494
    :cond_6
    const-wide/high16 p2, 0x7ff8000000000000L    # NaN

    goto :goto_0

    .line 1497
    .end local v8    # "bits":J
    :cond_7
    const-wide/high16 v32, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v15, p0, v32

    if-nez v15, :cond_9

    .line 1498
    cmpl-double v15, p2, p2

    if-nez v15, :cond_0

    .line 1501
    const-wide/16 v32, 0x0

    cmpg-double v15, p2, v32

    if-gez v15, :cond_8

    .line 1502
    const-wide/16 p2, 0x0

    goto :goto_0

    .line 1504
    :cond_8
    const-wide/high16 p2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto/16 :goto_0

    .line 1508
    :cond_9
    const-wide/high16 v32, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v15, p2, v32

    if-nez v15, :cond_c

    .line 1509
    mul-double v32, p0, p0

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    cmpl-double v15, v32, v34

    if-nez v15, :cond_a

    .line 1510
    const-wide/high16 p2, 0x7ff8000000000000L    # NaN

    goto/16 :goto_0

    .line 1513
    :cond_a
    mul-double v32, p0, p0

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    cmpl-double v15, v32, v34

    if-lez v15, :cond_b

    .line 1514
    const-wide/high16 p2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto/16 :goto_0

    .line 1516
    :cond_b
    const-wide/16 p2, 0x0

    goto/16 :goto_0

    .line 1520
    :cond_c
    const-wide/high16 v32, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v15, p0, v32

    if-nez v15, :cond_10

    .line 1521
    cmpl-double v15, p2, p2

    if-nez v15, :cond_0

    .line 1525
    const-wide/16 v32, 0x0

    cmpg-double v15, p2, v32

    if-gez v15, :cond_e

    .line 1526
    move-wide/from16 v0, p2

    double-to-long v0, v0

    move-wide/from16 v28, v0

    .line 1527
    .restart local v28    # "yi":J
    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v32, v0

    cmpl-double v15, p2, v32

    if-nez v15, :cond_d

    const-wide/16 v32, 0x1

    and-long v32, v32, v28

    const-wide/16 v34, 0x1

    cmp-long v15, v32, v34

    if-nez v15, :cond_d

    .line 1528
    const-wide/high16 p2, -0x8000000000000000L

    goto/16 :goto_0

    .line 1531
    :cond_d
    const-wide/16 p2, 0x0

    goto/16 :goto_0

    .line 1534
    .end local v28    # "yi":J
    :cond_e
    const-wide/16 v32, 0x0

    cmpl-double v15, p2, v32

    if-lez v15, :cond_10

    .line 1535
    move-wide/from16 v0, p2

    double-to-long v0, v0

    move-wide/from16 v28, v0

    .line 1536
    .restart local v28    # "yi":J
    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v32, v0

    cmpl-double v15, p2, v32

    if-nez v15, :cond_f

    const-wide/16 v32, 0x1

    and-long v32, v32, v28

    const-wide/16 v34, 0x1

    cmp-long v15, v32, v34

    if-nez v15, :cond_f

    .line 1537
    const-wide/high16 p2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto/16 :goto_0

    .line 1540
    :cond_f
    const-wide/high16 p2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto/16 :goto_0

    .line 1544
    .end local v28    # "yi":J
    :cond_10
    const-wide/high16 v32, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v15, p2, v32

    if-nez v15, :cond_13

    .line 1546
    mul-double v32, p0, p0

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    cmpl-double v15, v32, v34

    if-nez v15, :cond_11

    .line 1547
    const-wide/high16 p2, 0x7ff8000000000000L    # NaN

    goto/16 :goto_0

    .line 1550
    :cond_11
    mul-double v32, p0, p0

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    cmpg-double v15, v32, v34

    if-gez v15, :cond_12

    .line 1551
    const-wide/high16 p2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto/16 :goto_0

    .line 1553
    :cond_12
    const-wide/16 p2, 0x0

    goto/16 :goto_0

    .line 1558
    :cond_13
    const-wide/16 v32, 0x0

    cmpg-double v15, p0, v32

    if-gez v15, :cond_18

    .line 1560
    const-wide/high16 v32, 0x4340000000000000L    # 9.007199254740992E15

    cmpl-double v15, p2, v32

    if-gez v15, :cond_14

    const-wide/high16 v32, -0x3cc0000000000000L    # -9.007199254740992E15

    cmpg-double v15, p2, v32

    if-gtz v15, :cond_15

    .line 1561
    :cond_14
    move-wide/from16 v0, p0

    neg-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide p2

    goto/16 :goto_0

    .line 1564
    :cond_15
    move-wide/from16 v0, p2

    double-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    long-to-double v0, v0

    move-wide/from16 v32, v0

    cmpl-double v15, p2, v32

    if-nez v15, :cond_17

    .line 1566
    move-wide/from16 v0, p2

    double-to-long v0, v0

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x1

    and-long v32, v32, v34

    const-wide/16 v34, 0x0

    cmp-long v15, v32, v34

    if-nez v15, :cond_16

    move-wide/from16 v0, p0

    neg-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v32

    :goto_1
    move-wide/from16 p2, v32

    goto/16 :goto_0

    :cond_16
    move-wide/from16 v0, p0

    neg-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v32

    move-wide/from16 v0, v32

    neg-double v0, v0

    move-wide/from16 v32, v0

    goto :goto_1

    .line 1568
    :cond_17
    const-wide/high16 p2, 0x7ff8000000000000L    # NaN

    goto/16 :goto_0

    .line 1575
    :cond_18
    const-wide v32, 0x7dfe94c85c298c4cL    # 8.0E298

    cmpg-double v15, p2, v32

    if-gez v15, :cond_19

    const-wide v32, -0x2016b37a3d673b4L    # -8.0E298

    cmpl-double v15, p2, v32

    if-lez v15, :cond_19

    .line 1576
    const-wide/high16 v32, 0x41d0000000000000L    # 1.073741824E9

    mul-double v20, p2, v32

    .line 1577
    .local v20, "tmp1":D
    add-double v32, p2, v20

    sub-double v24, v32, v20

    .line 1578
    .local v24, "ya":D
    sub-double v26, p2, v24

    .line 1587
    .local v26, "yb":D
    :goto_2
    move-wide/from16 v0, p0

    invoke-static {v0, v1, v14}, Lorg/apache/commons/math3/util/FastMath;->log(D[D)D

    move-result-wide v16

    .line 1588
    .local v16, "lores":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v15

    if-eqz v15, :cond_1a

    move-wide/from16 p2, v16

    .line 1589
    goto/16 :goto_0

    .line 1580
    .end local v16    # "lores":D
    .end local v20    # "tmp1":D
    .end local v24    # "ya":D
    .end local v26    # "yb":D
    :cond_19
    const-wide/high16 v32, 0x3e10000000000000L    # 9.313225746154785E-10

    mul-double v20, p2, v32

    .line 1581
    .restart local v20    # "tmp1":D
    const-wide/high16 v32, 0x3e10000000000000L    # 9.313225746154785E-10

    mul-double v22, v20, v32

    .line 1582
    .local v22, "tmp2":D
    add-double v32, v20, v22

    sub-double v32, v32, v20

    const-wide/high16 v34, 0x41d0000000000000L    # 1.073741824E9

    mul-double v32, v32, v34

    const-wide/high16 v34, 0x41d0000000000000L    # 1.073741824E9

    mul-double v24, v32, v34

    .line 1583
    .restart local v24    # "ya":D
    sub-double v26, p2, v24

    .restart local v26    # "yb":D
    goto :goto_2

    .line 1592
    .end local v22    # "tmp2":D
    .restart local v16    # "lores":D
    :cond_1a
    const/4 v15, 0x0

    aget-wide v10, v14, v15

    .line 1593
    .local v10, "lna":D
    const/4 v15, 0x1

    aget-wide v12, v14, v15

    .line 1596
    .local v12, "lnb":D
    const-wide/high16 v32, 0x41d0000000000000L    # 1.073741824E9

    mul-double v20, v10, v32

    .line 1597
    add-double v32, v10, v20

    sub-double v22, v32, v20

    .line 1598
    .restart local v22    # "tmp2":D
    sub-double v32, v10, v22

    add-double v12, v12, v32

    .line 1599
    move-wide/from16 v10, v22

    .line 1602
    mul-double v4, v10, v24

    .line 1603
    .local v4, "aa":D
    mul-double v32, v10, v26

    mul-double v34, v12, v24

    add-double v32, v32, v34

    mul-double v34, v12, v26

    add-double v6, v32, v34

    .line 1605
    .local v6, "ab":D
    add-double v10, v4, v6

    .line 1606
    sub-double v32, v10, v4

    sub-double v32, v32, v6

    move-wide/from16 v0, v32

    neg-double v12, v0

    .line 1608
    const-wide v30, 0x3f81111111111111L    # 0.008333333333333333

    .line 1609
    .local v30, "z":D
    mul-double v32, v30, v12

    const-wide v34, 0x3fa5555555555555L    # 0.041666666666666664

    add-double v30, v32, v34

    .line 1610
    mul-double v32, v30, v12

    const-wide v34, 0x3fc5555555555555L    # 0.16666666666666666

    add-double v30, v32, v34

    .line 1611
    mul-double v32, v30, v12

    const-wide/high16 v34, 0x3fe0000000000000L    # 0.5

    add-double v30, v32, v34

    .line 1612
    mul-double v32, v30, v12

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    add-double v30, v32, v34

    .line 1613
    mul-double v30, v30, v12

    .line 1615
    const/4 v15, 0x0

    move-wide/from16 v0, v30

    invoke-static {v10, v11, v0, v1, v15}, Lorg/apache/commons/math3/util/FastMath;->exp(DD[D)D

    move-result-wide v18

    .local v18, "result":D
    move-wide/from16 p2, v18

    .line 1617
    goto/16 :goto_0
.end method

.method public static pow(DI)D
    .locals 44
    .param p0, "d"    # D
    .param p2, "e"    # I

    .prologue
    .line 1631
    if-nez p2, :cond_0

    .line 1632
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    .line 1684
    :goto_0
    return-wide v38

    .line 1633
    :cond_0
    if-gez p2, :cond_1

    .line 1634
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 p2, v0

    .line 1635
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    div-double p0, v38, p0

    .line 1640
    :cond_1
    const v32, 0x8000001

    .line 1641
    .local v32, "splitFactor":I
    const-wide v38, 0x41a0000002000000L    # 1.34217729E8

    mul-double v8, v38, p0

    .line 1642
    .local v8, "cd":D
    sub-double v38, v8, p0

    sub-double v10, v8, v38

    .line 1643
    .local v10, "d1High":D
    sub-double v12, p0, v10

    .line 1646
    .local v12, "d1Low":D
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    .line 1647
    .local v28, "resultHigh":D
    const-wide/16 v30, 0x0

    .line 1650
    .local v30, "resultLow":D
    move-wide/from16 v14, p0

    .line 1651
    .local v14, "d2p":D
    move-wide/from16 v20, v10

    .line 1652
    .local v20, "d2pHigh":D
    move-wide/from16 v22, v12

    .line 1654
    .local v22, "d2pLow":D
    :goto_1
    if-eqz p2, :cond_3

    .line 1656
    and-int/lit8 v33, p2, 0x1

    if-eqz v33, :cond_2

    .line 1659
    mul-double v34, v28, v14

    .line 1660
    .local v34, "tmpHigh":D
    const-wide v38, 0x41a0000002000000L    # 1.34217729E8

    mul-double v4, v38, v28

    .line 1661
    .local v4, "cRH":D
    sub-double v38, v4, v28

    sub-double v24, v4, v38

    .line 1662
    .local v24, "rHH":D
    sub-double v26, v28, v24

    .line 1663
    .local v26, "rHL":D
    mul-double v38, v26, v22

    mul-double v40, v24, v20

    sub-double v40, v34, v40

    mul-double v42, v26, v20

    sub-double v40, v40, v42

    mul-double v42, v24, v22

    sub-double v40, v40, v42

    sub-double v36, v38, v40

    .line 1664
    .local v36, "tmpLow":D
    move-wide/from16 v28, v34

    .line 1665
    mul-double v38, v30, v14

    add-double v30, v38, v36

    .line 1670
    .end local v4    # "cRH":D
    .end local v24    # "rHH":D
    .end local v26    # "rHL":D
    .end local v34    # "tmpHigh":D
    .end local v36    # "tmpLow":D
    :cond_2
    mul-double v34, v20, v14

    .line 1671
    .restart local v34    # "tmpHigh":D
    const-wide v38, 0x41a0000002000000L    # 1.34217729E8

    mul-double v2, v38, v20

    .line 1672
    .local v2, "cD2pH":D
    sub-double v38, v2, v20

    sub-double v16, v2, v38

    .line 1673
    .local v16, "d2pHH":D
    sub-double v18, v20, v16

    .line 1674
    .local v18, "d2pHL":D
    mul-double v38, v18, v22

    mul-double v40, v16, v20

    sub-double v40, v34, v40

    mul-double v42, v18, v20

    sub-double v40, v40, v42

    mul-double v42, v16, v22

    sub-double v40, v40, v42

    sub-double v36, v38, v40

    .line 1675
    .restart local v36    # "tmpLow":D
    const-wide v38, 0x41a0000002000000L    # 1.34217729E8

    mul-double v6, v38, v34

    .line 1676
    .local v6, "cTmpH":D
    sub-double v38, v6, v34

    sub-double v20, v6, v38

    .line 1677
    mul-double v38, v22, v14

    add-double v38, v38, v36

    sub-double v40, v34, v20

    add-double v22, v38, v40

    .line 1678
    add-double v14, v20, v22

    .line 1680
    shr-int/lit8 p2, p2, 0x1

    .line 1682
    goto :goto_1

    .line 1684
    .end local v2    # "cD2pH":D
    .end local v6    # "cTmpH":D
    .end local v16    # "d2pHH":D
    .end local v18    # "d2pHL":D
    .end local v34    # "tmpHigh":D
    .end local v36    # "tmpLow":D
    :cond_3
    add-double v38, v28, v30

    goto/16 :goto_0
.end method

.method public static random()D
    .locals 2

    .prologue
    .line 833
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    return-wide v0
.end method

.method private static reducePayneHanek(D[D)V
    .locals 54
    .param p0, "x"    # D
    .param p2, "result"    # [D

    .prologue
    .line 2028
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v24

    .line 2029
    .local v24, "inbits":J
    const/16 v35, 0x34

    shr-long v50, v24, v35

    const-wide/16 v52, 0x7ff

    and-long v50, v50, v52

    move-wide/from16 v0, v50

    long-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    add-int/lit16 v0, v0, -0x3ff

    move/from16 v17, v0

    .line 2032
    .local v17, "exponent":I
    const-wide v50, 0xfffffffffffffL

    and-long v24, v24, v50

    .line 2033
    const-wide/high16 v50, 0x10000000000000L

    or-long v24, v24, v50

    .line 2036
    add-int/lit8 v17, v17, 0x1

    .line 2037
    const/16 v35, 0xb

    shl-long v24, v24, v35

    .line 2043
    shr-int/lit8 v22, v17, 0x6

    .line 2044
    .local v22, "idx":I
    shl-int/lit8 v35, v22, 0x6

    sub-int v34, v17, v35

    .line 2046
    .local v34, "shift":I
    if-eqz v34, :cond_1d

    .line 2047
    if-nez v22, :cond_1c

    const-wide/16 v36, 0x0

    .line 2048
    .local v36, "shpi0":J
    :goto_0
    sget-object v35, Lorg/apache/commons/math3/util/FastMath;->RECIP_2PI:[J

    aget-wide v50, v35, v22

    rsub-int/lit8 v35, v34, 0x40

    ushr-long v50, v50, v35

    or-long v36, v36, v50

    .line 2049
    sget-object v35, Lorg/apache/commons/math3/util/FastMath;->RECIP_2PI:[J

    aget-wide v50, v35, v22

    shl-long v50, v50, v34

    sget-object v35, Lorg/apache/commons/math3/util/FastMath;->RECIP_2PI:[J

    add-int/lit8 v52, v22, 0x1

    aget-wide v52, v35, v52

    rsub-int/lit8 v35, v34, 0x40

    ushr-long v52, v52, v35

    or-long v38, v50, v52

    .line 2050
    .local v38, "shpiA":J
    sget-object v35, Lorg/apache/commons/math3/util/FastMath;->RECIP_2PI:[J

    add-int/lit8 v50, v22, 0x1

    aget-wide v50, v35, v50

    shl-long v50, v50, v34

    sget-object v35, Lorg/apache/commons/math3/util/FastMath;->RECIP_2PI:[J

    add-int/lit8 v52, v22, 0x2

    aget-wide v52, v35, v52

    rsub-int/lit8 v35, v34, 0x40

    ushr-long v52, v52, v35

    or-long v40, v50, v52

    .line 2058
    .local v40, "shpiB":J
    :goto_1
    const/16 v35, 0x20

    ushr-long v2, v24, v35

    .line 2059
    .local v2, "a":J
    const-wide v50, 0xffffffffL

    and-long v8, v24, v50

    .line 2061
    .local v8, "b":J
    const/16 v35, 0x20

    ushr-long v18, v38, v35

    .line 2062
    .local v18, "c":J
    const-wide v50, 0xffffffffL

    and-long v20, v38, v50

    .line 2064
    .local v20, "d":J
    mul-long v4, v2, v18

    .line 2065
    .local v4, "ac":J
    mul-long v12, v8, v20

    .line 2066
    .local v12, "bd":J
    mul-long v10, v8, v18

    .line 2067
    .local v10, "bc":J
    mul-long v6, v2, v20

    .line 2069
    .local v6, "ad":J
    const/16 v35, 0x20

    shl-long v50, v6, v35

    add-long v32, v12, v50

    .line 2070
    .local v32, "prodB":J
    const/16 v35, 0x20

    ushr-long v50, v6, v35

    add-long v30, v4, v50

    .line 2072
    .local v30, "prodA":J
    const-wide/high16 v50, -0x8000000000000000L

    and-long v50, v50, v12

    const-wide/16 v52, 0x0

    cmp-long v35, v50, v52

    if-eqz v35, :cond_1f

    const/4 v14, 0x1

    .line 2073
    .local v14, "bita":Z
    :goto_2
    const-wide v50, 0x80000000L

    and-long v50, v50, v6

    const-wide/16 v52, 0x0

    cmp-long v35, v50, v52

    if-eqz v35, :cond_20

    const/4 v15, 0x1

    .line 2074
    .local v15, "bitb":Z
    :goto_3
    const-wide/high16 v50, -0x8000000000000000L

    and-long v50, v50, v32

    const-wide/16 v52, 0x0

    cmp-long v35, v50, v52

    if-eqz v35, :cond_21

    const/16 v16, 0x1

    .line 2077
    .local v16, "bitsum":Z
    :goto_4
    if-eqz v14, :cond_0

    if-nez v15, :cond_2

    :cond_0
    if-nez v14, :cond_1

    if-eqz v15, :cond_3

    :cond_1
    if-nez v16, :cond_3

    .line 2079
    :cond_2
    const-wide/16 v50, 0x1

    add-long v30, v30, v50

    .line 2082
    :cond_3
    const-wide/high16 v50, -0x8000000000000000L

    and-long v50, v50, v32

    const-wide/16 v52, 0x0

    cmp-long v35, v50, v52

    if-eqz v35, :cond_22

    const/4 v14, 0x1

    .line 2083
    :goto_5
    const-wide v50, 0x80000000L

    and-long v50, v50, v10

    const-wide/16 v52, 0x0

    cmp-long v35, v50, v52

    if-eqz v35, :cond_23

    const/4 v15, 0x1

    .line 2085
    :goto_6
    const/16 v35, 0x20

    shl-long v50, v10, v35

    add-long v32, v32, v50

    .line 2086
    const/16 v35, 0x20

    ushr-long v50, v10, v35

    add-long v30, v30, v50

    .line 2088
    const-wide/high16 v50, -0x8000000000000000L

    and-long v50, v50, v32

    const-wide/16 v52, 0x0

    cmp-long v35, v50, v52

    if-eqz v35, :cond_24

    const/16 v16, 0x1

    .line 2091
    :goto_7
    if-eqz v14, :cond_4

    if-nez v15, :cond_6

    :cond_4
    if-nez v14, :cond_5

    if-eqz v15, :cond_7

    :cond_5
    if-nez v16, :cond_7

    .line 2093
    :cond_6
    const-wide/16 v50, 0x1

    add-long v30, v30, v50

    .line 2097
    :cond_7
    const/16 v35, 0x20

    ushr-long v18, v40, v35

    .line 2098
    const-wide v50, 0xffffffffL

    and-long v20, v40, v50

    .line 2099
    mul-long v4, v2, v18

    .line 2100
    mul-long v10, v8, v18

    .line 2101
    mul-long v6, v2, v20

    .line 2104
    add-long v50, v10, v6

    const/16 v35, 0x20

    ushr-long v50, v50, v35

    add-long v4, v4, v50

    .line 2106
    const-wide/high16 v50, -0x8000000000000000L

    and-long v50, v50, v32

    const-wide/16 v52, 0x0

    cmp-long v35, v50, v52

    if-eqz v35, :cond_25

    const/4 v14, 0x1

    .line 2107
    :goto_8
    const-wide/high16 v50, -0x8000000000000000L

    and-long v50, v50, v4

    const-wide/16 v52, 0x0

    cmp-long v35, v50, v52

    if-eqz v35, :cond_26

    const/4 v15, 0x1

    .line 2108
    :goto_9
    add-long v32, v32, v4

    .line 2109
    const-wide/high16 v50, -0x8000000000000000L

    and-long v50, v50, v32

    const-wide/16 v52, 0x0

    cmp-long v35, v50, v52

    if-eqz v35, :cond_27

    const/16 v16, 0x1

    .line 2111
    :goto_a
    if-eqz v14, :cond_8

    if-nez v15, :cond_a

    :cond_8
    if-nez v14, :cond_9

    if-eqz v15, :cond_b

    :cond_9
    if-nez v16, :cond_b

    .line 2113
    :cond_a
    const-wide/16 v50, 0x1

    add-long v30, v30, v50

    .line 2117
    :cond_b
    const/16 v35, 0x20

    ushr-long v18, v36, v35

    .line 2118
    const-wide v50, 0xffffffffL

    and-long v20, v36, v50

    .line 2120
    mul-long v12, v8, v20

    .line 2121
    mul-long v10, v8, v18

    .line 2122
    mul-long v6, v2, v20

    .line 2124
    add-long v50, v10, v6

    const/16 v35, 0x20

    shl-long v50, v50, v35

    add-long v50, v50, v12

    add-long v30, v30, v50

    .line 2136
    const/16 v35, 0x3e

    ushr-long v50, v30, v35

    move-wide/from16 v0, v50

    long-to-int v0, v0

    move/from16 v23, v0

    .line 2139
    .local v23, "intPart":I
    const/16 v35, 0x2

    shl-long v30, v30, v35

    .line 2140
    const/16 v35, 0x3e

    ushr-long v50, v32, v35

    or-long v30, v30, v50

    .line 2141
    const/16 v35, 0x2

    shl-long v32, v32, v35

    .line 2144
    const/16 v35, 0x20

    ushr-long v2, v30, v35

    .line 2145
    const-wide v50, 0xffffffffL

    and-long v8, v30, v50

    .line 2147
    sget-object v35, Lorg/apache/commons/math3/util/FastMath;->PI_O_4_BITS:[J

    const/16 v50, 0x0

    aget-wide v50, v35, v50

    const/16 v35, 0x20

    ushr-long v18, v50, v35

    .line 2148
    sget-object v35, Lorg/apache/commons/math3/util/FastMath;->PI_O_4_BITS:[J

    const/16 v50, 0x0

    aget-wide v50, v35, v50

    const-wide v52, 0xffffffffL

    and-long v20, v50, v52

    .line 2150
    mul-long v4, v2, v18

    .line 2151
    mul-long v12, v8, v20

    .line 2152
    mul-long v10, v8, v18

    .line 2153
    mul-long v6, v2, v20

    .line 2155
    const/16 v35, 0x20

    shl-long v50, v6, v35

    add-long v28, v12, v50

    .line 2156
    .local v28, "prod2B":J
    const/16 v35, 0x20

    ushr-long v50, v6, v35

    add-long v26, v4, v50

    .line 2158
    .local v26, "prod2A":J
    const-wide/high16 v50, -0x8000000000000000L

    and-long v50, v50, v12

    const-wide/16 v52, 0x0

    cmp-long v35, v50, v52

    if-eqz v35, :cond_28

    const/4 v14, 0x1

    .line 2159
    :goto_b
    const-wide v50, 0x80000000L

    and-long v50, v50, v6

    const-wide/16 v52, 0x0

    cmp-long v35, v50, v52

    if-eqz v35, :cond_29

    const/4 v15, 0x1

    .line 2160
    :goto_c
    const-wide/high16 v50, -0x8000000000000000L

    and-long v50, v50, v28

    const-wide/16 v52, 0x0

    cmp-long v35, v50, v52

    if-eqz v35, :cond_2a

    const/16 v16, 0x1

    .line 2163
    :goto_d
    if-eqz v14, :cond_c

    if-nez v15, :cond_e

    :cond_c
    if-nez v14, :cond_d

    if-eqz v15, :cond_f

    :cond_d
    if-nez v16, :cond_f

    .line 2165
    :cond_e
    const-wide/16 v50, 0x1

    add-long v26, v26, v50

    .line 2168
    :cond_f
    const-wide/high16 v50, -0x8000000000000000L

    and-long v50, v50, v28

    const-wide/16 v52, 0x0

    cmp-long v35, v50, v52

    if-eqz v35, :cond_2b

    const/4 v14, 0x1

    .line 2169
    :goto_e
    const-wide v50, 0x80000000L

    and-long v50, v50, v10

    const-wide/16 v52, 0x0

    cmp-long v35, v50, v52

    if-eqz v35, :cond_2c

    const/4 v15, 0x1

    .line 2171
    :goto_f
    const/16 v35, 0x20

    shl-long v50, v10, v35

    add-long v28, v28, v50

    .line 2172
    const/16 v35, 0x20

    ushr-long v50, v10, v35

    add-long v26, v26, v50

    .line 2174
    const-wide/high16 v50, -0x8000000000000000L

    and-long v50, v50, v28

    const-wide/16 v52, 0x0

    cmp-long v35, v50, v52

    if-eqz v35, :cond_2d

    const/16 v16, 0x1

    .line 2177
    :goto_10
    if-eqz v14, :cond_10

    if-nez v15, :cond_12

    :cond_10
    if-nez v14, :cond_11

    if-eqz v15, :cond_13

    :cond_11
    if-nez v16, :cond_13

    .line 2179
    :cond_12
    const-wide/16 v50, 0x1

    add-long v26, v26, v50

    .line 2183
    :cond_13
    sget-object v35, Lorg/apache/commons/math3/util/FastMath;->PI_O_4_BITS:[J

    const/16 v50, 0x1

    aget-wide v50, v35, v50

    const/16 v35, 0x20

    ushr-long v18, v50, v35

    .line 2184
    sget-object v35, Lorg/apache/commons/math3/util/FastMath;->PI_O_4_BITS:[J

    const/16 v50, 0x1

    aget-wide v50, v35, v50

    const-wide v52, 0xffffffffL

    and-long v20, v50, v52

    .line 2185
    mul-long v4, v2, v18

    .line 2186
    mul-long v10, v8, v18

    .line 2187
    mul-long v6, v2, v20

    .line 2190
    add-long v50, v10, v6

    const/16 v35, 0x20

    ushr-long v50, v50, v35

    add-long v4, v4, v50

    .line 2192
    const-wide/high16 v50, -0x8000000000000000L

    and-long v50, v50, v28

    const-wide/16 v52, 0x0

    cmp-long v35, v50, v52

    if-eqz v35, :cond_2e

    const/4 v14, 0x1

    .line 2193
    :goto_11
    const-wide/high16 v50, -0x8000000000000000L

    and-long v50, v50, v4

    const-wide/16 v52, 0x0

    cmp-long v35, v50, v52

    if-eqz v35, :cond_2f

    const/4 v15, 0x1

    .line 2194
    :goto_12
    add-long v28, v28, v4

    .line 2195
    const-wide/high16 v50, -0x8000000000000000L

    and-long v50, v50, v28

    const-wide/16 v52, 0x0

    cmp-long v35, v50, v52

    if-eqz v35, :cond_30

    const/16 v16, 0x1

    .line 2197
    :goto_13
    if-eqz v14, :cond_14

    if-nez v15, :cond_16

    :cond_14
    if-nez v14, :cond_15

    if-eqz v15, :cond_17

    :cond_15
    if-nez v16, :cond_17

    .line 2199
    :cond_16
    const-wide/16 v50, 0x1

    add-long v26, v26, v50

    .line 2203
    :cond_17
    const/16 v35, 0x20

    ushr-long v2, v32, v35

    .line 2204
    const-wide v50, 0xffffffffL

    and-long v8, v32, v50

    .line 2205
    sget-object v35, Lorg/apache/commons/math3/util/FastMath;->PI_O_4_BITS:[J

    const/16 v50, 0x0

    aget-wide v50, v35, v50

    const/16 v35, 0x20

    ushr-long v18, v50, v35

    .line 2206
    sget-object v35, Lorg/apache/commons/math3/util/FastMath;->PI_O_4_BITS:[J

    const/16 v50, 0x0

    aget-wide v50, v35, v50

    const-wide v52, 0xffffffffL

    and-long v20, v50, v52

    .line 2207
    mul-long v4, v2, v18

    .line 2208
    mul-long v10, v8, v18

    .line 2209
    mul-long v6, v2, v20

    .line 2212
    add-long v50, v10, v6

    const/16 v35, 0x20

    ushr-long v50, v50, v35

    add-long v4, v4, v50

    .line 2214
    const-wide/high16 v50, -0x8000000000000000L

    and-long v50, v50, v28

    const-wide/16 v52, 0x0

    cmp-long v35, v50, v52

    if-eqz v35, :cond_31

    const/4 v14, 0x1

    .line 2215
    :goto_14
    const-wide/high16 v50, -0x8000000000000000L

    and-long v50, v50, v4

    const-wide/16 v52, 0x0

    cmp-long v35, v50, v52

    if-eqz v35, :cond_32

    const/4 v15, 0x1

    .line 2216
    :goto_15
    add-long v28, v28, v4

    .line 2217
    const-wide/high16 v50, -0x8000000000000000L

    and-long v50, v50, v28

    const-wide/16 v52, 0x0

    cmp-long v35, v50, v52

    if-eqz v35, :cond_33

    const/16 v16, 0x1

    .line 2219
    :goto_16
    if-eqz v14, :cond_18

    if-nez v15, :cond_1a

    :cond_18
    if-nez v14, :cond_19

    if-eqz v15, :cond_1b

    :cond_19
    if-nez v16, :cond_1b

    .line 2221
    :cond_1a
    const-wide/16 v50, 0x1

    add-long v26, v26, v50

    .line 2225
    :cond_1b
    const/16 v35, 0xc

    ushr-long v50, v26, v35

    move-wide/from16 v0, v50

    long-to-double v0, v0

    move-wide/from16 v50, v0

    const-wide/high16 v52, 0x4330000000000000L    # 4.503599627370496E15

    div-double v46, v50, v52

    .line 2226
    .local v46, "tmpA":D
    const-wide/16 v50, 0xfff

    and-long v50, v50, v26

    const/16 v35, 0x28

    shl-long v50, v50, v35

    const/16 v35, 0x18

    ushr-long v52, v28, v35

    add-long v50, v50, v52

    move-wide/from16 v0, v50

    long-to-double v0, v0

    move-wide/from16 v50, v0

    const-wide/high16 v52, 0x4330000000000000L    # 4.503599627370496E15

    div-double v50, v50, v52

    const-wide/high16 v52, 0x4330000000000000L    # 4.503599627370496E15

    div-double v48, v50, v52

    .line 2228
    .local v48, "tmpB":D
    add-double v42, v46, v48

    .line 2229
    .local v42, "sumA":D
    sub-double v50, v42, v46

    sub-double v50, v50, v48

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v44, v0

    .line 2232
    .local v44, "sumB":D
    const/16 v35, 0x0

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v50, v0

    aput-wide v50, p2, v35

    .line 2233
    const/16 v35, 0x1

    const-wide/high16 v50, 0x4000000000000000L    # 2.0

    mul-double v50, v50, v42

    aput-wide v50, p2, v35

    .line 2234
    const/16 v35, 0x2

    const-wide/high16 v50, 0x4000000000000000L    # 2.0

    mul-double v50, v50, v44

    aput-wide v50, p2, v35

    .line 2235
    return-void

    .line 2047
    .end local v2    # "a":J
    .end local v4    # "ac":J
    .end local v6    # "ad":J
    .end local v8    # "b":J
    .end local v10    # "bc":J
    .end local v12    # "bd":J
    .end local v14    # "bita":Z
    .end local v15    # "bitb":Z
    .end local v16    # "bitsum":Z
    .end local v18    # "c":J
    .end local v20    # "d":J
    .end local v23    # "intPart":I
    .end local v26    # "prod2A":J
    .end local v28    # "prod2B":J
    .end local v30    # "prodA":J
    .end local v32    # "prodB":J
    .end local v36    # "shpi0":J
    .end local v38    # "shpiA":J
    .end local v40    # "shpiB":J
    .end local v42    # "sumA":D
    .end local v44    # "sumB":D
    .end local v46    # "tmpA":D
    .end local v48    # "tmpB":D
    :cond_1c
    sget-object v35, Lorg/apache/commons/math3/util/FastMath;->RECIP_2PI:[J

    add-int/lit8 v50, v22, -0x1

    aget-wide v50, v35, v50

    shl-long v36, v50, v34

    goto/16 :goto_0

    .line 2052
    :cond_1d
    if-nez v22, :cond_1e

    const-wide/16 v36, 0x0

    .line 2053
    .restart local v36    # "shpi0":J
    :goto_17
    sget-object v35, Lorg/apache/commons/math3/util/FastMath;->RECIP_2PI:[J

    aget-wide v38, v35, v22

    .line 2054
    .restart local v38    # "shpiA":J
    sget-object v35, Lorg/apache/commons/math3/util/FastMath;->RECIP_2PI:[J

    add-int/lit8 v50, v22, 0x1

    aget-wide v40, v35, v50

    .restart local v40    # "shpiB":J
    goto/16 :goto_1

    .line 2052
    .end local v36    # "shpi0":J
    .end local v38    # "shpiA":J
    .end local v40    # "shpiB":J
    :cond_1e
    sget-object v35, Lorg/apache/commons/math3/util/FastMath;->RECIP_2PI:[J

    add-int/lit8 v50, v22, -0x1

    aget-wide v36, v35, v50

    goto :goto_17

    .line 2072
    .restart local v2    # "a":J
    .restart local v4    # "ac":J
    .restart local v6    # "ad":J
    .restart local v8    # "b":J
    .restart local v10    # "bc":J
    .restart local v12    # "bd":J
    .restart local v18    # "c":J
    .restart local v20    # "d":J
    .restart local v30    # "prodA":J
    .restart local v32    # "prodB":J
    .restart local v36    # "shpi0":J
    .restart local v38    # "shpiA":J
    .restart local v40    # "shpiB":J
    :cond_1f
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 2073
    .restart local v14    # "bita":Z
    :cond_20
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2074
    .restart local v15    # "bitb":Z
    :cond_21
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 2082
    .restart local v16    # "bitsum":Z
    :cond_22
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 2083
    :cond_23
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 2088
    :cond_24
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 2106
    :cond_25
    const/4 v14, 0x0

    goto/16 :goto_8

    .line 2107
    :cond_26
    const/4 v15, 0x0

    goto/16 :goto_9

    .line 2109
    :cond_27
    const/16 v16, 0x0

    goto/16 :goto_a

    .line 2158
    .restart local v23    # "intPart":I
    .restart local v26    # "prod2A":J
    .restart local v28    # "prod2B":J
    :cond_28
    const/4 v14, 0x0

    goto/16 :goto_b

    .line 2159
    :cond_29
    const/4 v15, 0x0

    goto/16 :goto_c

    .line 2160
    :cond_2a
    const/16 v16, 0x0

    goto/16 :goto_d

    .line 2168
    :cond_2b
    const/4 v14, 0x0

    goto/16 :goto_e

    .line 2169
    :cond_2c
    const/4 v15, 0x0

    goto/16 :goto_f

    .line 2174
    :cond_2d
    const/16 v16, 0x0

    goto/16 :goto_10

    .line 2192
    :cond_2e
    const/4 v14, 0x0

    goto/16 :goto_11

    .line 2193
    :cond_2f
    const/4 v15, 0x0

    goto/16 :goto_12

    .line 2195
    :cond_30
    const/16 v16, 0x0

    goto/16 :goto_13

    .line 2214
    :cond_31
    const/4 v14, 0x0

    goto/16 :goto_14

    .line 2215
    :cond_32
    const/4 v15, 0x0

    goto/16 :goto_15

    .line 2217
    :cond_33
    const/16 v16, 0x0

    goto/16 :goto_16
.end method

.method public static rint(D)D
    .locals 12
    .param p0, "x"    # D

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 3411
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    .line 3412
    .local v2, "y":D
    sub-double v0, p0, v2

    .line 3414
    .local v0, "d":D
    cmpl-double v6, v0, v8

    if-lez v6, :cond_2

    .line 3415
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v6, v2, v6

    if-nez v6, :cond_1

    .line 3416
    const-wide/high16 v2, -0x8000000000000000L

    .line 3426
    .end local v2    # "y":D
    :cond_0
    :goto_0
    return-wide v2

    .line 3418
    .restart local v2    # "y":D
    :cond_1
    add-double/2addr v2, v10

    goto :goto_0

    .line 3420
    :cond_2
    cmpg-double v6, v0, v8

    if-ltz v6, :cond_0

    .line 3425
    double-to-long v4, v2

    .line 3426
    .local v4, "z":J
    const-wide/16 v6, 0x1

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    add-double/2addr v2, v10

    goto :goto_0
.end method

.method public static round(F)I
    .locals 2
    .param p0, "x"    # F

    .prologue
    .line 3442
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static round(D)J
    .locals 2
    .param p0, "x"    # D

    .prologue
    .line 3434
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public static scalb(DI)D
    .locals 16
    .param p0, "d"    # D
    .param p2, "n"    # I

    .prologue
    .line 3083
    const/16 v12, -0x3ff

    move/from16 v0, p2

    if-le v0, v12, :cond_0

    const/16 v12, 0x400

    move/from16 v0, p2

    if-ge v0, v12, :cond_0

    .line 3084
    move/from16 v0, p2

    add-int/lit16 v12, v0, 0x3ff

    int-to-long v12, v12

    const/16 v14, 0x34

    shl-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    mul-double v12, v12, p0

    .line 3152
    :goto_0
    return-wide v12

    .line 3088
    :cond_0
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v12

    if-nez v12, :cond_1

    const-wide/16 v12, 0x0

    cmpl-double v12, p0, v12

    if-nez v12, :cond_2

    :cond_1
    move-wide/from16 v12, p0

    .line 3089
    goto :goto_0

    .line 3091
    :cond_2
    const/16 v12, -0x832

    move/from16 v0, p2

    if-ge v0, v12, :cond_4

    .line 3092
    const-wide/16 v12, 0x0

    cmpl-double v12, p0, v12

    if-lez v12, :cond_3

    const-wide/16 v12, 0x0

    goto :goto_0

    :cond_3
    const-wide/high16 v12, -0x8000000000000000L

    goto :goto_0

    .line 3094
    :cond_4
    const/16 v12, 0x831

    move/from16 v0, p2

    if-le v0, v12, :cond_6

    .line 3095
    const-wide/16 v12, 0x0

    cmpl-double v12, p0, v12

    if-lez v12, :cond_5

    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    :cond_5
    const-wide/high16 v12, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    .line 3099
    :cond_6
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 3100
    .local v2, "bits":J
    const-wide/high16 v12, -0x8000000000000000L

    and-long v10, v2, v12

    .line 3101
    .local v10, "sign":J
    const/16 v12, 0x34

    ushr-long v12, v2, v12

    long-to-int v12, v12

    and-int/lit16 v4, v12, 0x7ff

    .line 3102
    .local v4, "exponent":I
    const-wide v12, 0xfffffffffffffL

    and-long v6, v2, v12

    .line 3105
    .local v6, "mantissa":J
    add-int v5, v4, p2

    .line 3107
    .local v5, "scaledExponent":I
    if-gez p2, :cond_b

    .line 3109
    if-lez v5, :cond_7

    .line 3111
    int-to-long v12, v5

    const/16 v14, 0x34

    shl-long/2addr v12, v14

    or-long/2addr v12, v10

    or-long/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    goto :goto_0

    .line 3112
    :cond_7
    const/16 v12, -0x35

    if-le v5, v12, :cond_9

    .line 3116
    const-wide/high16 v12, 0x10000000000000L

    or-long/2addr v6, v12

    .line 3119
    const-wide/16 v12, 0x1

    neg-int v14, v5

    shl-long/2addr v12, v14

    and-long v8, v6, v12

    .line 3120
    .local v8, "mostSignificantLostBit":J
    rsub-int/lit8 v12, v5, 0x1

    ushr-long/2addr v6, v12

    .line 3121
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-eqz v12, :cond_8

    .line 3123
    const-wide/16 v12, 0x1

    add-long/2addr v6, v12

    .line 3125
    :cond_8
    or-long v12, v10, v6

    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    goto :goto_0

    .line 3129
    .end local v8    # "mostSignificantLostBit":J
    :cond_9
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_a

    const-wide/16 v12, 0x0

    goto/16 :goto_0

    :cond_a
    const-wide/high16 v12, -0x8000000000000000L

    goto/16 :goto_0

    .line 3133
    :cond_b
    if-nez v4, :cond_f

    .line 3136
    :goto_1
    const/16 v12, 0x34

    ushr-long v12, v6, v12

    const-wide/16 v14, 0x1

    cmp-long v12, v12, v14

    if-eqz v12, :cond_c

    .line 3137
    const/4 v12, 0x1

    shl-long/2addr v6, v12

    .line 3138
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 3140
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 3141
    const-wide v12, 0xfffffffffffffL

    and-long/2addr v6, v12

    .line 3143
    const/16 v12, 0x7ff

    if-ge v5, v12, :cond_d

    .line 3144
    int-to-long v12, v5

    const/16 v14, 0x34

    shl-long/2addr v12, v14

    or-long/2addr v12, v10

    or-long/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    goto/16 :goto_0

    .line 3146
    :cond_d
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_e

    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto/16 :goto_0

    :cond_e
    const-wide/high16 v12, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto/16 :goto_0

    .line 3149
    :cond_f
    const/16 v12, 0x7ff

    if-ge v5, v12, :cond_10

    .line 3150
    int-to-long v12, v5

    const/16 v14, 0x34

    shl-long/2addr v12, v14

    or-long/2addr v12, v10

    or-long/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    goto/16 :goto_0

    .line 3152
    :cond_10
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_11

    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto/16 :goto_0

    :cond_11
    const-wide/high16 v12, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto/16 :goto_0
.end method

.method public static scalb(FI)F
    .locals 12
    .param p0, "f"    # F
    .param p1, "n"    # I

    .prologue
    const/4 v11, 0x1

    const/high16 v7, -0x80000000

    const/high16 v8, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v9, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v6, 0x0

    .line 3167
    const/16 v10, -0x7f

    if-le p1, v10, :cond_1

    const/16 v10, 0x80

    if-ge p1, v10, :cond_1

    .line 3168
    add-int/lit8 v6, p1, 0x7f

    shl-int/lit8 v6, v6, 0x17

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    mul-float/2addr v6, p0

    .line 3236
    :cond_0
    :goto_0
    return v6

    .line 3172
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v10

    if-nez v10, :cond_2

    cmpl-float v10, p0, v6

    if-nez v10, :cond_3

    :cond_2
    move v6, p0

    .line 3173
    goto :goto_0

    .line 3175
    :cond_3
    const/16 v10, -0x115

    if-ge p1, v10, :cond_4

    .line 3176
    cmpl-float v8, p0, v6

    if-gtz v8, :cond_0

    move v6, v7

    goto :goto_0

    .line 3178
    :cond_4
    const/16 v10, 0x114

    if-le p1, v10, :cond_6

    .line 3179
    cmpl-float v6, p0, v6

    if-lez v6, :cond_5

    move v6, v8

    goto :goto_0

    :cond_5
    move v6, v9

    goto :goto_0

    .line 3183
    :cond_6
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 3184
    .local v0, "bits":I
    const/high16 v10, -0x80000000

    and-int v5, v0, v10

    .line 3185
    .local v5, "sign":I
    ushr-int/lit8 v10, v0, 0x17

    and-int/lit16 v1, v10, 0xff

    .line 3186
    .local v1, "exponent":I
    const v10, 0x7fffff

    and-int v2, v0, v10

    .line 3189
    .local v2, "mantissa":I
    add-int v4, v1, p1

    .line 3191
    .local v4, "scaledExponent":I
    if-gez p1, :cond_a

    .line 3193
    if-lez v4, :cond_7

    .line 3195
    shl-int/lit8 v6, v4, 0x17

    or-int/2addr v6, v5

    or-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    goto :goto_0

    .line 3196
    :cond_7
    const/16 v8, -0x18

    if-le v4, v8, :cond_9

    .line 3200
    const/high16 v6, 0x800000

    or-int/2addr v2, v6

    .line 3203
    neg-int v6, v4

    shl-int v6, v11, v6

    and-int v3, v2, v6

    .line 3204
    .local v3, "mostSignificantLostBit":I
    rsub-int/lit8 v6, v4, 0x1

    ushr-int/2addr v2, v6

    .line 3205
    if-eqz v3, :cond_8

    .line 3207
    add-int/lit8 v2, v2, 0x1

    .line 3209
    :cond_8
    or-int v6, v5, v2

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    goto :goto_0

    .line 3213
    .end local v3    # "mostSignificantLostBit":I
    :cond_9
    if-eqz v5, :cond_0

    move v6, v7

    goto :goto_0

    .line 3217
    :cond_a
    if-nez v1, :cond_e

    .line 3220
    :goto_1
    ushr-int/lit8 v6, v2, 0x17

    if-eq v6, v11, :cond_b

    .line 3221
    shl-int/lit8 v2, v2, 0x1

    .line 3222
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 3224
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 3225
    const v6, 0x7fffff

    and-int/2addr v2, v6

    .line 3227
    const/16 v6, 0xff

    if-ge v4, v6, :cond_c

    .line 3228
    shl-int/lit8 v6, v4, 0x17

    or-int/2addr v6, v5

    or-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    goto/16 :goto_0

    .line 3230
    :cond_c
    if-nez v5, :cond_d

    :goto_2
    move v6, v8

    goto/16 :goto_0

    :cond_d
    move v8, v9

    goto :goto_2

    .line 3233
    :cond_e
    const/16 v6, 0xff

    if-ge v4, v6, :cond_f

    .line 3234
    shl-int/lit8 v6, v4, 0x17

    or-int/2addr v6, v5

    or-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    goto/16 :goto_0

    .line 3236
    :cond_f
    if-nez v5, :cond_10

    :goto_3
    move v6, v8

    goto/16 :goto_0

    :cond_10
    move v8, v9

    goto :goto_3
.end method

.method public static signum(D)D
    .locals 4
    .param p0, "a"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 782
    cmpg-double v0, p0, v2

    if-gez v0, :cond_1

    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    .end local p0    # "a":D
    :cond_0
    :goto_0
    return-wide p0

    .restart local p0    # "a":D
    :cond_1
    cmpl-double v0, p0, v2

    if-lez v0, :cond_0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    goto :goto_0
.end method

.method public static signum(F)F
    .locals 2
    .param p0, "a"    # F

    .prologue
    const/4 v1, 0x0

    .line 791
    cmpg-float v0, p0, v1

    if-gez v0, :cond_1

    const/high16 p0, -0x40800000    # -1.0f

    .end local p0    # "a":F
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "a":F
    :cond_1
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public static sin(D)D
    .locals 12
    .param p0, "x"    # D

    .prologue
    .line 2244
    const/4 v3, 0x0

    .line 2245
    .local v3, "negative":Z
    const/4 v4, 0x0

    .line 2247
    .local v4, "quadrant":I
    const-wide/16 v8, 0x0

    .line 2250
    .local v8, "xb":D
    move-wide v6, p0

    .line 2251
    .local v6, "xa":D
    const-wide/16 v10, 0x0

    cmpg-double v10, p0, v10

    if-gez v10, :cond_0

    .line 2252
    const/4 v3, 0x1

    .line 2253
    neg-double v6, v6

    .line 2257
    :cond_0
    const-wide/16 v10, 0x0

    cmpl-double v10, v6, v10

    if-nez v10, :cond_2

    .line 2258
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 2259
    .local v0, "bits":J
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-gez v10, :cond_1

    .line 2260
    const-wide/high16 v10, -0x8000000000000000L

    .line 2300
    .end local v0    # "bits":J
    :goto_0
    return-wide v10

    .line 2262
    .restart local v0    # "bits":J
    :cond_1
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 2265
    .end local v0    # "bits":J
    :cond_2
    cmpl-double v10, v6, v6

    if-nez v10, :cond_3

    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v10, v6, v10

    if-nez v10, :cond_4

    .line 2266
    :cond_3
    const-wide/high16 v10, 0x7ff8000000000000L    # NaN

    goto :goto_0

    .line 2270
    :cond_4
    const-wide v10, 0x414921fb00000000L    # 3294198.0

    cmpl-double v10, v6, v10

    if-lez v10, :cond_7

    .line 2274
    const/4 v10, 0x3

    new-array v5, v10, [D

    .line 2275
    .local v5, "reduceResults":[D
    invoke-static {v6, v7, v5}, Lorg/apache/commons/math3/util/FastMath;->reducePayneHanek(D[D)V

    .line 2276
    const/4 v10, 0x0

    aget-wide v10, v5, v10

    double-to-int v10, v10

    and-int/lit8 v4, v10, 0x3

    .line 2277
    const/4 v10, 0x1

    aget-wide v6, v5, v10

    .line 2278
    const/4 v10, 0x2

    aget-wide v8, v5, v10

    .line 2286
    .end local v5    # "reduceResults":[D
    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    .line 2287
    xor-int/lit8 v4, v4, 0x2

    .line 2290
    :cond_6
    packed-switch v4, :pswitch_data_0

    .line 2300
    const-wide/high16 v10, 0x7ff8000000000000L    # NaN

    goto :goto_0

    .line 2279
    :cond_7
    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v10, v6, v10

    if-lez v10, :cond_5

    .line 2280
    new-instance v2, Lorg/apache/commons/math3/util/FastMath$CodyWaite;

    invoke-direct {v2, v6, v7}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;-><init>(D)V

    .line 2281
    .local v2, "cw":Lorg/apache/commons/math3/util/FastMath$CodyWaite;
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->getK()I

    move-result v10

    and-int/lit8 v4, v10, 0x3

    .line 2282
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->getRemA()D

    move-result-wide v6

    .line 2283
    invoke-virtual {v2}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->getRemB()D

    move-result-wide v8

    goto :goto_1

    .line 2292
    .end local v2    # "cw":Lorg/apache/commons/math3/util/FastMath$CodyWaite;
    :pswitch_0
    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sinQ(DD)D

    move-result-wide v10

    goto :goto_0

    .line 2294
    :pswitch_1
    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->cosQ(DD)D

    move-result-wide v10

    goto :goto_0

    .line 2296
    :pswitch_2
    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sinQ(DD)D

    move-result-wide v10

    neg-double v10, v10

    goto :goto_0

    .line 2298
    :pswitch_3
    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->cosQ(DD)D

    move-result-wide v10

    neg-double v10, v10

    goto :goto_0

    .line 2290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static sinQ(DD)D
    .locals 44
    .param p0, "xa"    # D
    .param p2, "xb"    # D

    .prologue
    .line 1735
    const-wide/high16 v38, 0x4020000000000000L    # 8.0

    mul-double v38, v38, p0

    const-wide/high16 v40, 0x3fe0000000000000L    # 0.5

    add-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-int v0, v0

    move/from16 v20, v0

    .line 1736
    .local v20, "idx":I
    sget-object v21, Lorg/apache/commons/math3/util/FastMath;->EIGHTHS:[D

    aget-wide v38, v21, v20

    sub-double v18, p0, v38

    .line 1739
    .local v18, "epsilon":D
    sget-object v21, Lorg/apache/commons/math3/util/FastMath;->SINE_TABLE_A:[D

    aget-wide v28, v21, v20

    .line 1740
    .local v28, "sintA":D
    sget-object v21, Lorg/apache/commons/math3/util/FastMath;->SINE_TABLE_B:[D

    aget-wide v30, v21, v20

    .line 1741
    .local v30, "sintB":D
    sget-object v21, Lorg/apache/commons/math3/util/FastMath;->COSINE_TABLE_A:[D

    aget-wide v12, v21, v20

    .line 1742
    .local v12, "costA":D
    sget-object v21, Lorg/apache/commons/math3/util/FastMath;->COSINE_TABLE_B:[D

    aget-wide v14, v21, v20

    .line 1745
    .local v14, "costB":D
    move-wide/from16 v24, v18

    .line 1746
    .local v24, "sinEpsA":D
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->polySine(D)D

    move-result-wide v26

    .line 1747
    .local v26, "sinEpsB":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 1748
    .local v8, "cosEpsA":D
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->polyCosine(D)D

    move-result-wide v10

    .line 1751
    .local v10, "cosEpsB":D
    const-wide/high16 v38, 0x41d0000000000000L    # 1.073741824E9

    mul-double v34, v24, v38

    .line 1752
    .local v34, "temp":D
    add-double v38, v24, v34

    sub-double v36, v38, v34

    .line 1753
    .local v36, "temp2":D
    sub-double v38, v24, v36

    add-double v26, v26, v38

    .line 1754
    move-wide/from16 v24, v36

    .line 1780
    const-wide/16 v2, 0x0

    .line 1781
    .local v2, "a":D
    const-wide/16 v4, 0x0

    .line 1783
    .local v4, "b":D
    move-wide/from16 v32, v28

    .line 1784
    .local v32, "t":D
    add-double v6, v2, v32

    .line 1785
    .local v6, "c":D
    sub-double v38, v6, v2

    sub-double v38, v38, v32

    move-wide/from16 v0, v38

    neg-double v0, v0

    move-wide/from16 v16, v0

    .line 1786
    .local v16, "d":D
    move-wide v2, v6

    .line 1787
    add-double v4, v4, v16

    .line 1789
    mul-double v32, v12, v24

    .line 1790
    add-double v6, v2, v32

    .line 1791
    sub-double v38, v6, v2

    sub-double v38, v38, v32

    move-wide/from16 v0, v38

    neg-double v0, v0

    move-wide/from16 v16, v0

    .line 1792
    move-wide v2, v6

    .line 1793
    add-double v4, v4, v16

    .line 1795
    mul-double v38, v28, v10

    add-double v38, v38, v4

    mul-double v40, v12, v26

    add-double v4, v38, v40

    .line 1810
    add-double v38, v4, v30

    mul-double v40, v14, v24

    add-double v38, v38, v40

    mul-double v40, v30, v10

    add-double v38, v38, v40

    mul-double v40, v14, v26

    add-double v4, v38, v40

    .line 1837
    const-wide/16 v38, 0x0

    cmpl-double v21, p2, v38

    if-eqz v21, :cond_0

    .line 1838
    add-double v38, v12, v14

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    add-double v40, v40, v10

    mul-double v38, v38, v40

    add-double v40, v28, v30

    add-double v42, v24, v26

    mul-double v40, v40, v42

    sub-double v38, v38, v40

    mul-double v32, v38, p2

    .line 1840
    add-double v6, v2, v32

    .line 1841
    sub-double v38, v6, v2

    sub-double v38, v38, v32

    move-wide/from16 v0, v38

    neg-double v0, v0

    move-wide/from16 v16, v0

    .line 1842
    move-wide v2, v6

    .line 1843
    add-double v4, v4, v16

    .line 1846
    :cond_0
    add-double v22, v2, v4

    .line 1848
    .local v22, "result":D
    return-wide v22
.end method

.method public static sinh(D)D
    .locals 46
    .param p0, "x"    # D

    .prologue
    .line 464
    const/4 v11, 0x0

    .line 465
    .local v11, "negate":Z
    cmpl-double v42, p0, p0

    if-eqz v42, :cond_1

    .line 581
    .end local p0    # "x":D
    :cond_0
    :goto_0
    return-wide p0

    .line 474
    .restart local p0    # "x":D
    :cond_1
    const-wide/high16 v42, 0x4034000000000000L    # 20.0

    cmpl-double v42, p0, v42

    if-lez v42, :cond_3

    .line 475
    sget-wide v42, Lorg/apache/commons/math3/util/FastMath;->LOG_MAX_VALUE:D

    cmpl-double v42, p0, v42

    if-ltz v42, :cond_2

    .line 477
    const-wide/high16 v42, 0x3fe0000000000000L    # 0.5

    mul-double v42, v42, p0

    invoke-static/range {v42 .. v43}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v26

    .line 478
    .local v26, "t":D
    const-wide/high16 v42, 0x3fe0000000000000L    # 0.5

    mul-double v42, v42, v26

    mul-double p0, v42, v26

    goto :goto_0

    .line 480
    .end local v26    # "t":D
    :cond_2
    const-wide/high16 v42, 0x3fe0000000000000L    # 0.5

    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v44

    mul-double p0, v42, v44

    goto :goto_0

    .line 482
    :cond_3
    const-wide/high16 v42, -0x3fcc000000000000L    # -20.0

    cmpg-double v42, p0, v42

    if-gez v42, :cond_5

    .line 483
    sget-wide v42, Lorg/apache/commons/math3/util/FastMath;->LOG_MAX_VALUE:D

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    cmpg-double v42, p0, v42

    if-gtz v42, :cond_4

    .line 485
    const-wide/high16 v42, -0x4020000000000000L    # -0.5

    mul-double v42, v42, p0

    invoke-static/range {v42 .. v43}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v26

    .line 486
    .restart local v26    # "t":D
    const-wide/high16 v42, -0x4020000000000000L    # -0.5

    mul-double v42, v42, v26

    mul-double p0, v42, v26

    goto :goto_0

    .line 488
    .end local v26    # "t":D
    :cond_4
    const-wide/high16 v42, -0x4020000000000000L    # -0.5

    move-wide/from16 v0, p0

    neg-double v0, v0

    move-wide/from16 v44, v0

    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v44

    mul-double p0, v42, v44

    goto :goto_0

    .line 492
    :cond_5
    const-wide/16 v42, 0x0

    cmpl-double v42, p0, v42

    if-eqz v42, :cond_0

    .line 496
    const-wide/16 v42, 0x0

    cmpg-double v42, p0, v42

    if-gez v42, :cond_6

    .line 497
    move-wide/from16 v0, p0

    neg-double v0, v0

    move-wide/from16 p0, v0

    .line 498
    const/4 v11, 0x1

    .line 503
    :cond_6
    const-wide/high16 v42, 0x3fd0000000000000L    # 0.25

    cmpl-double v42, p0, v42

    if-lez v42, :cond_8

    .line 504
    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v10, v0, [D

    .line 505
    .local v10, "hiPrec":[D
    const-wide/16 v42, 0x0

    move-wide/from16 v0, p0

    move-wide/from16 v2, v42

    invoke-static {v0, v1, v2, v3, v10}, Lorg/apache/commons/math3/util/FastMath;->exp(DD[D)D

    .line 507
    const/16 v42, 0x0

    aget-wide v42, v10, v42

    const/16 v44, 0x1

    aget-wide v44, v10, v44

    add-double v30, v42, v44

    .line 508
    .local v30, "ya":D
    const/16 v42, 0x0

    aget-wide v42, v10, v42

    sub-double v42, v30, v42

    const/16 v44, 0x1

    aget-wide v44, v10, v44

    sub-double v42, v42, v44

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v36, v0

    .line 510
    .local v36, "yb":D
    const-wide/high16 v42, 0x41d0000000000000L    # 1.073741824E9

    mul-double v28, v30, v42

    .line 511
    .local v28, "temp":D
    add-double v42, v30, v28

    sub-double v32, v42, v28

    .line 512
    .local v32, "yaa":D
    sub-double v34, v30, v32

    .line 515
    .local v34, "yab":D
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    div-double v18, v42, v30

    .line 516
    .local v18, "recip":D
    const-wide/high16 v42, 0x41d0000000000000L    # 1.073741824E9

    mul-double v28, v18, v42

    .line 517
    add-double v42, v18, v28

    sub-double v20, v42, v28

    .line 518
    .local v20, "recipa":D
    sub-double v22, v18, v20

    .line 521
    .local v22, "recipb":D
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    mul-double v44, v32, v20

    sub-double v42, v42, v44

    mul-double v44, v32, v22

    sub-double v42, v42, v44

    mul-double v44, v34, v20

    sub-double v42, v42, v44

    mul-double v44, v34, v22

    sub-double v42, v42, v44

    mul-double v42, v42, v18

    add-double v22, v22, v42

    .line 523
    move-wide/from16 v0, v36

    neg-double v0, v0

    move-wide/from16 v42, v0

    mul-double v42, v42, v18

    mul-double v42, v42, v18

    add-double v22, v22, v42

    .line 525
    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    .line 526
    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    .line 529
    add-double v28, v30, v20

    .line 530
    sub-double v42, v28, v30

    sub-double v42, v42, v20

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    add-double v36, v36, v42

    .line 531
    move-wide/from16 v30, v28

    .line 532
    add-double v28, v30, v22

    .line 533
    sub-double v42, v28, v30

    sub-double v42, v42, v22

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    add-double v36, v36, v42

    .line 534
    move-wide/from16 v30, v28

    .line 536
    add-double v24, v30, v36

    .line 537
    .local v24, "result":D
    const-wide/high16 v42, 0x3fe0000000000000L    # 0.5

    mul-double v24, v24, v42

    .line 577
    .end local v18    # "recip":D
    .end local v20    # "recipa":D
    .end local v22    # "recipb":D
    .end local v32    # "yaa":D
    .end local v34    # "yab":D
    :goto_1
    if-eqz v11, :cond_7

    .line 578
    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    :cond_7
    move-wide/from16 p0, v24

    .line 581
    goto/16 :goto_0

    .line 540
    .end local v10    # "hiPrec":[D
    .end local v24    # "result":D
    .end local v28    # "temp":D
    .end local v30    # "ya":D
    .end local v36    # "yb":D
    :cond_8
    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v10, v0, [D

    .line 541
    .restart local v10    # "hiPrec":[D
    move-wide/from16 v0, p0

    invoke-static {v0, v1, v10}, Lorg/apache/commons/math3/util/FastMath;->expm1(D[D)D

    .line 543
    const/16 v42, 0x0

    aget-wide v42, v10, v42

    const/16 v44, 0x1

    aget-wide v44, v10, v44

    add-double v30, v42, v44

    .line 544
    .restart local v30    # "ya":D
    const/16 v42, 0x0

    aget-wide v42, v10, v42

    sub-double v42, v30, v42

    const/16 v44, 0x1

    aget-wide v44, v10, v44

    sub-double v42, v42, v44

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v36, v0

    .line 547
    .restart local v36    # "yb":D
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    add-double v4, v42, v30

    .line 548
    .local v4, "denom":D
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    div-double v8, v42, v4

    .line 549
    .local v8, "denomr":D
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    sub-double v42, v4, v42

    sub-double v42, v42, v30

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    add-double v6, v42, v36

    .line 550
    .local v6, "denomb":D
    mul-double v14, v30, v8

    .line 551
    .local v14, "ratio":D
    const-wide/high16 v42, 0x41d0000000000000L    # 1.073741824E9

    mul-double v28, v14, v42

    .line 552
    .restart local v28    # "temp":D
    add-double v42, v14, v28

    sub-double v12, v42, v28

    .line 553
    .local v12, "ra":D
    sub-double v16, v14, v12

    .line 555
    .local v16, "rb":D
    const-wide/high16 v42, 0x41d0000000000000L    # 1.073741824E9

    mul-double v28, v4, v42

    .line 556
    add-double v42, v4, v28

    sub-double v38, v42, v28

    .line 557
    .local v38, "za":D
    sub-double v40, v4, v38

    .line 559
    .local v40, "zb":D
    mul-double v42, v38, v12

    sub-double v42, v30, v42

    mul-double v44, v38, v16

    sub-double v42, v42, v44

    mul-double v44, v40, v12

    sub-double v42, v42, v44

    mul-double v44, v40, v16

    sub-double v42, v42, v44

    mul-double v42, v42, v8

    add-double v16, v16, v42

    .line 562
    mul-double v42, v36, v8

    add-double v16, v16, v42

    .line 563
    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v42, v0

    mul-double v42, v42, v6

    mul-double v42, v42, v8

    mul-double v42, v42, v8

    add-double v16, v16, v42

    .line 566
    add-double v28, v30, v12

    .line 567
    sub-double v42, v28, v30

    sub-double v42, v42, v12

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    add-double v36, v36, v42

    .line 568
    move-wide/from16 v30, v28

    .line 569
    add-double v28, v30, v16

    .line 570
    sub-double v42, v28, v30

    sub-double v42, v42, v16

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    add-double v36, v36, v42

    .line 571
    move-wide/from16 v30, v28

    .line 573
    add-double v24, v30, v36

    .line 574
    .restart local v24    # "result":D
    const-wide/high16 v42, 0x3fe0000000000000L    # 0.5

    mul-double v24, v24, v42

    goto/16 :goto_1
.end method

.method public static sqrt(D)D
    .locals 2
    .param p0, "a"    # D

    .prologue
    .line 387
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static subtractExact(II)I
    .locals 6
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 3783
    sub-int v0, p0, p1

    .line 3786
    .local v0, "sub":I
    xor-int v1, p0, p1

    if-gez v1, :cond_0

    xor-int v1, v0, p1

    if-ltz v1, :cond_0

    .line 3787
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_SUBTRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 3790
    :cond_0
    return v0
.end method

.method public static subtractExact(JJ)J
    .locals 8
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 3804
    sub-long v0, p0, p2

    .line 3807
    .local v0, "sub":J
    xor-long v2, p0, p2

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    xor-long v2, v0, p2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 3808
    new-instance v2, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_SUBTRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 3811
    :cond_0
    return-wide v0
.end method

.method public static tan(D)D
    .locals 24
    .param p0, "x"    # D

    .prologue
    .line 2365
    const/4 v9, 0x0

    .line 2366
    .local v9, "negative":Z
    const/4 v14, 0x0

    .line 2369
    .local v14, "quadrant":I
    move-wide/from16 v18, p0

    .line 2370
    .local v18, "xa":D
    const-wide/16 v22, 0x0

    cmpg-double v22, p0, v22

    if-gez v22, :cond_0

    .line 2371
    const/4 v9, 0x1

    .line 2372
    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 2376
    :cond_0
    const-wide/16 v22, 0x0

    cmpl-double v22, v18, v22

    if-nez v22, :cond_3

    .line 2377
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    .line 2378
    .local v6, "bits":J
    const-wide/16 v22, 0x0

    cmp-long v22, v6, v22

    if-gez v22, :cond_2

    .line 2379
    const-wide/high16 v16, -0x8000000000000000L

    .line 2432
    .end local v6    # "bits":J
    :cond_1
    :goto_0
    return-wide v16

    .line 2381
    .restart local v6    # "bits":J
    :cond_2
    const-wide/16 v16, 0x0

    goto :goto_0

    .line 2384
    .end local v6    # "bits":J
    :cond_3
    cmpl-double v22, v18, v18

    if-nez v22, :cond_4

    const-wide/high16 v22, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v22, v18, v22

    if-nez v22, :cond_5

    .line 2385
    :cond_4
    const-wide/high16 v16, 0x7ff8000000000000L    # NaN

    goto :goto_0

    .line 2389
    :cond_5
    const-wide/16 v20, 0x0

    .line 2390
    .local v20, "xb":D
    const-wide v22, 0x414921fb00000000L    # 3294198.0

    cmpl-double v22, v18, v22

    if-lez v22, :cond_8

    .line 2394
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v15, v0, [D

    .line 2395
    .local v15, "reduceResults":[D
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v15}, Lorg/apache/commons/math3/util/FastMath;->reducePayneHanek(D[D)V

    .line 2396
    const/16 v22, 0x0

    aget-wide v22, v15, v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    and-int/lit8 v14, v22, 0x3

    .line 2397
    const/16 v22, 0x1

    aget-wide v18, v15, v22

    .line 2398
    const/16 v22, 0x2

    aget-wide v20, v15, v22

    .line 2406
    .end local v15    # "reduceResults":[D
    :cond_6
    :goto_1
    const-wide/high16 v22, 0x3ff8000000000000L    # 1.5

    cmpl-double v22, v18, v22

    if-lez v22, :cond_7

    .line 2408
    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 2409
    .local v10, "pi2a":D
    const-wide v12, 0x3c91a62633145c07L    # 6.123233995736766E-17

    .line 2411
    .local v12, "pi2b":D
    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v2, v22, v18

    .line 2412
    .local v2, "a":D
    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v22, v2, v22

    add-double v22, v22, v18

    move-wide/from16 v0, v22

    neg-double v4, v0

    .line 2413
    .local v4, "b":D
    const-wide v22, 0x3c91a62633145c07L    # 6.123233995736766E-17

    sub-double v22, v22, v20

    add-double v4, v4, v22

    .line 2415
    add-double v18, v2, v4

    .line 2416
    sub-double v22, v18, v2

    sub-double v22, v22, v4

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v20, v0

    .line 2417
    xor-int/lit8 v14, v14, 0x1

    .line 2418
    xor-int/lit8 v9, v9, 0x1

    .line 2422
    .end local v2    # "a":D
    .end local v4    # "b":D
    .end local v10    # "pi2a":D
    .end local v12    # "pi2b":D
    :cond_7
    and-int/lit8 v22, v14, 0x1

    if-nez v22, :cond_9

    .line 2423
    const/16 v22, 0x0

    invoke-static/range {v18 .. v22}, Lorg/apache/commons/math3/util/FastMath;->tanQ(DDZ)D

    move-result-wide v16

    .line 2428
    .local v16, "result":D
    :goto_2
    if-eqz v9, :cond_1

    .line 2429
    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    goto/16 :goto_0

    .line 2399
    .end local v16    # "result":D
    :cond_8
    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v22, v18, v22

    if-lez v22, :cond_6

    .line 2400
    new-instance v8, Lorg/apache/commons/math3/util/FastMath$CodyWaite;

    move-wide/from16 v0, v18

    invoke-direct {v8, v0, v1}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;-><init>(D)V

    .line 2401
    .local v8, "cw":Lorg/apache/commons/math3/util/FastMath$CodyWaite;
    invoke-virtual {v8}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->getK()I

    move-result v22

    and-int/lit8 v14, v22, 0x3

    .line 2402
    invoke-virtual {v8}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->getRemA()D

    move-result-wide v18

    .line 2403
    invoke-virtual {v8}, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->getRemB()D

    move-result-wide v20

    goto :goto_1

    .line 2425
    .end local v8    # "cw":Lorg/apache/commons/math3/util/FastMath$CodyWaite;
    :cond_9
    const/16 v22, 0x1

    invoke-static/range {v18 .. v22}, Lorg/apache/commons/math3/util/FastMath;->tanQ(DDZ)D

    move-result-wide v22

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v16, v0

    .restart local v16    # "result":D
    goto :goto_2
.end method

.method private static tanQ(DDZ)D
    .locals 64
    .param p0, "xa"    # D
    .param p2, "xb"    # D
    .param p4, "cotanFlag"    # Z

    .prologue
    .line 1879
    const-wide/high16 v60, 0x4020000000000000L    # 8.0

    mul-double v60, v60, p0

    const-wide/high16 v62, 0x3fe0000000000000L    # 0.5

    add-double v60, v60, v62

    move-wide/from16 v0, v60

    double-to-int v0, v0

    move/from16 v36, v0

    .line 1880
    .local v36, "idx":I
    sget-object v37, Lorg/apache/commons/math3/util/FastMath;->EIGHTHS:[D

    aget-wide v60, v37, v36

    sub-double v26, p0, v60

    .line 1883
    .local v26, "epsilon":D
    sget-object v37, Lorg/apache/commons/math3/util/FastMath;->SINE_TABLE_A:[D

    aget-wide v46, v37, v36

    .line 1884
    .local v46, "sintA":D
    sget-object v37, Lorg/apache/commons/math3/util/FastMath;->SINE_TABLE_B:[D

    aget-wide v48, v37, v36

    .line 1885
    .local v48, "sintB":D
    sget-object v37, Lorg/apache/commons/math3/util/FastMath;->COSINE_TABLE_A:[D

    aget-wide v20, v37, v36

    .line 1886
    .local v20, "costA":D
    sget-object v37, Lorg/apache/commons/math3/util/FastMath;->COSINE_TABLE_B:[D

    aget-wide v22, v37, v36

    .line 1889
    .local v22, "costB":D
    move-wide/from16 v38, v26

    .line 1890
    .local v38, "sinEpsA":D
    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->polySine(D)D

    move-result-wide v40

    .line 1891
    .local v40, "sinEpsB":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 1892
    .local v8, "cosEpsA":D
    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->polyCosine(D)D

    move-result-wide v10

    .line 1895
    .local v10, "cosEpsB":D
    const-wide/high16 v60, 0x41d0000000000000L    # 1.073741824E9

    mul-double v52, v38, v60

    .line 1896
    .local v52, "temp":D
    add-double v60, v38, v52

    sub-double v54, v60, v52

    .line 1897
    .local v54, "temp2":D
    sub-double v60, v38, v54

    add-double v40, v40, v60

    .line 1898
    move-wide/from16 v38, v54

    .line 1923
    const-wide/16 v2, 0x0

    .line 1924
    .local v2, "a":D
    const-wide/16 v4, 0x0

    .line 1927
    .local v4, "b":D
    move-wide/from16 v50, v46

    .line 1928
    .local v50, "t":D
    add-double v6, v2, v50

    .line 1929
    .local v6, "c":D
    sub-double v60, v6, v2

    sub-double v60, v60, v50

    move-wide/from16 v0, v60

    neg-double v0, v0

    move-wide/from16 v24, v0

    .line 1930
    .local v24, "d":D
    move-wide v2, v6

    .line 1931
    add-double v4, v4, v24

    .line 1933
    mul-double v50, v20, v38

    .line 1934
    add-double v6, v2, v50

    .line 1935
    sub-double v60, v6, v2

    sub-double v60, v60, v50

    move-wide/from16 v0, v60

    neg-double v0, v0

    move-wide/from16 v24, v0

    .line 1936
    move-wide v2, v6

    .line 1937
    add-double v4, v4, v24

    .line 1939
    mul-double v60, v46, v10

    mul-double v62, v20, v40

    add-double v60, v60, v62

    add-double v4, v4, v60

    .line 1940
    mul-double v60, v22, v38

    add-double v60, v60, v48

    mul-double v62, v48, v10

    add-double v60, v60, v62

    mul-double v62, v22, v40

    add-double v60, v60, v62

    add-double v4, v4, v60

    .line 1942
    add-double v42, v2, v4

    .line 1943
    .local v42, "sina":D
    sub-double v60, v42, v2

    sub-double v60, v60, v4

    move-wide/from16 v0, v60

    neg-double v0, v0

    move-wide/from16 v44, v0

    .line 1947
    .local v44, "sinb":D
    const-wide/16 v24, 0x0

    move-wide/from16 v6, v24

    move-wide/from16 v4, v24

    move-wide/from16 v2, v24

    .line 1949
    const-wide/high16 v60, 0x3ff0000000000000L    # 1.0

    mul-double v50, v20, v60

    .line 1950
    add-double v6, v2, v50

    .line 1951
    sub-double v60, v6, v2

    sub-double v60, v60, v50

    move-wide/from16 v0, v60

    neg-double v0, v0

    move-wide/from16 v24, v0

    .line 1952
    move-wide v2, v6

    .line 1953
    add-double v4, v4, v24

    .line 1955
    move-wide/from16 v0, v46

    neg-double v0, v0

    move-wide/from16 v60, v0

    mul-double v50, v60, v38

    .line 1956
    add-double v6, v2, v50

    .line 1957
    sub-double v60, v6, v2

    sub-double v60, v60, v50

    move-wide/from16 v0, v60

    neg-double v0, v0

    move-wide/from16 v24, v0

    .line 1958
    move-wide v2, v6

    .line 1959
    add-double v4, v4, v24

    .line 1961
    const-wide/high16 v60, 0x3ff0000000000000L    # 1.0

    mul-double v60, v60, v22

    mul-double v62, v20, v10

    add-double v60, v60, v62

    mul-double v62, v22, v10

    add-double v60, v60, v62

    add-double v4, v4, v60

    .line 1962
    mul-double v60, v48, v38

    mul-double v62, v46, v40

    add-double v60, v60, v62

    mul-double v62, v48, v40

    add-double v60, v60, v62

    sub-double v4, v4, v60

    .line 1964
    add-double v12, v2, v4

    .line 1965
    .local v12, "cosa":D
    sub-double v60, v12, v2

    sub-double v60, v60, v4

    move-wide/from16 v0, v60

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 1967
    .local v18, "cosb":D
    if-eqz p4, :cond_0

    .line 1969
    move-wide/from16 v56, v12

    .local v56, "tmp":D
    move-wide/from16 v12, v42

    move-wide/from16 v42, v56

    .line 1970
    move-wide/from16 v56, v18

    move-wide/from16 v18, v44

    move-wide/from16 v44, v56

    .line 1984
    .end local v56    # "tmp":D
    :cond_0
    div-double v30, v42, v12

    .line 1987
    .local v30, "est":D
    const-wide/high16 v60, 0x41d0000000000000L    # 1.073741824E9

    mul-double v52, v30, v60

    .line 1988
    add-double v60, v30, v52

    sub-double v32, v60, v52

    .line 1989
    .local v32, "esta":D
    sub-double v34, v30, v32

    .line 1991
    .local v34, "estb":D
    const-wide/high16 v60, 0x41d0000000000000L    # 1.073741824E9

    mul-double v52, v12, v60

    .line 1992
    add-double v60, v12, v52

    sub-double v14, v60, v52

    .line 1993
    .local v14, "cosaa":D
    sub-double v16, v12, v14

    .line 1996
    .local v16, "cosab":D
    mul-double v60, v32, v14

    sub-double v60, v42, v60

    mul-double v62, v32, v16

    sub-double v60, v60, v62

    mul-double v62, v34, v14

    sub-double v60, v60, v62

    mul-double v62, v34, v16

    sub-double v60, v60, v62

    div-double v28, v60, v12

    .line 1997
    .local v28, "err":D
    div-double v60, v44, v12

    add-double v28, v28, v60

    .line 1998
    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v60, v0

    mul-double v60, v60, v18

    div-double v60, v60, v12

    div-double v60, v60, v12

    add-double v28, v28, v60

    .line 2000
    const-wide/16 v60, 0x0

    cmpl-double v37, p2, v60

    if-eqz v37, :cond_2

    .line 2003
    mul-double v60, v30, v30

    mul-double v60, v60, p2

    add-double v58, p2, v60

    .line 2004
    .local v58, "xbadj":D
    if-eqz p4, :cond_1

    .line 2005
    move-wide/from16 v0, v58

    neg-double v0, v0

    move-wide/from16 v58, v0

    .line 2008
    :cond_1
    add-double v28, v28, v58

    .line 2011
    .end local v58    # "xbadj":D
    :cond_2
    add-double v60, v30, v28

    return-wide v60
.end method

.method public static tanh(D)D
    .locals 36
    .param p0, "x"    # D

    .prologue
    .line 589
    const/4 v13, 0x0

    .line 591
    .local v13, "negate":Z
    cmpl-double v32, p0, p0

    if-eqz v32, :cond_1

    .line 705
    .end local p0    # "x":D
    :cond_0
    :goto_0
    return-wide p0

    .line 601
    .restart local p0    # "x":D
    :cond_1
    const-wide/high16 v32, 0x4034000000000000L    # 20.0

    cmpl-double v32, p0, v32

    if-lez v32, :cond_2

    .line 602
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 605
    :cond_2
    const-wide/high16 v32, -0x3fcc000000000000L    # -20.0

    cmpg-double v32, p0, v32

    if-gez v32, :cond_3

    .line 606
    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    goto :goto_0

    .line 609
    :cond_3
    const-wide/16 v32, 0x0

    cmpl-double v32, p0, v32

    if-eqz v32, :cond_0

    .line 613
    const-wide/16 v32, 0x0

    cmpg-double v32, p0, v32

    if-gez v32, :cond_4

    .line 614
    move-wide/from16 v0, p0

    neg-double v0, v0

    move-wide/from16 p0, v0

    .line 615
    const/4 v13, 0x1

    .line 619
    :cond_4
    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    cmpl-double v32, p0, v32

    if-ltz v32, :cond_6

    .line 620
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v12, v0, [D

    .line 622
    .local v12, "hiPrec":[D
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    mul-double v32, v32, p0

    const-wide/16 v34, 0x0

    move-wide/from16 v0, v32

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3, v12}, Lorg/apache/commons/math3/util/FastMath;->exp(DD[D)D

    .line 624
    const/16 v32, 0x0

    aget-wide v32, v12, v32

    const/16 v34, 0x1

    aget-wide v34, v12, v34

    add-double v28, v32, v34

    .line 625
    .local v28, "ya":D
    const/16 v32, 0x0

    aget-wide v32, v12, v32

    sub-double v32, v28, v32

    const/16 v34, 0x1

    aget-wide v34, v12, v34

    sub-double v32, v32, v34

    move-wide/from16 v0, v32

    neg-double v0, v0

    move-wide/from16 v30, v0

    .line 628
    .local v30, "yb":D
    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    add-double v14, v32, v28

    .line 629
    .local v14, "na":D
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    add-double v32, v32, v14

    sub-double v32, v32, v28

    move-wide/from16 v0, v32

    neg-double v0, v0

    move-wide/from16 v16, v0

    .line 630
    .local v16, "nb":D
    add-double v26, v14, v30

    .line 631
    .local v26, "temp":D
    sub-double v32, v26, v14

    sub-double v32, v32, v30

    move-wide/from16 v0, v32

    neg-double v0, v0

    move-wide/from16 v32, v0

    add-double v16, v16, v32

    .line 632
    move-wide/from16 v14, v26

    .line 635
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    add-double v4, v32, v28

    .line 636
    .local v4, "da":D
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    sub-double v32, v4, v32

    sub-double v32, v32, v28

    move-wide/from16 v0, v32

    neg-double v10, v0

    .line 637
    .local v10, "db":D
    add-double v26, v4, v30

    .line 638
    sub-double v32, v26, v4

    sub-double v32, v32, v30

    move-wide/from16 v0, v32

    neg-double v0, v0

    move-wide/from16 v32, v0

    add-double v10, v10, v32

    .line 639
    move-wide/from16 v4, v26

    .line 641
    const-wide/high16 v32, 0x41d0000000000000L    # 1.073741824E9

    mul-double v26, v4, v32

    .line 642
    add-double v32, v4, v26

    sub-double v6, v32, v26

    .line 643
    .local v6, "daa":D
    sub-double v8, v4, v6

    .line 646
    .local v8, "dab":D
    div-double v18, v14, v4

    .line 647
    .local v18, "ratio":D
    const-wide/high16 v32, 0x41d0000000000000L    # 1.073741824E9

    mul-double v26, v18, v32

    .line 648
    add-double v32, v18, v26

    sub-double v20, v32, v26

    .line 649
    .local v20, "ratioa":D
    sub-double v22, v18, v20

    .line 652
    .local v22, "ratiob":D
    mul-double v32, v6, v20

    sub-double v32, v14, v32

    mul-double v34, v6, v22

    sub-double v32, v32, v34

    mul-double v34, v8, v20

    sub-double v32, v32, v34

    mul-double v34, v8, v22

    sub-double v32, v32, v34

    div-double v32, v32, v4

    add-double v22, v22, v32

    .line 655
    div-double v32, v16, v4

    add-double v22, v22, v32

    .line 657
    neg-double v0, v10

    move-wide/from16 v32, v0

    mul-double v32, v32, v14

    div-double v32, v32, v4

    div-double v32, v32, v4

    add-double v22, v22, v32

    .line 659
    add-double v24, v20, v22

    .line 701
    .local v24, "result":D
    :goto_1
    if-eqz v13, :cond_5

    .line 702
    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    :cond_5
    move-wide/from16 p0, v24

    .line 705
    goto/16 :goto_0

    .line 662
    .end local v4    # "da":D
    .end local v6    # "daa":D
    .end local v8    # "dab":D
    .end local v10    # "db":D
    .end local v12    # "hiPrec":[D
    .end local v14    # "na":D
    .end local v16    # "nb":D
    .end local v18    # "ratio":D
    .end local v20    # "ratioa":D
    .end local v22    # "ratiob":D
    .end local v24    # "result":D
    .end local v26    # "temp":D
    .end local v28    # "ya":D
    .end local v30    # "yb":D
    :cond_6
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v12, v0, [D

    .line 664
    .restart local v12    # "hiPrec":[D
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    mul-double v32, v32, p0

    move-wide/from16 v0, v32

    invoke-static {v0, v1, v12}, Lorg/apache/commons/math3/util/FastMath;->expm1(D[D)D

    .line 666
    const/16 v32, 0x0

    aget-wide v32, v12, v32

    const/16 v34, 0x1

    aget-wide v34, v12, v34

    add-double v28, v32, v34

    .line 667
    .restart local v28    # "ya":D
    const/16 v32, 0x0

    aget-wide v32, v12, v32

    sub-double v32, v28, v32

    const/16 v34, 0x1

    aget-wide v34, v12, v34

    sub-double v32, v32, v34

    move-wide/from16 v0, v32

    neg-double v0, v0

    move-wide/from16 v30, v0

    .line 670
    .restart local v30    # "yb":D
    move-wide/from16 v14, v28

    .line 671
    .restart local v14    # "na":D
    move-wide/from16 v16, v30

    .line 674
    .restart local v16    # "nb":D
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    add-double v4, v32, v28

    .line 675
    .restart local v4    # "da":D
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    sub-double v32, v4, v32

    sub-double v32, v32, v28

    move-wide/from16 v0, v32

    neg-double v10, v0

    .line 676
    .restart local v10    # "db":D
    add-double v26, v4, v30

    .line 677
    .restart local v26    # "temp":D
    sub-double v32, v26, v4

    sub-double v32, v32, v30

    move-wide/from16 v0, v32

    neg-double v0, v0

    move-wide/from16 v32, v0

    add-double v10, v10, v32

    .line 678
    move-wide/from16 v4, v26

    .line 680
    const-wide/high16 v32, 0x41d0000000000000L    # 1.073741824E9

    mul-double v26, v4, v32

    .line 681
    add-double v32, v4, v26

    sub-double v6, v32, v26

    .line 682
    .restart local v6    # "daa":D
    sub-double v8, v4, v6

    .line 685
    .restart local v8    # "dab":D
    div-double v18, v14, v4

    .line 686
    .restart local v18    # "ratio":D
    const-wide/high16 v32, 0x41d0000000000000L    # 1.073741824E9

    mul-double v26, v18, v32

    .line 687
    add-double v32, v18, v26

    sub-double v20, v32, v26

    .line 688
    .restart local v20    # "ratioa":D
    sub-double v22, v18, v20

    .line 691
    .restart local v22    # "ratiob":D
    mul-double v32, v6, v20

    sub-double v32, v14, v32

    mul-double v34, v6, v22

    sub-double v32, v32, v34

    mul-double v34, v8, v20

    sub-double v32, v32, v34

    mul-double v34, v8, v22

    sub-double v32, v32, v34

    div-double v32, v32, v4

    add-double v22, v22, v32

    .line 694
    div-double v32, v16, v4

    add-double v22, v22, v32

    .line 696
    neg-double v0, v10

    move-wide/from16 v32, v0

    mul-double v32, v32, v14

    div-double v32, v32, v4

    div-double v32, v32, v4

    add-double v22, v22, v32

    .line 698
    add-double v24, v20, v22

    .restart local v24    # "result":D
    goto/16 :goto_1
.end method

.method public static toDegrees(D)D
    .locals 12
    .param p0, "x"    # D

    .prologue
    .line 2994
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-nez v8, :cond_0

    const-wide/16 v8, 0x0

    cmpl-double v8, p0, v8

    if-nez v8, :cond_1

    .line 3005
    .end local p0    # "x":D
    :cond_0
    :goto_0
    return-wide p0

    .line 2999
    .restart local p0    # "x":D
    :cond_1
    const-wide v0, 0x404ca5dc00000000L    # 57.2957763671875

    .line 3000
    .local v0, "facta":D
    const-wide v2, 0x3eca63c1f7b86153L    # 3.145894820876798E-6

    .line 3002
    .local v2, "factb":D
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->doubleHighPart(D)D

    move-result-wide v4

    .line 3003
    .local v4, "xa":D
    sub-double v6, p0, v4

    .line 3005
    .local v6, "xb":D
    const-wide v8, 0x3eca63c1f7b86153L    # 3.145894820876798E-6

    mul-double/2addr v8, v6

    const-wide v10, 0x404ca5dc00000000L    # 57.2957763671875

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    const-wide v10, 0x3eca63c1f7b86153L    # 3.145894820876798E-6

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    const-wide v10, 0x404ca5dc00000000L    # 57.2957763671875

    mul-double/2addr v10, v4

    add-double p0, v8, v10

    goto :goto_0
.end method

.method public static toIntExact(J)I
    .locals 4
    .param p0, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .prologue
    .line 3661
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    .line 3662
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 3664
    :cond_1
    long-to-int v0, p0

    return v0
.end method

.method public static toRadians(D)D
    .locals 14
    .param p0, "x"    # D

    .prologue
    .line 2969
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v10

    if-nez v10, :cond_0

    const-wide/16 v10, 0x0

    cmpl-double v10, p0, v10

    if-nez v10, :cond_2

    :cond_0
    move-wide v4, p0

    .line 2984
    :cond_1
    :goto_0
    return-wide v4

    .line 2974
    :cond_2
    const-wide v0, 0x3f91df4680000000L    # 0.01745329052209854

    .line 2975
    .local v0, "facta":D
    const-wide v2, 0x3e21294e9c8ae0ecL    # 1.997844754509471E-9

    .line 2977
    .local v2, "factb":D
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->doubleHighPart(D)D

    move-result-wide v6

    .line 2978
    .local v6, "xa":D
    sub-double v8, p0, v6

    .line 2980
    .local v8, "xb":D
    const-wide v10, 0x3e21294e9c8ae0ecL    # 1.997844754509471E-9

    mul-double/2addr v10, v8

    const-wide v12, 0x3f91df4680000000L    # 0.01745329052209854

    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    const-wide v12, 0x3e21294e9c8ae0ecL    # 1.997844754509471E-9

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    const-wide v12, 0x3f91df4680000000L    # 0.01745329052209854

    mul-double/2addr v12, v6

    add-double v4, v10, v12

    .line 2981
    .local v4, "result":D
    const-wide/16 v10, 0x0

    cmpl-double v10, v4, v10

    if-nez v10, :cond_1

    .line 2982
    mul-double/2addr v4, p0

    goto :goto_0
.end method

.method public static ulp(D)D
    .locals 4
    .param p0, "x"    # D

    .prologue
    .line 3056
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3057
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 3059
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static ulp(F)F
    .locals 1
    .param p0, "x"    # F

    .prologue
    .line 3068
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3069
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 3071
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sub-float v0, p0, v0

    invoke-static {v0}, Lorg/apache/commons/math3/util/FastMath;->abs(F)F

    move-result v0

    goto :goto_0
.end method
