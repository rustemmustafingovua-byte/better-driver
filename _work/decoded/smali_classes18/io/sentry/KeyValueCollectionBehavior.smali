.class public final Lio/sentry/KeyValueCollectionBehavior;
.super Ljava/lang/Object;
.source "KeyValueCollectionBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/KeyValueCollectionBehavior$Mode;
    }
.end annotation


# instance fields
.field private mode:Lio/sentry/KeyValueCollectionBehavior$Mode;

.field private terms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lio/sentry/KeyValueCollectionBehavior$Mode;->DENY_LIST:Lio/sentry/KeyValueCollectionBehavior$Mode;

    iput-object v0, p0, Lio/sentry/KeyValueCollectionBehavior;->mode:Lio/sentry/KeyValueCollectionBehavior$Mode;

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/KeyValueCollectionBehavior;->terms:Ljava/util/List;

    .line 27
    return-void
.end method

.method private constructor <init>(Lio/sentry/KeyValueCollectionBehavior$Mode;Ljava/util/List;)V
    .locals 1
    .param p1, "mode"    # Lio/sentry/KeyValueCollectionBehavior$Mode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/KeyValueCollectionBehavior$Mode;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p2, "terms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lio/sentry/KeyValueCollectionBehavior$Mode;->DENY_LIST:Lio/sentry/KeyValueCollectionBehavior$Mode;

    iput-object v0, p0, Lio/sentry/KeyValueCollectionBehavior;->mode:Lio/sentry/KeyValueCollectionBehavior$Mode;

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/KeyValueCollectionBehavior;->terms:Ljava/util/List;

    .line 30
    invoke-virtual {p0, p1}, Lio/sentry/KeyValueCollectionBehavior;->setMode(Lio/sentry/KeyValueCollectionBehavior$Mode;)V

    .line 31
    invoke-virtual {p0, p2}, Lio/sentry/KeyValueCollectionBehavior;->setTerms(Ljava/util/List;)V

    .line 32
    return-void
.end method

.method public static varargs allowList([Ljava/lang/String;)Lio/sentry/KeyValueCollectionBehavior;
    .locals 3
    .param p0, "terms"    # [Ljava/lang/String;

    .line 52
    new-instance v0, Lio/sentry/KeyValueCollectionBehavior;

    sget-object v1, Lio/sentry/KeyValueCollectionBehavior$Mode;->ALLOW_LIST:Lio/sentry/KeyValueCollectionBehavior$Mode;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/sentry/KeyValueCollectionBehavior;-><init>(Lio/sentry/KeyValueCollectionBehavior$Mode;Ljava/util/List;)V

    return-object v0
.end method

.method public static varargs denyList([Ljava/lang/String;)Lio/sentry/KeyValueCollectionBehavior;
    .locals 3
    .param p0, "terms"    # [Ljava/lang/String;

    .line 44
    new-instance v0, Lio/sentry/KeyValueCollectionBehavior;

    sget-object v1, Lio/sentry/KeyValueCollectionBehavior$Mode;->DENY_LIST:Lio/sentry/KeyValueCollectionBehavior$Mode;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/sentry/KeyValueCollectionBehavior;-><init>(Lio/sentry/KeyValueCollectionBehavior$Mode;Ljava/util/List;)V

    return-object v0
.end method

.method public static off()Lio/sentry/KeyValueCollectionBehavior;
    .locals 3

    .line 36
    new-instance v0, Lio/sentry/KeyValueCollectionBehavior;

    sget-object v1, Lio/sentry/KeyValueCollectionBehavior$Mode;->OFF:Lio/sentry/KeyValueCollectionBehavior$Mode;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/sentry/KeyValueCollectionBehavior;-><init>(Lio/sentry/KeyValueCollectionBehavior$Mode;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 73
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 74
    return v0

    .line 76
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 79
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/sentry/KeyValueCollectionBehavior;

    .line 80
    .local v2, "that":Lio/sentry/KeyValueCollectionBehavior;
    iget-object v3, p0, Lio/sentry/KeyValueCollectionBehavior;->mode:Lio/sentry/KeyValueCollectionBehavior$Mode;

    iget-object v4, v2, Lio/sentry/KeyValueCollectionBehavior;->mode:Lio/sentry/KeyValueCollectionBehavior$Mode;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lio/sentry/KeyValueCollectionBehavior;->terms:Ljava/util/List;

    iget-object v4, v2, Lio/sentry/KeyValueCollectionBehavior;->terms:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 77
    .end local v2    # "that":Lio/sentry/KeyValueCollectionBehavior;
    :cond_3
    :goto_1
    return v1
.end method

.method public getMode()Lio/sentry/KeyValueCollectionBehavior$Mode;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/sentry/KeyValueCollectionBehavior;->mode:Lio/sentry/KeyValueCollectionBehavior$Mode;

    return-object v0
.end method

.method public getTerms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lio/sentry/KeyValueCollectionBehavior;->terms:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 85
    iget-object v0, p0, Lio/sentry/KeyValueCollectionBehavior;->mode:Lio/sentry/KeyValueCollectionBehavior$Mode;

    iget-object v1, p0, Lio/sentry/KeyValueCollectionBehavior;->terms:Ljava/util/List;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setMode(Lio/sentry/KeyValueCollectionBehavior$Mode;)V
    .locals 0
    .param p1, "mode"    # Lio/sentry/KeyValueCollectionBehavior$Mode;

    .line 60
    iput-object p1, p0, Lio/sentry/KeyValueCollectionBehavior;->mode:Lio/sentry/KeyValueCollectionBehavior$Mode;

    .line 61
    return-void
.end method

.method public setTerms(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p1, "terms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/KeyValueCollectionBehavior;->terms:Ljava/util/List;

    .line 69
    return-void
.end method
