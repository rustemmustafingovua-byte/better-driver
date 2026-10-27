.class public final Lio/sentry/NoOpFeedbackApi;
.super Ljava/lang/Object;
.source "NoOpFeedbackApi.java"

# interfaces
.implements Lio/sentry/IFeedbackApi;


# static fields
.field private static final instance:Lio/sentry/NoOpFeedbackApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lio/sentry/NoOpFeedbackApi;

    invoke-direct {v0}, Lio/sentry/NoOpFeedbackApi;-><init>()V

    sput-object v0, Lio/sentry/NoOpFeedbackApi;->instance:Lio/sentry/NoOpFeedbackApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpFeedbackApi;
    .locals 1

    .line 17
    sget-object v0, Lio/sentry/NoOpFeedbackApi;->instance:Lio/sentry/NoOpFeedbackApi;

    return-object v0
.end method


# virtual methods
.method public capture(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "feedback"    # Lio/sentry/protocol/Feedback;

    .line 44
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public capture(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "feedback"    # Lio/sentry/protocol/Feedback;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 49
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public capture(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "feedback"    # Lio/sentry/protocol/Feedback;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "callback"    # Lio/sentry/ScopeCallback;

    .line 57
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public disableOnShake()V
    .locals 0

    .line 35
    return-void
.end method

.method public enableOnShake()V
    .locals 0

    .line 32
    return-void
.end method

.method public isOnShakeEnabled()Z
    .locals 1

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public show()V
    .locals 0

    .line 21
    return-void
.end method

.method public show(Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V
    .locals 0
    .param p1, "configurator"    # Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;

    .line 24
    return-void
.end method

.method public show(Lio/sentry/protocol/SentryId;Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V
    .locals 0
    .param p1, "associatedEventId"    # Lio/sentry/protocol/SentryId;
    .param p2, "configurator"    # Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;

    .line 29
    return-void
.end method
