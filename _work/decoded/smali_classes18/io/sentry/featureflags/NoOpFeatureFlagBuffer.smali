.class public final Lio/sentry/featureflags/NoOpFeatureFlagBuffer;
.super Ljava/lang/Object;
.source "NoOpFeatureFlagBuffer.java"

# interfaces
.implements Lio/sentry/featureflags/IFeatureFlagBuffer;


# static fields
.field private static final instance:Lio/sentry/featureflags/NoOpFeatureFlagBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lio/sentry/featureflags/NoOpFeatureFlagBuffer;

    invoke-direct {v0}, Lio/sentry/featureflags/NoOpFeatureFlagBuffer;-><init>()V

    sput-object v0, Lio/sentry/featureflags/NoOpFeatureFlagBuffer;->instance:Lio/sentry/featureflags/NoOpFeatureFlagBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/featureflags/NoOpFeatureFlagBuffer;
    .locals 1

    .line 13
    sget-object v0, Lio/sentry/featureflags/NoOpFeatureFlagBuffer;->instance:Lio/sentry/featureflags/NoOpFeatureFlagBuffer;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Boolean;

    .line 17
    return-void
.end method

.method public clear()V
    .locals 0

    .line 20
    return-void
.end method

.method public clone()Lio/sentry/featureflags/IFeatureFlagBuffer;
    .locals 1

    .line 29
    sget-object v0, Lio/sentry/featureflags/NoOpFeatureFlagBuffer;->instance:Lio/sentry/featureflags/NoOpFeatureFlagBuffer;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lio/sentry/featureflags/NoOpFeatureFlagBuffer;->clone()Lio/sentry/featureflags/IFeatureFlagBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureFlags()Lio/sentry/protocol/FeatureFlags;
    .locals 1

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method
