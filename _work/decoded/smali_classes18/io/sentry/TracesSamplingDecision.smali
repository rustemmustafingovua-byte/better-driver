.class public final Lio/sentry/TracesSamplingDecision;
.super Ljava/lang/Object;
.source "TracesSamplingDecision.java"


# instance fields
.field private final profileSampleRate:Ljava/lang/Double;

.field private final profileSampled:Ljava/lang/Boolean;

.field private final sampleRand:Ljava/lang/Double;

.field private final sampleRate:Ljava/lang/Double;

.field private final sampled:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "sampled"    # Ljava/lang/Boolean;

    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Double;)V
    .locals 7
    .param p1, "sampled"    # Ljava/lang/Boolean;
    .param p2, "sampleRate"    # Ljava/lang/Double;

    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "sampled":Ljava/lang/Boolean;
    .end local p2    # "sampleRate":Ljava/lang/Double;
    .local v2, "sampled":Ljava/lang/Boolean;
    .local v3, "sampleRate":Ljava/lang/Double;
    invoke-direct/range {v1 .. v6}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V
    .locals 6
    .param p1, "sampled"    # Ljava/lang/Boolean;
    .param p2, "sampleRate"    # Ljava/lang/Double;
    .param p3, "profileSampled"    # Ljava/lang/Boolean;
    .param p4, "profileSampleRate"    # Ljava/lang/Double;

    .line 34
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "sampled":Ljava/lang/Boolean;
    .end local p2    # "sampleRate":Ljava/lang/Double;
    .end local p3    # "profileSampled":Ljava/lang/Boolean;
    .end local p4    # "profileSampleRate":Ljava/lang/Double;
    .local v1, "sampled":Ljava/lang/Boolean;
    .local v2, "sampleRate":Ljava/lang/Double;
    .local v4, "profileSampled":Ljava/lang/Boolean;
    .local v5, "profileSampleRate":Ljava/lang/Double;
    invoke-direct/range {v0 .. v5}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 7
    .param p1, "sampled"    # Ljava/lang/Boolean;
    .param p2, "sampleRate"    # Ljava/lang/Double;
    .param p3, "sampleRand"    # Ljava/lang/Double;

    .line 26
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "sampled":Ljava/lang/Boolean;
    .end local p2    # "sampleRate":Ljava/lang/Double;
    .end local p3    # "sampleRand":Ljava/lang/Double;
    .local v2, "sampled":Ljava/lang/Boolean;
    .local v3, "sampleRate":Ljava/lang/Double;
    .local v4, "sampleRand":Ljava/lang/Double;
    invoke-direct/range {v1 .. v6}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V
    .locals 1
    .param p1, "sampled"    # Ljava/lang/Boolean;
    .param p2, "sampleRate"    # Ljava/lang/Double;
    .param p3, "sampleRand"    # Ljava/lang/Double;
    .param p4, "profileSampled"    # Ljava/lang/Boolean;
    .param p5, "profileSampleRate"    # Ljava/lang/Double;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lio/sentry/TracesSamplingDecision;->sampled:Ljava/lang/Boolean;

    .line 44
    iput-object p2, p0, Lio/sentry/TracesSamplingDecision;->sampleRate:Ljava/lang/Double;

    .line 45
    iput-object p3, p0, Lio/sentry/TracesSamplingDecision;->sampleRand:Ljava/lang/Double;

    .line 47
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/TracesSamplingDecision;->profileSampled:Ljava/lang/Boolean;

    .line 48
    iput-object p5, p0, Lio/sentry/TracesSamplingDecision;->profileSampleRate:Ljava/lang/Double;

    .line 49
    return-void
.end method


# virtual methods
.method public getProfileSampleRate()Ljava/lang/Double;
    .locals 1

    .line 68
    iget-object v0, p0, Lio/sentry/TracesSamplingDecision;->profileSampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getProfileSampled()Ljava/lang/Boolean;
    .locals 1

    .line 64
    iget-object v0, p0, Lio/sentry/TracesSamplingDecision;->profileSampled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSampleRand()Ljava/lang/Double;
    .locals 1

    .line 60
    iget-object v0, p0, Lio/sentry/TracesSamplingDecision;->sampleRand:Ljava/lang/Double;

    return-object v0
.end method

.method public getSampleRate()Ljava/lang/Double;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/sentry/TracesSamplingDecision;->sampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getSampled()Ljava/lang/Boolean;
    .locals 1

    .line 52
    iget-object v0, p0, Lio/sentry/TracesSamplingDecision;->sampled:Ljava/lang/Boolean;

    return-object v0
.end method
