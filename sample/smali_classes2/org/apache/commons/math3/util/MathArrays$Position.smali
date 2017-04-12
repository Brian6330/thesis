.class public final enum Lorg/apache/commons/math3/util/MathArrays$Position;
.super Ljava/lang/Enum;
.source "MathArrays.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/MathArrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/math3/util/MathArrays$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/util/MathArrays$Position;

.field public static final enum HEAD:Lorg/apache/commons/math3/util/MathArrays$Position;

.field public static final enum TAIL:Lorg/apache/commons/math3/util/MathArrays$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1466
    new-instance v0, Lorg/apache/commons/math3/util/MathArrays$Position;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/MathArrays$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/util/MathArrays$Position;->HEAD:Lorg/apache/commons/math3/util/MathArrays$Position;

    .line 1468
    new-instance v0, Lorg/apache/commons/math3/util/MathArrays$Position;

    const-string v1, "TAIL"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/util/MathArrays$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/util/MathArrays$Position;->TAIL:Lorg/apache/commons/math3/util/MathArrays$Position;

    .line 1464
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/math3/util/MathArrays$Position;

    sget-object v1, Lorg/apache/commons/math3/util/MathArrays$Position;->HEAD:Lorg/apache/commons/math3/util/MathArrays$Position;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/math3/util/MathArrays$Position;->TAIL:Lorg/apache/commons/math3/util/MathArrays$Position;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/commons/math3/util/MathArrays$Position;->$VALUES:[Lorg/apache/commons/math3/util/MathArrays$Position;

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
    .line 1464
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/util/MathArrays$Position;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1464
    const-class v0, Lorg/apache/commons/math3/util/MathArrays$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/util/MathArrays$Position;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/util/MathArrays$Position;
    .locals 1

    .prologue
    .line 1464
    sget-object v0, Lorg/apache/commons/math3/util/MathArrays$Position;->$VALUES:[Lorg/apache/commons/math3/util/MathArrays$Position;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/util/MathArrays$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/util/MathArrays$Position;

    return-object v0
.end method
