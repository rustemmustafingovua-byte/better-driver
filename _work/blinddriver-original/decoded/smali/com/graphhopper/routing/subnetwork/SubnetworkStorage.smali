.class public Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final da:Lcom/graphhopper/storage/DataAccess;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/DataAccess;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;->da:Lcom/graphhopper/storage/DataAccess;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;->da:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->close()V

    return-void
.end method

.method public create(J)Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;->da:Lcom/graphhopper/storage/DataAccess;

    const-wide/16 v1, 0x7d0

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/storage/DataAccess;->create(J)Lcom/graphhopper/storage/DataAccess;

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;->da:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->ensureCapacity(J)Z

    return-object p0
.end method

.method public flush()V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;->da:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->flush()V

    return-void
.end method

.method public getCapacity()J
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;->da:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->getCapacity()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSubnetwork(I)I
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;->da:Lcom/graphhopper/storage/DataAccess;

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/graphhopper/storage/DataAccess;->getByte(J)B

    move-result p0

    return p0
.end method

.method public isClosed()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;->da:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->isClosed()Z

    move-result p0

    return p0
.end method

.method public loadExisting()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;->da:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->loadExisting()Z

    move-result p0

    return p0
.end method

.method public setSubnetwork(II)V
    .locals 2

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;->da:Lcom/graphhopper/storage/DataAccess;

    int-to-long v0, p1

    int-to-byte p1, p2

    invoke-interface {p0, v0, v1, p1}, Lcom/graphhopper/storage/DataAccess;->setByte(JB)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of subnetworks is currently limited to 127 but requested "

    invoke-static {p2, p1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
