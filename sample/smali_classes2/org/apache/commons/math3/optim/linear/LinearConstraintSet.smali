.class public Lorg/apache/commons/math3/optim/linear/LinearConstraintSet;
.super Ljava/lang/Object;
.source "LinearConstraintSet.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# instance fields
.field private final linearConstraints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/commons/math3/optim/linear/LinearConstraint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/optim/linear/LinearConstraint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "constraints":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math3/optim/linear/LinearConstraint;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraintSet;->linearConstraints:Ljava/util/Set;

    .line 52
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraintSet;->linearConstraints:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 53
    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/commons/math3/optim/linear/LinearConstraint;)V
    .locals 5
    .param p1, "constraints"    # [Lorg/apache/commons/math3/optim/linear/LinearConstraint;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v4, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraintSet;->linearConstraints:Ljava/util/Set;

    .line 41
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optim/linear/LinearConstraint;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 42
    .local v1, "c":Lorg/apache/commons/math3/optim/linear/LinearConstraint;
    iget-object v4, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraintSet;->linearConstraints:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "c":Lorg/apache/commons/math3/optim/linear/LinearConstraint;
    :cond_0
    return-void
.end method


# virtual methods
.method public getConstraints()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/optim/linear/LinearConstraint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/LinearConstraintSet;->linearConstraints:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
