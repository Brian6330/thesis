.class synthetic Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$1;
.super Ljava/lang/Object;
.source "BaseSecantSolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution:[I

.field static final synthetic $SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 212
    invoke-static {}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->values()[Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution:[I

    :try_start_0
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution:[I

    sget-object v1, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution:[I

    sget-object v1, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->LEFT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution:[I

    sget-object v1, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->RIGHT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution:[I

    sget-object v1, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->BELOW_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution:[I

    sget-object v1, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ABOVE_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    .line 185
    :goto_4
    invoke-static {}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->values()[Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method:[I

    :try_start_5
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method:[I

    sget-object v1, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->ILLINOIS:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method:[I

    sget-object v1, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->PEGASUS:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method:[I

    sget-object v1, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->REGULA_FALSI:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    .line 212
    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
