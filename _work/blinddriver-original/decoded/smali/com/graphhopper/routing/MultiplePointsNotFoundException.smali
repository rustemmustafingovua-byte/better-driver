.class Lcom/graphhopper/routing/MultiplePointsNotFoundException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final pointsNotFound:Lcom/carrotsearch/hppc/x;


# direct methods
.method public constructor <init>(Lcom/carrotsearch/hppc/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/MultiplePointsNotFoundException;->pointsNotFound:Lcom/carrotsearch/hppc/x;

    return-void
.end method


# virtual methods
.method public getPointsNotFound()Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/MultiplePointsNotFoundException;->pointsNotFound:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method
