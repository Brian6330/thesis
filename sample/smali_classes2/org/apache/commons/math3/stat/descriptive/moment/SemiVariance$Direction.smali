.class public final enum Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;
.super Ljava/lang/Enum;
.source "SemiVariance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

.field public static final enum DOWNSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

.field public static final enum UPSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;


# instance fields
.field private direction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 338
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    const-string v1, "UPSIDE"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->UPSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .line 344
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    const-string v1, "DOWNSIDE"

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->DOWNSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .line 333
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    sget-object v1, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->UPSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->DOWNSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->$VALUES:[Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "b"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 356
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 357
    iput-boolean p3, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->direction:Z

    .line 358
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 333
    const-class v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;
    .locals 1

    .prologue
    .line 333
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->$VALUES:[Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    return-object v0
.end method


# virtual methods
.method getDirection()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->direction:Z

    return v0
.end method
