.class public final enum Lorg/apache/commons/math3/stat/ranking/TiesStrategy;
.super Ljava/lang/Enum;
.source "TiesStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/math3/stat/ranking/TiesStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

.field public static final enum AVERAGE:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

.field public static final enum MAXIMUM:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

.field public static final enum MINIMUM:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

.field public static final enum RANDOM:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

.field public static final enum SEQUENTIAL:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    const-string v1, "SEQUENTIAL"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->SEQUENTIAL:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 44
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    const-string v1, "MINIMUM"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->MINIMUM:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 47
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    const-string v1, "MAXIMUM"

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->MAXIMUM:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 50
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    const-string v1, "AVERAGE"

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->AVERAGE:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 53
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    const-string v1, "RANDOM"

    invoke-direct {v0, v1, v6}, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->RANDOM:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    sget-object v1, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->SEQUENTIAL:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->MINIMUM:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->MAXIMUM:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->AVERAGE:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->RANDOM:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->$VALUES:[Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/stat/ranking/TiesStrategy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/stat/ranking/TiesStrategy;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->$VALUES:[Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    return-object v0
.end method
