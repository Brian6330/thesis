.class Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D$LazyHolder;
.super Ljava/lang/Object;
.source "Euclidean2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D$1;)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D$LazyHolder;->INSTANCE:Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D$LazyHolder;->INSTANCE:Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;

    return-object v0
.end method
