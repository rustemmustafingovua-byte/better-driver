.class final Lio/sentry/FeedbackApi;
.super Ljava/lang/Object;
.source "FeedbackApi.java"

# interfaces
.implements Lio/sentry/IFeedbackApi;


# instance fields
.field private final scopes:Lio/sentry/IScopes;


# direct methods
.method constructor <init>(Lio/sentry/IScopes;)V
    .locals 0
    .param p1, "scopes"    # Lio/sentry/IScopes;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lio/sentry/FeedbackApi;->scopes:Lio/sentry/IScopes;

    .line 14
    return-void
.end method


# virtual methods
.method public capture(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "feedback"    # Lio/sentry/protocol/Feedback;

    .line 51
    iget-object v0, p0, Lio/sentry/FeedbackApi;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0, p1}, Lio/sentry/IScopes;->captureFeedback(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public capture(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "feedback"    # Lio/sentry/protocol/Feedback;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 56
    iget-object v0, p0, Lio/sentry/FeedbackApi;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0, p1, p2}, Lio/sentry/IScopes;->captureFeedback(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public capture(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 1
    .param p1, "feedback"    # Lio/sentry/protocol/Feedback;
    .param p2, "hint"    # Lio/sentry/Hint;
    .param p3, "callback"    # Lio/sentry/ScopeCallback;

    .line 64
    iget-object v0, p0, Lio/sentry/FeedbackApi;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0, p1, p2, p3}, Lio/sentry/IScopes;->captureFeedback(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public disableOnShake()V
    .locals 1

    .line 41
    iget-object v0, p0, Lio/sentry/FeedbackApi;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryFeedbackOptions;->getShakeController()Lio/sentry/SentryFeedbackOptions$IShakeController;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/SentryFeedbackOptions$IShakeController;->disableOnShake()V

    .line 42
    return-void
.end method

.method public enableOnShake()V
    .locals 1

    .line 36
    iget-object v0, p0, Lio/sentry/FeedbackApi;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryFeedbackOptions;->getShakeController()Lio/sentry/SentryFeedbackOptions$IShakeController;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/SentryFeedbackOptions$IShakeController;->enableOnShake()V

    .line 37
    return-void
.end method

.method public isOnShakeEnabled()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lio/sentry/FeedbackApi;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryFeedbackOptions;->getShakeController()Lio/sentry/SentryFeedbackOptions$IShakeController;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/SentryFeedbackOptions$IShakeController;->isOnShakeEnabled()Z

    move-result v0

    return v0
.end method

.method public show()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lio/sentry/FeedbackApi;->show(Lio/sentry/protocol/SentryId;Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V

    .line 19
    return-void
.end method

.method public show(Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V
    .locals 1
    .param p1, "configurator"    # Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/sentry/FeedbackApi;->show(Lio/sentry/protocol/SentryId;Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V

    .line 24
    return-void
.end method

.method public show(Lio/sentry/protocol/SentryId;Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V
    .locals 2
    .param p1, "associatedEventId"    # Lio/sentry/protocol/SentryId;
    .param p2, "configurator"    # Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;

    .line 30
    iget-object v0, p0, Lio/sentry/FeedbackApi;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 31
    .local v0, "options":Lio/sentry/SentryOptions;
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryFeedbackOptions;->getFormHandler()Lio/sentry/SentryFeedbackOptions$IFormHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lio/sentry/SentryFeedbackOptions$IFormHandler;->showForm(Lio/sentry/protocol/SentryId;Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V

    .line 32
    return-void
.end method
