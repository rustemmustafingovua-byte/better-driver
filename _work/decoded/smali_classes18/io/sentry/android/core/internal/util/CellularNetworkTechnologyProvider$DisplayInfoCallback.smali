.class final Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider$DisplayInfoCallback;
.super Landroid/telephony/TelephonyCallback;
.source "CellularNetworkTechnologyProvider.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayInfoCallback"
.end annotation


# instance fields
.field private final provider:Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;


# direct methods
.method constructor <init>(Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;)V
    .locals 0
    .param p1, "provider"    # Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;

    .line 242
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 243
    iput-object p1, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider$DisplayInfoCallback;->provider:Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;

    .line 244
    return-void
.end method


# virtual methods
.method public onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 2
    .param p1, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;

    .line 248
    iget-object v0, p0, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider$DisplayInfoCallback;->provider:Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;

    invoke-static {p1}, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->toGeneration(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;->access$002(Lio/sentry/android/core/internal/util/CellularNetworkTechnologyProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    return-void
.end method
