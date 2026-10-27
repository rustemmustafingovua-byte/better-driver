.class public final Ly7/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public l:Ly7/l;

.field public m:Ly7/l;

.field public n:I

.field public final synthetic o:Ly7/m;

.field public final synthetic p:I


# direct methods
.method public constructor <init>(Ly7/m;I)V
    .locals 0

    iput p2, p0, Ly7/j;->p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly7/j;->o:Ly7/m;

    iget-object p2, p1, Ly7/m;->q:Ly7/l;

    iget-object p2, p2, Ly7/l;->o:Ly7/l;

    iput-object p2, p0, Ly7/j;->l:Ly7/l;

    const/4 p2, 0x0

    iput-object p2, p0, Ly7/j;->m:Ly7/l;

    iget p1, p1, Ly7/m;->p:I

    iput p1, p0, Ly7/j;->n:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ly7/j;->b()Ly7/l;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ly7/l;
    .locals 3

    iget-object v0, p0, Ly7/j;->l:Ly7/l;

    iget-object v1, p0, Ly7/j;->o:Ly7/m;

    iget-object v2, v1, Ly7/m;->q:Ly7/l;

    if-eq v0, v2, :cond_1

    iget v1, v1, Ly7/m;->p:I

    iget v2, p0, Ly7/j;->n:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Ly7/l;->o:Ly7/l;

    iput-object v1, p0, Ly7/j;->l:Ly7/l;

    iput-object v0, p0, Ly7/j;->m:Ly7/l;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Ly7/j;->l:Ly7/l;

    iget-object p0, p0, Ly7/j;->o:Ly7/m;

    iget-object p0, p0, Ly7/m;->q:Ly7/l;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ly7/j;->p:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ly7/j;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Ly7/j;->b()Ly7/l;

    move-result-object p0

    iget-object p0, p0, Ly7/l;->q:Ljava/lang/Object;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Ly7/j;->m:Ly7/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Ly7/j;->o:Ly7/m;

    invoke-virtual {v2, v0, v1}, Ly7/m;->c(Ly7/l;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Ly7/j;->m:Ly7/l;

    iget v0, v2, Ly7/m;->p:I

    iput v0, p0, Ly7/j;->n:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
