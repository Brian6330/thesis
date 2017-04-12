.class public final enum Lorg/apache/commons/math3/geometry/partitioning/Side;
.super Ljava/lang/Enum;
.source "Side.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/math3/geometry/partitioning/Side;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/geometry/partitioning/Side;

.field public static final enum BOTH:Lorg/apache/commons/math3/geometry/partitioning/Side;

.field public static final enum HYPER:Lorg/apache/commons/math3/geometry/partitioning/Side;

.field public static final enum MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

.field public static final enum PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/Side;

    const-string v1, "PLUS"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    .line 29
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/Side;

    const-string v1, "MINUS"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/geometry/partitioning/Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    .line 32
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/Side;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/geometry/partitioning/Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/Side;->BOTH:Lorg/apache/commons/math3/geometry/partitioning/Side;

    .line 35
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/Side;

    const-string v1, "HYPER"

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/math3/geometry/partitioning/Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/Side;->HYPER:Lorg/apache/commons/math3/geometry/partitioning/Side;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/commons/math3/geometry/partitioning/Side;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/Side;->BOTH:Lorg/apache/commons/math3/geometry/partitioning/Side;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/Side;->HYPER:Lorg/apache/commons/math3/geometry/partitioning/Side;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/Side;->$VALUES:[Lorg/apache/commons/math3/geometry/partitioning/Side;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/geometry/partitioning/Side;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lorg/apache/commons/math3/geometry/partitioning/Side;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/Side;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/geometry/partitioning/Side;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/Side;->$VALUES:[Lorg/apache/commons/math3/geometry/partitioning/Side;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/geometry/partitioning/Side;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/geometry/partitioning/Side;

    return-object v0
.end method
