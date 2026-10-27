.class public final Lzb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzb/a;
.implements Ljava/io/Serializable;


# instance fields
.field public l:Ljava/util/ArrayList;

.field public m:Lpb/h;


# virtual methods
.method public final getBounds()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lzb/c;->m:Lpb/h;

    if-nez v0, :cond_2

    iget-object v0, p0, Lzb/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lzb/a;

    if-nez v2, :cond_0

    new-instance v2, Lpb/h;

    invoke-interface {v4}, Lzb/a;->getBounds()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpb/h;

    invoke-direct {v2, v4}, Lpb/h;-><init>(Lpb/h;)V

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Lzb/a;->getBounds()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpb/h;

    invoke-virtual {v2, v4}, Lpb/h;->c(Lpb/h;)V

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lzb/c;->m:Lpb/h;

    :cond_2
    iget-object p0, p0, Lzb/c;->m:Lpb/h;

    return-object p0
.end method
