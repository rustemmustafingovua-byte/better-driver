.class public final Ld1/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lk9/c;


# instance fields
.field public final l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;

.field public final synthetic n:Ld1/g0;


# direct methods
.method public constructor <init>(Ld1/g0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/f0;->n:Ld1/g0;

    iget-object v0, p1, Ld1/g0;->o:Ljava/util/Map$Entry;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ld1/f0;->l:Ljava/lang/Object;

    iget-object p1, p1, Ld1/g0;->o:Ljava/util/Map$Entry;

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ld1/f0;->m:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ld1/f0;->l:Ljava/lang/Object;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ld1/f0;->m:Ljava/lang/Object;

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ld1/f0;->n:Ld1/g0;

    iget-object v1, v0, Ld1/g0;->l:Ld1/y;

    invoke-virtual {v1}, Ld1/y;->e()Ld1/x;

    move-result-object v1

    iget v1, v1, Ld1/x;->d:I

    iget v2, v0, Ld1/g0;->n:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Ld1/f0;->m:Ljava/lang/Object;

    iget-object v0, v0, Ld1/g0;->l:Ld1/y;

    iget-object v2, p0, Ld1/f0;->l:Ljava/lang/Object;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ld1/f0;->m:Ljava/lang/Object;

    return-object v1

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method
