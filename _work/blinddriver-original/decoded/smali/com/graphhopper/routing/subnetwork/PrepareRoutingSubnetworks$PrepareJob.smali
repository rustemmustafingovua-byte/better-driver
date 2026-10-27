.class public Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrepareJob"
.end annotation


# instance fields
.field private final subnetworkEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

.field private final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/routing/weighting/Weighting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iput-object p1, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;->subnetworkEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    return-void
.end method

.method public static bridge synthetic a(Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;->subnetworkEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;)Lcom/graphhopper/routing/weighting/Weighting;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;->subnetworkEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {v0}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "|"

    invoke-static {v0, v1, p0}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
