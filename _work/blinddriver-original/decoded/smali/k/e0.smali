.class public final Lk/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lk9/a;


# instance fields
.field public final synthetic l:I

.field public final m:Ljava/lang/Object;

.field public n:I


# direct methods
.method public constructor <init>(Ljava/util/List;II)V
    .locals 0

    iput p3, p0, Lk/e0;->l:I

    packed-switch p3, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/e0;->m:Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lk/e0;->n:I

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/e0;->m:Ljava/lang/Object;

    iput p2, p0, Lk/e0;->n:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lk/e0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lk/e0;->m:Ljava/lang/Object;

    iget v1, p0, Lk/e0;->n:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget p1, p0, Lk/e0;->n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lk/e0;->n:I

    return-void

    :pswitch_0
    iget v0, p0, Lk/e0;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk/e0;->n:I

    iget-object p0, p0, Lk/e0;->m:Ljava/lang/Object;

    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lk/e0;->l:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lk/e0;->n:I

    iget-object p0, p0, Lk/e0;->m:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget v0, p0, Lk/e0;->n:I

    iget-object p0, p0, Lk/e0;->m:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ge v0, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Lk/e0;->l:I

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Lk/e0;->n:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget p0, p0, Lk/e0;->n:I

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lk/e0;->l:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lk/e0;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lk/e0;->n:I

    iget-object p0, p0, Lk/e0;->m:Ljava/lang/Object;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget v0, p0, Lk/e0;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk/e0;->n:I

    iget-object p0, p0, Lk/e0;->m:Ljava/lang/Object;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lk/e0;->l:I

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Lk/e0;->n:I

    return p0

    :pswitch_0
    iget p0, p0, Lk/e0;->n:I

    add-int/lit8 p0, p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final previous()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lk/e0;->l:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lk/e0;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lk/e0;->n:I

    iget-object p0, p0, Lk/e0;->m:Ljava/lang/Object;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget v0, p0, Lk/e0;->n:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lk/e0;->n:I

    iget-object p0, p0, Lk/e0;->m:Ljava/lang/Object;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lk/e0;->l:I

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Lk/e0;->n:I

    add-int/lit8 p0, p0, -0x1

    return p0

    :pswitch_0
    iget p0, p0, Lk/e0;->n:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 2

    iget v0, p0, Lk/e0;->l:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lk/e0;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lk/e0;->n:I

    iget-object p0, p0, Lk/e0;->m:Ljava/lang/Object;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object v0, p0, Lk/e0;->m:Ljava/lang/Object;

    iget v1, p0, Lk/e0;->n:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lk/e0;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lk/e0;->n:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lk/e0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lk/e0;->m:Ljava/lang/Object;

    iget p0, p0, Lk/e0;->n:I

    invoke-interface {v0, p0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object v0, p0, Lk/e0;->m:Ljava/lang/Object;

    iget p0, p0, Lk/e0;->n:I

    invoke-interface {v0, p0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
