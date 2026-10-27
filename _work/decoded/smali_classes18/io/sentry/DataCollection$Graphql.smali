.class public final Lio/sentry/DataCollection$Graphql;
.super Ljava/lang/Object;
.source "DataCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/DataCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Graphql"
.end annotation


# instance fields
.field private document:Ljava/lang/Boolean;

.field private variables:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lio/sentry/DataCollection$Graphql;)Z
    .locals 1
    .param p0, "x0"    # Lio/sentry/DataCollection$Graphql;

    .line 132
    invoke-direct {p0}, Lio/sentry/DataCollection$Graphql;->hasOverrides()Z

    move-result v0

    return v0
.end method

.method private hasOverrides()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lio/sentry/DataCollection$Graphql;->document:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/DataCollection$Graphql;->variables:Ljava/lang/Boolean;

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
.method public getDocument()Ljava/lang/Boolean;
    .locals 1

    .line 137
    iget-object v0, p0, Lio/sentry/DataCollection$Graphql;->document:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getVariables()Ljava/lang/Boolean;
    .locals 1

    .line 145
    iget-object v0, p0, Lio/sentry/DataCollection$Graphql;->variables:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setDocument(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "document"    # Ljava/lang/Boolean;

    .line 141
    iput-object p1, p0, Lio/sentry/DataCollection$Graphql;->document:Ljava/lang/Boolean;

    .line 142
    return-void
.end method

.method public setVariables(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "variables"    # Ljava/lang/Boolean;

    .line 149
    iput-object p1, p0, Lio/sentry/DataCollection$Graphql;->variables:Ljava/lang/Boolean;

    .line 150
    return-void
.end method
