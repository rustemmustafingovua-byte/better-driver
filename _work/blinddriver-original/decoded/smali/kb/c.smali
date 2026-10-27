.class public final Lkb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public l:Lkb/d;

.field public m:Ljava/lang/Object;

.field public final synthetic n:Ljava/util/Iterator;

.field public final synthetic o:Lkb/b;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lkb/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkb/c;->n:Ljava/util/Iterator;

    iput-object p2, p0, Lkb/c;->o:Lkb/b;

    sget-object p1, Lkb/d;->l:Lkb/d;

    iput-object p1, p0, Lkb/c;->l:Lkb/d;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 5

    iget-object v0, p0, Lkb/c;->l:Lkb/d;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget-object p0, p0, Lkb/c;->l:Lkb/d;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    return v2

    :cond_2
    :goto_0
    iget-object v0, p0, Lkb/c;->n:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lkb/c;->o:Lkb/b;

    if-eqz v0, :cond_3

    iget-object v3, v3, Lkb/b;->l:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v0, p0, Lkb/c;->m:Ljava/lang/Object;

    sget-object v0, Lkb/d;->m:Lkb/d;

    iput-object v0, p0, Lkb/c;->l:Lkb/d;

    return v2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_4
    sget-object v0, Lkb/d;->n:Lkb/d;

    iput-object v0, p0, Lkb/c;->l:Lkb/d;

    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lkb/c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkb/d;->l:Lkb/d;

    iput-object v0, p0, Lkb/c;->l:Lkb/d;

    iget-object v0, p0, Lkb/c;->m:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lkb/c;->m:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 0

    iget-object p0, p0, Lkb/c;->n:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
