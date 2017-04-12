.class Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer$PathIsExploredException;
.super Ljava/lang/RuntimeException;
.source "BOBYQAOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathIsExploredException"
.end annotation


# static fields
.field private static final PATH_IS_EXPLORED:Ljava/lang/String; = "If this exception is thrown, just remove it from the code"

.field private static final serialVersionUID:J = 0xa5804c4561f2cbdL


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 2461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "If this exception is thrown, just remove it from the code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Lorg/apache/commons/math3/optimization/direct/BOBYQAOptimizer;->access$000(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2462
    return-void
.end method
