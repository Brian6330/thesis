.class public Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;
.super Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;
.source "DormandPrince853Integrator.java"


# static fields
.field private static final E1_01:D = 0.01312004499419488

.field private static final E1_06:D = -1.2251564463762044

.field private static final E1_07:D = -0.4957589496572502

.field private static final E1_08:D = 1.6643771824549864

.field private static final E1_09:D = -0.35032884874997366

.field private static final E1_10:D = 0.3341791187130175

.field private static final E1_11:D = 0.08192320648511571

.field private static final E1_12:D = -0.022355307863886294

.field private static final E2_01:D = -0.18980075407240762

.field private static final E2_06:D = 4.450312892752409

.field private static final E2_07:D = 1.8915178993145003

.field private static final E2_08:D = -5.801203960010585

.field private static final E2_09:D = -0.42268232132379197

.field private static final E2_10:D = -0.1521609496625161

.field private static final E2_11:D = 0.20136540080403034

.field private static final E2_12:D = 0.022651792198360825

.field private static final METHOD_NAME:Ljava/lang/String; = "Dormand-Prince 8 (5, 3)"

.field private static final STATIC_A:[[D

.field private static final STATIC_B:[D

.field private static final STATIC_C:[D


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 62
    const/16 v0, 0xc

    new-array v0, v0, [D

    const/4 v1, 0x0

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide v4, 0x4060e00000000000L    # 135.0

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    const-wide v4, 0x4046800000000000L    # 45.0

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    const-wide v2, 0x3fd5555555555555L    # 0.3333333333333333

    aput-wide v2, v0, v1

    const/4 v1, 0x5

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    const-wide v2, 0x3fd3b13b13b13b14L    # 0.3076923076923077

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    const-wide v2, 0x3fe4d74d74d74d75L    # 0.6512820512820513

    aput-wide v2, v0, v1

    const/16 v1, 0x8

    const-wide v2, 0x3fe3333333333333L    # 0.6

    aput-wide v2, v0, v1

    const/16 v1, 0x9

    const-wide v2, 0x3feb6db6db6db6dbL    # 0.8571428571428571

    aput-wide v2, v0, v1

    const/16 v1, 0xa

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v0, v1

    const/16 v1, 0xb

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->STATIC_C:[D

    .line 69
    const/16 v0, 0xc

    new-array v0, v0, [[D

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [D

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x4060e00000000000L    # 135.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    new-array v2, v2, [D

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x2

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x4

    new-array v2, v2, [D

    const/4 v3, 0x0

    const-wide v4, 0x407ce00000000000L    # 462.0

    const-wide v6, 0x405ac00000000000L    # 107.0

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x40a7700000000000L    # 3000.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x2

    const-wide v4, -0x3f86e00000000000L    # -402.0

    const-wide v6, 0x4068a00000000000L    # 197.0

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x3

    const-wide/high16 v4, 0x4065000000000000L    # 168.0

    const-wide v6, 0x4052400000000000L    # 73.0

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x4077700000000000L    # 375.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x5

    new-array v2, v2, [D

    const/4 v3, 0x0

    const-wide v4, 0x3fa2f684bda12f68L    # 0.037037037037037035

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x3

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x405b000000000000L    # 108.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x4

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x405b000000000000L    # 108.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x6

    new-array v2, v2, [D

    const/4 v3, 0x0

    const-wide/high16 v4, 0x3fa3000000000000L    # 0.037109375

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x3

    const-wide v4, 0x405d800000000000L    # 118.0

    const-wide/high16 v6, 0x4037000000000000L    # 23.0

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x4

    const-wide v4, 0x405d800000000000L    # 118.0

    const-wide/high16 v6, 0x4037000000000000L    # 23.0

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x5

    const-wide/high16 v4, -0x406e000000000000L    # -0.017578125

    aput-wide v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    new-array v2, v2, [D

    const/4 v3, 0x0

    const-wide v4, 0x3fa2fdb8fee78792L    # 0.03709200011850479

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x3

    const-wide v4, 0x40e92b0000000000L    # 51544.0

    const-wide v6, 0x40b2b00000000000L    # 4784.0

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x4116a97400000000L    # 371293.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x4

    const-wide v4, 0x40e92b0000000000L    # 51544.0

    const-wide v6, 0x40b2b00000000000L    # 4784.0

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x4116a97400000000L    # 371293.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x5

    const-wide v4, -0x4070a033df032cd1L    # -0.015319437748624402

    aput-wide v4, v2, v3

    const/4 v3, 0x6

    const-wide v4, 0x3f80f1d92efb0b71L    # 0.008273789163814023

    aput-wide v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x8

    new-array v2, v2, [D

    const/4 v3, 0x0

    const-wide v4, 0x3fe3f8b78b985813L    # 0.6241109587160757

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x3

    const-wide v4, -0x3d8cb866b2b38000L    # -1.324889724104E12

    const-wide v6, 0x42528e82fff4c000L    # 3.18801444819E11

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x42623c3684a38000L    # 6.265569375E11

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x4

    const-wide v4, -0x3d8cb866b2b38000L    # -1.324889724104E12

    const-wide v6, 0x42528e82fff4c000L    # 3.18801444819E11

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x42623c3684a38000L    # 6.265569375E11

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x5

    const-wide v4, 0x403b9793d88d1855L    # 27.59209969944671

    aput-wide v4, v2, v3

    const/4 v3, 0x6

    const-wide v4, 0x40342770f892ad69L    # 20.154067550477894

    aput-wide v4, v2, v3

    const/4 v3, 0x7

    const-wide v4, -0x3fba414b79a3bd07L    # -43.48988418106996

    aput-wide v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x9

    new-array v2, v2, [D

    const/4 v3, 0x0

    const-wide v4, 0x3fde9205e321b655L    # 0.47766253643826434

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x3

    const-wide v4, -0x3eaec09000000000L    # -4521408.0

    const-wide v6, 0x41315d2b00000000L    # 1137963.0

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x4146694e00000000L    # 2937500.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x4

    const-wide v4, -0x3eaec09000000000L    # -4521408.0

    const-wide v6, 0x41315d2b00000000L    # 1137963.0

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x4146694e00000000L    # 2937500.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x5

    const-wide v4, 0x40353ae4a6d655eeL    # 21.230051448181193

    aput-wide v4, v2, v3

    const/4 v3, 0x6

    const-wide v4, 0x402e8ef7b5f258b8L    # 15.279233632882423

    aput-wide v4, v2, v3

    const/4 v3, 0x7

    const-wide v4, -0x3fbf5b1be728ee47L    # -33.28821096898486

    aput-wide v4, v2, v3

    const/16 v3, 0x8

    const-wide v4, -0x406b2e4c264b578aL    # -0.020331201708508627

    aput-wide v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xa

    new-array v2, v2, [D

    const/4 v3, 0x0

    const-wide v4, -0x401202ede0e2c665L    # -0.9371424300859873

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x3

    const-wide v4, 0x41159ea000000000L    # 354216.0

    const-wide v6, 0x40f7076000000000L    # 94326.0

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x40fb8cf000000000L    # 112847.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x4

    const-wide v4, 0x41159ea000000000L    # 354216.0

    const-wide v6, 0x40f7076000000000L    # 94326.0

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x40fb8cf000000000L    # 112847.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x5

    const-wide v4, -0x3fdfb34f1deef3e4L    # -8.149787010746927

    aput-wide v4, v2, v3

    const/4 v3, 0x6

    const-wide v4, -0x3fcd7adcfa168a58L    # -18.52006565999696

    aput-wide v4, v2, v3

    const/4 v3, 0x7

    const-wide v4, 0x4036bd4f06cb863aL    # 22.739487099350505

    aput-wide v4, v2, v3

    const/16 v3, 0x8

    const-wide v4, 0x4003f2e777cf109dL    # 2.4936055526796523

    aput-wide v4, v2, v3

    const/16 v3, 0x9

    const-wide v4, -0x3ff7a039f2d4a8d4L    # -3.0467644718982196

    aput-wide v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xb

    new-array v2, v2, [D

    const/4 v3, 0x0

    const-wide v4, 0x40022fbd3b09fcdcL    # 2.273310147516538

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x3

    const-wide v4, -0x3eb59f1c00000000L    # -3457480.0

    const-wide v6, 0x412d531200000000L    # 960905.0

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x4120d5a800000000L    # 551636.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x4

    const-wide v4, -0x3eb59f1c00000000L    # -3457480.0

    const-wide v6, 0x412d531200000000L    # 960905.0

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x4120d5a800000000L    # 551636.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x5

    const-wide v4, -0x3fce0a837100cffaL    # -17.9589318631188

    aput-wide v4, v2, v3

    const/4 v3, 0x6

    const-wide v4, 0x403bf2ea18b58a01L    # 27.94888452941996

    aput-wide v4, v2, v3

    const/4 v3, 0x7

    const-wide v4, -0x3ff920c582e313edL    # -2.8589982771350235

    aput-wide v4, v2, v3

    const/16 v3, 0x8

    const-wide v4, -0x3fde4118e560cc57L    # -8.87285693353063

    aput-wide v4, v2, v3

    const/16 v3, 0x9

    const-wide v4, 0x4028b89c42c81861L    # 12.360567175794303

    aput-wide v4, v2, v3

    const/16 v3, 0xa

    const-wide v4, 0x3fe496ac6253e202L    # 0.6433927460157636

    aput-wide v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xc

    new-array v2, v2, [D

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->STATIC_A:[[D

    .line 136
    const/16 v0, 0xd

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->STATIC_B:[D

    return-void

    .line 69
    :array_0
    .array-data 8
        0x3fabcc6368d1177cL    # 0.054293734116568765
        0x0
        0x0
        0x0
        0x0
        0x4011cd1ed2ad5ae2L    # 4.450312892752409
        0x3ffe43a845d5ab9fL    # 1.8915178993145003
        -0x3fe8cb91306950bdL    # -5.801203960010585
        0x3fd3ea1df2f0eb98L    # 0.3111643669578199
        -0x403c85fd70bc4ffeL    # -0.1521609496625161
        0x3fc9c657697fe72dL    # 0.20136540080403034
        0x3fa6e44f50ab6bc2L    # 0.04471061572777259
    .end array-data

    .line 136
    :array_1
    .array-data 8
        0x3fabcc6368d1177cL    # 0.054293734116568765
        0x0
        0x0
        0x0
        0x0
        0x4011cd1ed2ad5ae2L    # 4.450312892752409
        0x3ffe43a845d5ab9fL    # 1.8915178993145003
        -0x3fe8cb91306950bdL    # -5.801203960010585
        0x3fd3ea1df2f0eb98L    # 0.3111643669578199
        -0x403c85fd70bc4ffeL    # -0.1521609496625161
        0x3fc9c657697fe72dL    # 0.20136540080403034
        0x3fa6e44f50ab6bc2L    # 0.04471061572777259
        0x0
    .end array-data
.end method

.method public constructor <init>(DDDD)V
    .locals 17
    .param p1, "minStep"    # D
    .param p3, "maxStep"    # D
    .param p5, "scalAbsoluteTolerance"    # D
    .param p7, "scalRelativeTolerance"    # D

    .prologue
    .line 219
    const-string v2, "Dormand-Prince 8 (5, 3)"

    const/4 v3, 0x1

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->STATIC_C:[D

    sget-object v5, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->STATIC_A:[[D

    sget-object v6, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->STATIC_B:[D

    new-instance v7, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;

    invoke-direct {v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;-><init>()V

    move-object/from16 v1, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    invoke-direct/range {v1 .. v15}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;-><init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DDDD)V

    .line 222
    return-void
.end method

.method public constructor <init>(DD[D[D)V
    .locals 15
    .param p1, "minStep"    # D
    .param p3, "maxStep"    # D
    .param p5, "vecAbsoluteTolerance"    # [D
    .param p6, "vecRelativeTolerance"    # [D

    .prologue
    .line 238
    const-string v2, "Dormand-Prince 8 (5, 3)"

    const/4 v3, 0x1

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->STATIC_C:[D

    sget-object v5, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->STATIC_A:[[D

    sget-object v6, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->STATIC_B:[D

    new-instance v7, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;

    invoke-direct {v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;-><init>()V

    move-object v1, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct/range {v1 .. v13}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;-><init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DD[D[D)V

    .line 241
    return-void
.end method


# virtual methods
.method protected estimateError([[D[D[DD)D
    .locals 28
    .param p1, "yDotK"    # [[D
    .param p2, "y0"    # [D
    .param p3, "y1"    # [D
    .param p4, "h"    # D

    .prologue
    .line 254
    const-wide/16 v8, 0x0

    .line 255
    .local v8, "error1":D
    const-wide/16 v10, 0x0

    .line 257
    .local v10, "error2":D
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->mainSetDimension:I

    if-ge v12, v13, :cond_1

    .line 258
    const-wide v22, 0x3f8adeaea1607e1aL    # 0.01312004499419488

    const/4 v13, 0x0

    aget-object v13, p1, v13

    aget-wide v24, v13, v12

    mul-double v22, v22, v24

    const-wide v24, -0x400c65c25aa54a3dL    # -1.2251564463762044

    const/4 v13, 0x5

    aget-object v13, p1, v13

    aget-wide v26, v13, v12

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, -0x4020457c4121758eL    # -0.4957589496572502

    const/4 v13, 0x6

    aget-object v13, p1, v13

    aget-wide v26, v13, v12

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, 0x3ffaa149f7eda509L    # 1.6643771824549864

    const/4 v13, 0x7

    aget-object v13, p1, v13

    aget-wide v26, v13, v12

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, -0x402994364ef1818fL    # -0.35032884874997366

    const/16 v13, 0x8

    aget-object v13, p1, v13

    aget-wide v26, v13, v12

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, 0x3fd56330d0783989L    # 0.3341791187130175

    const/16 v13, 0x9

    aget-object v13, p1, v13

    aget-wide v26, v13, v12

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, 0x3fb4f8eb54a31435L    # 0.08192320648511571

    const/16 v13, 0xa

    aget-object v13, p1, v13

    aget-wide v26, v13, v12

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, -0x40691bb0af54943eL    # -0.022355307863886294

    const/16 v13, 0xb

    aget-object v13, p1, v13

    aget-wide v26, v13, v12

    mul-double v24, v24, v26

    add-double v4, v22, v24

    .line 262
    .local v4, "errSum1":D
    const-wide v22, -0x4037b49be0405e0fL    # -0.18980075407240762

    const/4 v13, 0x0

    aget-object v13, p1, v13

    aget-wide v24, v13, v12

    mul-double v22, v22, v24

    const-wide v24, 0x4011cd1ed2ad5ae2L    # 4.450312892752409

    const/4 v13, 0x5

    aget-object v13, p1, v13

    aget-wide v26, v13, v12

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, 0x3ffe43a845d5ab9fL    # 1.8915178993145003

    const/4 v13, 0x6

    aget-object v13, p1, v13

    aget-wide v26, v13, v12

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, -0x3fe8cb91306950bdL    # -5.801203960010585

    const/4 v13, 0x7

    aget-object v13, p1, v13

    aget-wide v26, v13, v12

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, -0x4024f2c5d95448e9L    # -0.42268232132379197

    const/16 v13, 0x8

    aget-object v13, p1, v13

    aget-wide v26, v13, v12

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, -0x403c85fd70bc4ffeL    # -0.1521609496625161

    const/16 v13, 0x9

    aget-object v13, p1, v13

    aget-wide v26, v13, v12

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, 0x3fc9c657697fe72dL    # 0.20136540080403034

    const/16 v13, 0xa

    aget-object v13, p1, v13

    aget-wide v26, v13, v12

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, 0x3f9732080ac040eeL    # 0.022651792198360825

    const/16 v13, 0xb

    aget-object v13, p1, v13

    aget-wide v26, v13, v12

    mul-double v24, v24, v26

    add-double v6, v22, v24

    .line 267
    .local v6, "errSum2":D
    aget-wide v22, p2, v12

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    aget-wide v24, p3, v12

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v20

    .line 268
    .local v20, "yScale":D
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->vecAbsoluteTolerance:[D

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->scalAbsoluteTolerance:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->scalRelativeTolerance:D

    move-wide/from16 v24, v0

    mul-double v24, v24, v20

    add-double v18, v22, v24

    .line 271
    .local v18, "tol":D
    :goto_1
    div-double v14, v4, v18

    .line 272
    .local v14, "ratio1":D
    mul-double v22, v14, v14

    add-double v8, v8, v22

    .line 273
    div-double v16, v6, v18

    .line 274
    .local v16, "ratio2":D
    mul-double v22, v16, v16

    add-double v10, v10, v22

    .line 257
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 268
    .end local v14    # "ratio1":D
    .end local v16    # "ratio2":D
    .end local v18    # "tol":D
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->vecAbsoluteTolerance:[D

    aget-wide v22, v13, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->vecRelativeTolerance:[D

    aget-wide v24, v13, v12

    mul-double v24, v24, v20

    add-double v18, v22, v24

    goto :goto_1

    .line 277
    .end local v4    # "errSum1":D
    .end local v6    # "errSum2":D
    .end local v20    # "yScale":D
    :cond_1
    const-wide v22, 0x3f847ae147ae147bL    # 0.01

    mul-double v22, v22, v10

    add-double v2, v8, v22

    .line 278
    .local v2, "den":D
    const-wide/16 v22, 0x0

    cmpg-double v13, v2, v22

    if-gtz v13, :cond_2

    .line 279
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 282
    :cond_2
    invoke-static/range {p4 .. p5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    mul-double v22, v22, v8

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->mainSetDimension:I

    int-to-double v0, v13

    move-wide/from16 v24, v0

    mul-double v24, v24, v2

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v24

    div-double v22, v22, v24

    return-wide v22
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 246
    const/16 v0, 0x8

    return v0
.end method
