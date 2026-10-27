.class Lcom/graphhopper/routing/util/MaxSpeedCalculator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/ev/EdgeIntAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/routing/util/MaxSpeedCalculator;->createMaxSpeedStorage(Lcom/graphhopper/storage/DataAccess;)Lcom/graphhopper/routing/ev/EdgeIntAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/graphhopper/routing/util/MaxSpeedCalculator;

.field final synthetic val$dataAccess:Lcom/graphhopper/storage/DataAccess;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/util/MaxSpeedCalculator;Lcom/graphhopper/storage/DataAccess;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator$1;->this$0:Lcom/graphhopper/routing/util/MaxSpeedCalculator;

    iput-object p2, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator$1;->val$dataAccess:Lcom/graphhopper/storage/DataAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInt(II)I
    .locals 4

    iget-object p2, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator$1;->val$dataAccess:Lcom/graphhopper/storage/DataAccess;

    int-to-long v0, p1

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    add-long/2addr v2, v0

    invoke-interface {p2, v2, v3}, Lcom/graphhopper/storage/DataAccess;->ensureCapacity(J)Z

    iget-object p0, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator$1;->val$dataAccess:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0, v0, v1}, Lcom/graphhopper/storage/DataAccess;->getShort(J)S

    move-result p0

    return p0
.end method

.method public setInt(III)V
    .locals 4

    iget-object p2, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator$1;->val$dataAccess:Lcom/graphhopper/storage/DataAccess;

    int-to-long v0, p1

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    add-long/2addr v2, v0

    invoke-interface {p2, v2, v3}, Lcom/graphhopper/storage/DataAccess;->ensureCapacity(J)Z

    const/16 p1, 0x7fff

    if-gt p3, p1, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator$1;->val$dataAccess:Lcom/graphhopper/storage/DataAccess;

    int-to-short p1, p3

    invoke-interface {p0, v0, v1, p1}, Lcom/graphhopper/storage/DataAccess;->setShort(JS)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "value too large for short: "

    invoke-static {p3, p1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
