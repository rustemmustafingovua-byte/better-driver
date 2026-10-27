.class Lcom/graphhopper/storage/TurnCostStorage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/ev/EdgeIntAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/storage/TurnCostStorage;->createEdgeIntAccess()Lcom/graphhopper/routing/ev/EdgeIntAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/graphhopper/storage/TurnCostStorage;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/TurnCostStorage;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/storage/TurnCostStorage$1;->this$0:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInt(II)I
    .locals 2

    iget-object p2, p0, Lcom/graphhopper/storage/TurnCostStorage$1;->this$0:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-static {p2}, Lcom/graphhopper/storage/TurnCostStorage;->b(Lcom/graphhopper/storage/TurnCostStorage;)Lcom/graphhopper/storage/DataAccess;

    move-result-object p2

    iget-object p0, p0, Lcom/graphhopper/storage/TurnCostStorage$1;->this$0:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-static {p0, p1}, Lcom/graphhopper/storage/TurnCostStorage;->c(Lcom/graphhopper/storage/TurnCostStorage;I)J

    move-result-wide p0

    const-wide/16 v0, 0x8

    add-long/2addr p0, v0

    invoke-interface {p2, p0, p1}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    return p0
.end method

.method public setInt(III)V
    .locals 2

    iget-object p2, p0, Lcom/graphhopper/storage/TurnCostStorage$1;->this$0:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-static {p2}, Lcom/graphhopper/storage/TurnCostStorage;->b(Lcom/graphhopper/storage/TurnCostStorage;)Lcom/graphhopper/storage/DataAccess;

    move-result-object p2

    iget-object p0, p0, Lcom/graphhopper/storage/TurnCostStorage$1;->this$0:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-static {p0, p1}, Lcom/graphhopper/storage/TurnCostStorage;->c(Lcom/graphhopper/storage/TurnCostStorage;I)J

    move-result-wide p0

    const-wide/16 v0, 0x8

    add-long/2addr p0, v0

    invoke-interface {p2, p0, p1, p3}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    return-void
.end method
