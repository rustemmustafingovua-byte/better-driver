.class public final Lq9/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lk9/a;


# instance fields
.field public final l:Ljava/util/Iterator;

.field public final synthetic m:Lq9/q;


# direct methods
.method public constructor <init>(Lq9/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq9/p;->m:Lq9/q;

    iget-object p1, p1, Lq9/q;->a:Lq9/h;

    invoke-interface {p1}, Lq9/h;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lq9/p;->l:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lq9/p;->l:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lq9/p;->m:Lq9/q;

    iget-object v0, v0, Lq9/q;->b:Li9/c;

    iget-object p0, p0, Lq9/p;->l:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
