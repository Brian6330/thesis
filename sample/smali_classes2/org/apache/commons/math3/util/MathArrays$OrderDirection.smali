.class public final enum Lorg/apache/commons/math3/util/MathArrays$OrderDirection;
.super Ljava/lang/Enum;
.source "MathArrays.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/MathArrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OrderDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/math3/util/MathArrays$OrderDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

.field public static final enum DECREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

.field public static final enum INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 298
    new-instance v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    const-string v1, "INCREASING"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    .line 300
    new-instance v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    const-string v1, "DECREASING"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->DECREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    .line 296
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    sget-object v1, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->DECREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->$VALUES:[Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

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
    .line 296
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/util/MathArrays$OrderDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 296
    const-class v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/util/MathArrays$OrderDirection;
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->$VALUES:[Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    return-object v0
.end method