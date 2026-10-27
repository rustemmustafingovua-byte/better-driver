.class Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;
.super Ljava/lang/Object;
.source "FeatureFlagBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/featureflags/FeatureFlagBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeatureFlagEntry"
.end annotation


# instance fields
.field private final flag:Ljava/lang/String;

.field private final nanos:J

.field private final result:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZJ)V
    .locals 0
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "result"    # Z
    .param p3, "nanos"    # J

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;->flag:Ljava/lang/String;

    .line 238
    iput-boolean p2, p0, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;->result:Z

    .line 239
    iput-wide p3, p0, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;->nanos:J

    .line 240
    return-void
.end method

.method static synthetic access$000(Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;

    .line 230
    iget-object v0, p0, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;->flag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;)J
    .locals 2
    .param p0, "x0"    # Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;

    .line 230
    iget-wide v0, p0, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;->nanos:J

    return-wide v0
.end method


# virtual methods
.method toFeatureFlag()Lio/sentry/protocol/FeatureFlag;
    .locals 3

    .line 244
    new-instance v0, Lio/sentry/protocol/FeatureFlag;

    iget-object v1, p0, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;->flag:Ljava/lang/String;

    iget-boolean v2, p0, Lio/sentry/featureflags/FeatureFlagBuffer$FeatureFlagEntry;->result:Z

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/FeatureFlag;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
