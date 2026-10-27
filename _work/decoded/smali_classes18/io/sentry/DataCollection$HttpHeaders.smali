.class public final Lio/sentry/DataCollection$HttpHeaders;
.super Ljava/lang/Object;
.source "DataCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/DataCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpHeaders"
.end annotation


# instance fields
.field private request:Lio/sentry/KeyValueCollectionBehavior;

.field private response:Lio/sentry/KeyValueCollectionBehavior;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/sentry/DataCollection$HttpHeaders;)Z
    .locals 1
    .param p0, "x0"    # Lio/sentry/DataCollection$HttpHeaders;

    .line 106
    invoke-direct {p0}, Lio/sentry/DataCollection$HttpHeaders;->hasOverrides()Z

    move-result v0

    return v0
.end method

.method private hasOverrides()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lio/sentry/DataCollection$HttpHeaders;->request:Lio/sentry/KeyValueCollectionBehavior;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/DataCollection$HttpHeaders;->response:Lio/sentry/KeyValueCollectionBehavior;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public getRequest()Lio/sentry/KeyValueCollectionBehavior;
    .locals 1

    .line 111
    iget-object v0, p0, Lio/sentry/DataCollection$HttpHeaders;->request:Lio/sentry/KeyValueCollectionBehavior;

    return-object v0
.end method

.method public getResponse()Lio/sentry/KeyValueCollectionBehavior;
    .locals 1

    .line 119
    iget-object v0, p0, Lio/sentry/DataCollection$HttpHeaders;->response:Lio/sentry/KeyValueCollectionBehavior;

    return-object v0
.end method

.method public setRequest(Lio/sentry/KeyValueCollectionBehavior;)V
    .locals 0
    .param p1, "request"    # Lio/sentry/KeyValueCollectionBehavior;

    .line 115
    iput-object p1, p0, Lio/sentry/DataCollection$HttpHeaders;->request:Lio/sentry/KeyValueCollectionBehavior;

    .line 116
    return-void
.end method

.method public setResponse(Lio/sentry/KeyValueCollectionBehavior;)V
    .locals 0
    .param p1, "response"    # Lio/sentry/KeyValueCollectionBehavior;

    .line 123
    iput-object p1, p0, Lio/sentry/DataCollection$HttpHeaders;->response:Lio/sentry/KeyValueCollectionBehavior;

    .line 124
    return-void
.end method
