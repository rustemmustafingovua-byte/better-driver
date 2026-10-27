.class final Lio/sentry/Scope$SessionPair;
.super Ljava/lang/Object;
.source "Scope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SessionPair"
.end annotation


# instance fields
.field private final current:Lio/sentry/Session;

.field private final previous:Lio/sentry/Session;


# direct methods
.method public constructor <init>(Lio/sentry/Session;Lio/sentry/Session;)V
    .locals 0
    .param p1, "current"    # Lio/sentry/Session;
    .param p2, "previous"    # Lio/sentry/Session;

    .line 1081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1082
    iput-object p1, p0, Lio/sentry/Scope$SessionPair;->current:Lio/sentry/Session;

    .line 1083
    iput-object p2, p0, Lio/sentry/Scope$SessionPair;->previous:Lio/sentry/Session;

    .line 1084
    return-void
.end method


# virtual methods
.method public getCurrent()Lio/sentry/Session;
    .locals 1

    .line 1101
    iget-object v0, p0, Lio/sentry/Scope$SessionPair;->current:Lio/sentry/Session;

    return-object v0
.end method

.method public getPrevious()Lio/sentry/Session;
    .locals 1

    .line 1092
    iget-object v0, p0, Lio/sentry/Scope$SessionPair;->previous:Lio/sentry/Session;

    return-object v0
.end method
