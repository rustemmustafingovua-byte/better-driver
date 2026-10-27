.class final Lio/sentry/Stack$StackItem;
.super Ljava/lang/Object;
.source "Stack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/Stack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StackItem"
.end annotation


# instance fields
.field private volatile client:Lio/sentry/ISentryClient;

.field private final options:Lio/sentry/SentryOptions;

.field private volatile scope:Lio/sentry/IScope;


# direct methods
.method constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/ISentryClient;Lio/sentry/IScope;)V
    .locals 1
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "client"    # Lio/sentry/ISentryClient;
    .param p3, "scope"    # Lio/sentry/IScope;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "ISentryClient is required."

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ISentryClient;

    iput-object v0, p0, Lio/sentry/Stack$StackItem;->client:Lio/sentry/ISentryClient;

    .line 23
    const-string v0, "Scope is required."

    invoke-static {p3, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IScope;

    iput-object v0, p0, Lio/sentry/Stack$StackItem;->scope:Lio/sentry/IScope;

    .line 24
    const-string v0, "Options is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/Stack$StackItem;->options:Lio/sentry/SentryOptions;

    .line 25
    return-void
.end method

.method constructor <init>(Lio/sentry/Stack$StackItem;)V
    .locals 1
    .param p1, "item"    # Lio/sentry/Stack$StackItem;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iget-object v0, p1, Lio/sentry/Stack$StackItem;->options:Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/Stack$StackItem;->options:Lio/sentry/SentryOptions;

    .line 29
    iget-object v0, p1, Lio/sentry/Stack$StackItem;->client:Lio/sentry/ISentryClient;

    iput-object v0, p0, Lio/sentry/Stack$StackItem;->client:Lio/sentry/ISentryClient;

    .line 30
    iget-object v0, p1, Lio/sentry/Stack$StackItem;->scope:Lio/sentry/IScope;

    invoke-interface {v0}, Lio/sentry/IScope;->clone()Lio/sentry/IScope;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Stack$StackItem;->scope:Lio/sentry/IScope;

    .line 31
    return-void
.end method


# virtual methods
.method public getClient()Lio/sentry/ISentryClient;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/sentry/Stack$StackItem;->client:Lio/sentry/ISentryClient;

    return-object v0
.end method

.method public getOptions()Lio/sentry/SentryOptions;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/sentry/Stack$StackItem;->options:Lio/sentry/SentryOptions;

    return-object v0
.end method

.method public getScope()Lio/sentry/IScope;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/sentry/Stack$StackItem;->scope:Lio/sentry/IScope;

    return-object v0
.end method

.method public setClient(Lio/sentry/ISentryClient;)V
    .locals 0
    .param p1, "client"    # Lio/sentry/ISentryClient;

    .line 38
    iput-object p1, p0, Lio/sentry/Stack$StackItem;->client:Lio/sentry/ISentryClient;

    .line 39
    return-void
.end method
