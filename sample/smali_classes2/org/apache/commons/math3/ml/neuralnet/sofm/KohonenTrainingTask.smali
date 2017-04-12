.class public Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenTrainingTask;
.super Ljava/lang/Object;
.source "KohonenTrainingTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final featuresIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<[D>;"
        }
    .end annotation
.end field

.field private final net:Lorg/apache/commons/math3/ml/neuralnet/Network;

.field private final updateAction:Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ml/neuralnet/Network;Ljava/util/Iterator;Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;)V
    .locals 0
    .param p1, "net"    # Lorg/apache/commons/math3/ml/neuralnet/Network;
    .param p3, "updateAction"    # Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ml/neuralnet/Network;",
            "Ljava/util/Iterator",
            "<[D>;",
            "Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "featuresIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<[D>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenTrainingTask;->net:Lorg/apache/commons/math3/ml/neuralnet/Network;

    .line 47
    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenTrainingTask;->featuresIterator:Ljava/util/Iterator;

    .line 48
    iput-object p3, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenTrainingTask;->updateAction:Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;

    .line 49
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 55
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenTrainingTask;->featuresIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenTrainingTask;->updateAction:Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;

    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenTrainingTask;->net:Lorg/apache/commons/math3/ml/neuralnet/Network;

    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenTrainingTask;->featuresIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-virtual {v1, v2, v0}, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->update(Lorg/apache/commons/math3/ml/neuralnet/Network;[D)V

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method
