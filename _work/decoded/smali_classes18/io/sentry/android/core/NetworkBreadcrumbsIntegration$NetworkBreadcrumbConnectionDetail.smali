.class Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;
.super Ljava/lang/Object;
.source "NetworkBreadcrumbsIntegration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/NetworkBreadcrumbsIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkBreadcrumbConnectionDetail"
.end annotation


# instance fields
.field final downBandwidth:I

.field final isVpn:Z

.field final signalStrength:I

.field private timestampNanos:J

.field final type:Ljava/lang/String;

.field final upBandwidth:I


# direct methods
.method constructor <init>(Landroid/net/NetworkCapabilities;Lio/sentry/android/core/BuildInfoProvider;J)V
    .locals 3
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p3, "capabilityNanos"    # J

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const-string v0, "NetworkCapabilities is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    const-string v0, "BuildInfoProvider is required"

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v0

    iput v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->downBandwidth:I

    .line 212
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v0

    iput v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->upBandwidth:I

    .line 214
    invoke-virtual {p2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 215
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v0

    goto :goto_0

    .line 216
    :cond_0
    move v0, v2

    :goto_0
    nop

    .line 218
    .local v0, "strength":I
    const/16 v1, -0x64

    if-le v0, v1, :cond_1

    move v2, v0

    :cond_1
    iput v2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->signalStrength:I

    .line 219
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    iput-boolean v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->isVpn:Z

    .line 220
    nop

    .line 221
    invoke-static {p1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->getConnectionType(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "connectionType":Ljava/lang/String;
    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    const-string v2, ""

    :goto_1
    iput-object v2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->type:Ljava/lang/String;

    .line 223
    iput-wide p3, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->timestampNanos:J

    .line 224
    return-void
.end method


# virtual methods
.method isSimilar(Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;)Z
    .locals 19
    .param p1, "other"    # Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;

    .line 233
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->signalStrength:I

    iget v3, v1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->signalStrength:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 234
    .local v2, "signalDiff":I
    iget v3, v0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->downBandwidth:I

    iget v4, v1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->downBandwidth:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 235
    .local v3, "downBandwidthDiff":I
    iget v4, v0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->upBandwidth:I

    iget v5, v1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->upBandwidth:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 239
    .local v4, "upBandwidthDiff":I
    iget-wide v5, v0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->timestampNanos:J

    iget-wide v7, v1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->timestampNanos:J

    sub-long/2addr v5, v7

    .line 240
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    long-to-double v5, v5

    invoke-static {v5, v6}, Lio/sentry/DateUtils;->nanosToMillis(D)D

    move-result-wide v5

    const-wide v7, 0x40b3880000000000L    # 5000.0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 241
    .local v5, "isTimestampSimilar":Z
    :goto_0
    if-nez v5, :cond_2

    const/4 v8, 0x5

    if-gt v2, v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, 0x1

    .line 242
    .local v8, "isSignalSimilar":Z
    :goto_2
    const-wide v9, 0x3fb999999999999aL    # 0.1

    const-wide v11, 0x408f400000000000L    # 1000.0

    if-nez v5, :cond_4

    int-to-double v13, v3

    iget v15, v0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->downBandwidth:I

    .line 243
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    int-to-double v6, v15

    mul-double/2addr v6, v9

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    cmpg-double v6, v13, v6

    if-gtz v6, :cond_3

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v6, 0x1

    .line 244
    .local v6, "isDownBandwidthSimilar":Z
    :goto_4
    if-nez v5, :cond_6

    int-to-double v13, v4

    iget v7, v0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->upBandwidth:I

    .line 245
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    move-wide/from16 v17, v9

    int-to-double v9, v7

    mul-double v9, v9, v17

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    cmpg-double v7, v13, v9

    if-gtz v7, :cond_5

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v7, 0x1

    .line 246
    .local v7, "isUpBandwidthSimilar":Z
    :goto_6
    iget-boolean v9, v0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->isVpn:Z

    iget-boolean v10, v1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->isVpn:Z

    if-ne v9, v10, :cond_7

    iget-object v9, v0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->type:Ljava/lang/String;

    iget-object v10, v1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;->type:Ljava/lang/String;

    .line 247
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v8, :cond_7

    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    const/16 v16, 0x1

    goto :goto_7

    :cond_7
    const/16 v16, 0x0

    .line 246
    :goto_7
    return v16
.end method
