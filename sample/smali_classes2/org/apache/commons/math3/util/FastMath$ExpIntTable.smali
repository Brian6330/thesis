.class Lorg/apache/commons/math3/util/FastMath$ExpIntTable;
.super Ljava/lang/Object;
.source "FastMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/FastMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExpIntTable"
.end annotation


# static fields
.field private static final EXP_INT_TABLE_A:[D

.field private static final EXP_INT_TABLE_B:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4090
    invoke-static {}, Lorg/apache/commons/math3/util/FastMathLiteralArrays;->loadExpIntA()[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/util/FastMath$ExpIntTable;->EXP_INT_TABLE_A:[D

    .line 4091
    invoke-static {}, Lorg/apache/commons/math3/util/FastMathLiteralArrays;->loadExpIntB()[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/util/FastMath$ExpIntTable;->EXP_INT_TABLE_B:[D

    .line 4093
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[D
    .locals 1

    .prologue
    .line 4058
    sget-object v0, Lorg/apache/commons/math3/util/FastMath$ExpIntTable;->EXP_INT_TABLE_A:[D

    return-object v0
.end method

.method static synthetic access$100()[D
    .locals 1

    .prologue
    .line 4058
    sget-object v0, Lorg/apache/commons/math3/util/FastMath$ExpIntTable;->EXP_INT_TABLE_B:[D

    return-object v0
.end method
