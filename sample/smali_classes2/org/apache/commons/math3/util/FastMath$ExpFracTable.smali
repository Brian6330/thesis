.class Lorg/apache/commons/math3/util/FastMath$ExpFracTable;
.super Ljava/lang/Object;
.source "FastMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/FastMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExpFracTable"
.end annotation


# static fields
.field private static final EXP_FRAC_TABLE_A:[D

.field private static final EXP_FRAC_TABLE_B:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4123
    invoke-static {}, Lorg/apache/commons/math3/util/FastMathLiteralArrays;->loadExpFracA()[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/util/FastMath$ExpFracTable;->EXP_FRAC_TABLE_A:[D

    .line 4124
    invoke-static {}, Lorg/apache/commons/math3/util/FastMathLiteralArrays;->loadExpFracB()[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/util/FastMath$ExpFracTable;->EXP_FRAC_TABLE_B:[D

    .line 4126
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()[D
    .locals 1

    .prologue
    .line 4097
    sget-object v0, Lorg/apache/commons/math3/util/FastMath$ExpFracTable;->EXP_FRAC_TABLE_A:[D

    return-object v0
.end method

.method static synthetic access$300()[D
    .locals 1

    .prologue
    .line 4097
    sget-object v0, Lorg/apache/commons/math3/util/FastMath$ExpFracTable;->EXP_FRAC_TABLE_B:[D

    return-object v0
.end method
