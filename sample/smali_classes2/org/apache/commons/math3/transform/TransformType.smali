.class public final enum Lorg/apache/commons/math3/transform/TransformType;
.super Ljava/lang/Enum;
.source "TransformType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/math3/transform/TransformType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/transform/TransformType;

.field public static final enum FORWARD:Lorg/apache/commons/math3/transform/TransformType;

.field public static final enum INVERSE:Lorg/apache/commons/math3/transform/TransformType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lorg/apache/commons/math3/transform/TransformType;

    const-string v1, "FORWARD"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/transform/TransformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/transform/TransformType;->FORWARD:Lorg/apache/commons/math3/transform/TransformType;

    .line 29
    new-instance v0, Lorg/apache/commons/math3/transform/TransformType;

    const-string v1, "INVERSE"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/transform/TransformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/transform/TransformType;->INVERSE:Lorg/apache/commons/math3/transform/TransformType;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/math3/transform/TransformType;

    sget-object v1, Lorg/apache/commons/math3/transform/TransformType;->FORWARD:Lorg/apache/commons/math3/transform/TransformType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/math3/transform/TransformType;->INVERSE:Lorg/apache/commons/math3/transform/TransformType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/commons/math3/transform/TransformType;->$VALUES:[Lorg/apache/commons/math3/transform/TransformType;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/transform/TransformType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lorg/apache/commons/math3/transform/TransformType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/transform/TransformType;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/transform/TransformType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/apache/commons/math3/transform/TransformType;->$VALUES:[Lorg/apache/commons/math3/transform/TransformType;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/transform/TransformType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/transform/TransformType;

    return-object v0
.end method
