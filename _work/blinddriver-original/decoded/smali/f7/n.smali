.class public final Lf7/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public final m:I

.field public final n:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf7/o;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lf7/n;->l:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf7/n;->n:Ljava/lang/Object;

    iput p2, p0, Lf7/n;->m:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILjava/lang/Throwable;)V
    .locals 0

    const/4 p3, 0x1

    iput p3, p0, Lf7/n;->l:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string p3, "initCallbacks cannot be null"

    invoke-static {p1, p3}, Lpc/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lf7/n;->n:Ljava/lang/Object;

    .line 5
    iput p2, p0, Lf7/n;->m:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lf7/n;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lf7/n;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    iget p0, p0, Lf7/n;->m:I

    const/4 v3, 0x1

    if-eq p0, v3, :cond_0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx2/f;

    iget-object p0, p0, Lx2/f;->b:Lq3/k;

    sget-object v3, Lx2/i;->a:Lx2/j;

    iput-object v3, p0, Lq3/k;->m:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx2/f;

    iget-object v4, p0, Lx2/f;->a:Lr0/e1;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lx2/f;->b:Lq3/k;

    new-instance v4, Lx2/j;

    invoke-direct {v4, v3}, Lx2/j;-><init>(Z)V

    iput-object v4, p0, Lq3/k;->m:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lf7/n;->n:Ljava/lang/Object;

    check-cast v0, Lf7/o;

    iget p0, p0, Lf7/n;->m:I

    invoke-virtual {v0, p0}, Lf7/o;->i(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
