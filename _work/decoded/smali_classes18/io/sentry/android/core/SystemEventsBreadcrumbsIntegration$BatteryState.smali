.class final Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;
.super Ljava/lang/Object;
.source "SystemEventsBreadcrumbsIntegration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BatteryState"
.end annotation


# instance fields
.field private final charging:Ljava/lang/Boolean;

.field private final level:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "level"    # Ljava/lang/Integer;
    .param p2, "charging"    # Ljava/lang/Boolean;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->level:Ljava/lang/Integer;

    .line 438
    iput-object p2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->charging:Ljava/lang/Boolean;

    .line 439
    return-void
.end method

.method static synthetic access$100(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;

    .line 432
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->level:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$200(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;

    .line 432
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->charging:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 443
    instance-of v0, p1, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 444
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;

    .line 445
    .local v0, "that":Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;
    iget-object v2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->level:Ljava/lang/Integer;

    iget-object v3, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->level:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->charging:Ljava/lang/Boolean;

    iget-object v3, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->charging:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 450
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->level:Ljava/lang/Integer;

    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->charging:Ljava/lang/Boolean;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
