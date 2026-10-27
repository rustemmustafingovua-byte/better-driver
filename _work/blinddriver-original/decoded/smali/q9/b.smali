.class public final Lq9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lk9/a;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final n:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lq9/b;->l:I

    const-string v0, "iterator"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq9/b;->n:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lq9/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lq9/b;->l:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object v0, p1, Lq9/c;->a:Lq9/h;

    .line 8
    invoke-interface {v0}, Lq9/h;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lq9/b;->n:Ljava/util/Iterator;

    .line 9
    iget p1, p1, Lq9/c;->b:I

    .line 10
    iput p1, p0, Lq9/b;->m:I

    return-void
.end method

.method public constructor <init>(Lq9/o;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lq9/b;->l:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x28

    .line 3
    iput v0, p0, Lq9/b;->m:I

    .line 4
    iget-object p1, p1, Lq9/o;->a:Lq9/h;

    .line 5
    invoke-interface {p1}, Lq9/h;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lq9/b;->n:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lq9/b;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lq9/b;->n:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_0
    iget v0, p0, Lq9/b;->m:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lq9/b;->n:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :goto_1
    :pswitch_1
    iget v0, p0, Lq9/b;->m:I

    iget-object v1, p0, Lq9/b;->n:Ljava/util/Iterator;

    if-lez v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget v0, p0, Lq9/b;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lq9/b;->m:I

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lq9/b;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lu8/u;

    iget v1, p0, Lq9/b;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lq9/b;->m:I

    if-ltz v1, :cond_0

    iget-object p0, p0, Lq9/b;->n:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lu8/u;-><init>(ILjava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-static {}, Lg5/f;->P()V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    iget v0, p0, Lq9/b;->m:I

    if-eqz v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lq9/b;->m:I

    iget-object p0, p0, Lq9/b;->n:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :goto_0
    :pswitch_1
    iget v0, p0, Lq9/b;->m:I

    iget-object v1, p0, Lq9/b;->n:Ljava/util/Iterator;

    if-lez v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget v0, p0, Lq9/b;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lq9/b;->m:I

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    iget p0, p0, Lq9/b;->l:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
