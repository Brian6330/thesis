.class public abstract enum Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;
.super Ljava/lang/Enum;
.source "GaussNewtonOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Decomposition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

.field public static final enum CHOLESKY:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

.field public static final enum LU:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

.field public static final enum QR:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

.field public static final enum SVD:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition$1;

    const-string v1, "LU"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;->LU:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    .line 87
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition$2;

    const-string v1, "QR"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;->QR:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    .line 108
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition$3;

    const-string v1, "CHOLESKY"

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;->CHOLESKY:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    .line 133
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition$4;

    const-string v1, "SVD"

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;->SVD:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    sget-object v1, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;->LU:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;->QR:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;->CHOLESKY:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;->SVD:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;->$VALUES:[Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$1;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;->$VALUES:[Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    return-object v0
.end method


# virtual methods
.method protected abstract solve(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
.end method
