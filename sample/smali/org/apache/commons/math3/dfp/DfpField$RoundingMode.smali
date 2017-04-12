.class public final enum Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;
.super Ljava/lang/Enum;
.source "DfpField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/dfp/DfpField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RoundingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_CEIL:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_DOWN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_FLOOR:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_HALF_DOWN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_HALF_EVEN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_HALF_ODD:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_HALF_UP:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_UP:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v1, "ROUND_DOWN"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_DOWN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    .line 35
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v1, "ROUND_UP"

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_UP:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    .line 38
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v1, "ROUND_HALF_UP"

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_UP:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    .line 41
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v1, "ROUND_HALF_DOWN"

    invoke-direct {v0, v1, v6}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_DOWN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    .line 46
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v1, "ROUND_HALF_EVEN"

    invoke-direct {v0, v1, v7}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_EVEN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    .line 49
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v1, "ROUND_HALF_ODD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_ODD:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    .line 52
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v1, "ROUND_CEIL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_CEIL:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    .line 55
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v1, "ROUND_FLOOR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_FLOOR:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    .line 29
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    sget-object v1, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_DOWN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_UP:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_UP:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_DOWN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_EVEN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_ODD:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_CEIL:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_FLOOR:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->$VALUES:[Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->$VALUES:[Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    return-object v0
.end method
