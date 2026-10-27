.class final Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkBreadcrumbsIntegration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/NetworkBreadcrumbsIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NetworkBreadcrumbsNetworkCallback"
.end annotation


# instance fields
.field final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field final dateProvider:Lio/sentry/SentryDateProvider;

.field lastCapabilities:Landroid/net/NetworkCapabilities;

.field lastCapabilityNanos:J

.field final scopes:Lio/sentry/IScopes;


# direct methods
.method constructor <init>(Lio/sentry/IScopes;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/SentryDateProvider;)V
    .locals 2
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p3, "dateProvider"    # Lio/sentry/SentryDateProvider;

    .line 118
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->lastCapabilities:Landroid/net/NetworkCapabilities;

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->lastCapabilityNanos:J

    .line 119
    const-string v0, "Scopes are required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IScopes;

    iput-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->scopes:Lio/sentry/IScopes;

    .line 120
    nop

    .line 121
    const-string v0, "BuildInfoProvider is required"

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/BuildInfoProvider;

    iput-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 122
    const-string v0, "SentryDateProvider is required"

    invoke-static {p3, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryDateProvider;

    iput-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->dateProvider:Lio/sentry/SentryDateProvider;

    .line 123
    return-void
.end method

.method private createBreadcrumb(Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .line 165
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 166
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    const-string v1, "system"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 167
    const-string v1, "network.event"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 168
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    .line 170
    return-object v0
.end method

.method private getNewConnectionDetails(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;JJ)Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;
    .locals 3
    .param p1, "oldCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "newCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "oldCapabilityNanos"    # J
    .param p5, "newCapabilityNanos"    # J

    .line 178
    if-nez p1, :cond_0

    .line 179
    new-instance v0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;

    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {v0, p2, v1, p5, p6}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;-><init>(Landroid/net/NetworkCapabilities;Lio/sentry/android/core/BuildInfoProvider;J)V

    return-object v0

    .line 182
    :cond_0
    new-instance v0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;

    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {v0, p1, v1, p3, p4}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;-><init>(Landroid/net/NetworkCapabilities;Lio/sentry/android/core/BuildInfoProvider;J)V

    .line 185
    .local v0, "oldConnectionDetails":Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;
    new-instance v1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;

    iget-object v2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {v1, p2, v2, p5, p6}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;-><init>(Landroid/net/NetworkCapabilities;Lio/sentry/android/core/BuildInfoProvider;J)V

    .line 191
    .local v1, "newConnectionDetails":Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;
    invoke-virtual {v0, v1}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->isSimilar(Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    const/4 v2, 0x0

    return-object v2

    .line 194
    :cond_1
    return-object v1
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 127
    const-string v0, "NETWORK_AVAILABLE"

    invoke-direct {p0, v0}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->createBreadcrumb(Ljava/lang/String;)Lio/sentry/Breadcrumb;

    move-result-object v0

    .line 128
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->scopes:Lio/sentry/IScopes;

    invoke-interface {v1, v0}, Lio/sentry/IScopes;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    .line 129
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->lastCapabilities:Landroid/net/NetworkCapabilities;

    .line 130
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 8
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 135
    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->dateProvider:Lio/sentry/SentryDateProvider;

    invoke-interface {v0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v6

    .line 136
    .local v6, "nowNanos":J
    iget-object v2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->lastCapabilities:Landroid/net/NetworkCapabilities;

    iget-wide v4, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->lastCapabilityNanos:J

    .line 137
    move-object v1, p0

    move-object v3, p2

    .end local p2    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .local v3, "networkCapabilities":Landroid/net/NetworkCapabilities;
    invoke-direct/range {v1 .. v7}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->getNewConnectionDetails(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;JJ)Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;

    move-result-object p2

    .line 139
    .local p2, "connectionDetail":Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;
    if-nez p2, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    iput-object v3, v1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->lastCapabilities:Landroid/net/NetworkCapabilities;

    .line 143
    iput-wide v6, v1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->lastCapabilityNanos:J

    .line 144
    const-string v0, "NETWORK_CAPABILITIES_CHANGED"

    invoke-direct {p0, v0}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->createBreadcrumb(Ljava/lang/String;)Lio/sentry/Breadcrumb;

    move-result-object v0

    .line 145
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    iget v2, p2, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->downBandwidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "download_bandwidth"

    invoke-virtual {v0, v4, v2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    iget v2, p2, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->upBandwidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "upload_bandwidth"

    invoke-virtual {v0, v4, v2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    iget-boolean v2, p2, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->isVpn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "vpn_active"

    invoke-virtual {v0, v4, v2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    const-string v2, "network_type"

    iget-object v4, p2, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    iget v2, p2, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->signalStrength:I

    if-eqz v2, :cond_1

    .line 150
    iget v2, p2, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->signalStrength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "signal_strength"

    invoke-virtual {v0, v4, v2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    :cond_1
    new-instance v2, Lio/sentry/Hint;

    invoke-direct {v2}, Lio/sentry/Hint;-><init>()V

    .line 153
    .local v2, "hint":Lio/sentry/Hint;
    const-string v4, "android:networkCapabilities"

    invoke-virtual {v2, v4, p2}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    iget-object v4, v1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->scopes:Lio/sentry/IScopes;

    invoke-interface {v4, v0, v2}, Lio/sentry/IScopes;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    .line 155
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 159
    const-string v0, "NETWORK_LOST"

    invoke-direct {p0, v0}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->createBreadcrumb(Ljava/lang/String;)Lio/sentry/Breadcrumb;

    move-result-object v0

    .line 160
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->scopes:Lio/sentry/IScopes;

    invoke-interface {v1, v0}, Lio/sentry/IScopes;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    .line 161
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;->lastCapabilities:Landroid/net/NetworkCapabilities;

    .line 162
    return-void
.end method
