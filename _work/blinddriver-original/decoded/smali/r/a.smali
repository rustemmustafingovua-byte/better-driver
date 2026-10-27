.class public final Lr/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lt0/b;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lt0/b;

    const/16 v0, 0x10

    new-array v0, v0, [Lr/g;

    invoke-direct {p1, v0}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Lr/a;->a:Lt0/b;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lt0/b;

    const/16 v0, 0x10

    new-array v0, v0, [Lx/j;

    invoke-direct {p1, v0}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Lr/a;->a:Lt0/b;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/util/concurrent/CancellationException;)V
    .locals 5

    iget-object p0, p0, Lr/a;->a:Lt0/b;

    iget v0, p0, Lt0/b;->n:I

    new-array v1, v0, [Lu9/f;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v4, v4, v3

    check-cast v4, Lr/g;

    iget-object v4, v4, Lr/g;->b:Lu9/g;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    invoke-interface {v3, p1}, Lu9/f;->j(Ljava/lang/Throwable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget p0, p0, Lt0/b;->n:I

    if-nez p0, :cond_2

    return-void

    :cond_2
    const-string p0, "uncancelled requests present"

    invoke-static {p0}, Lt/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x0

    iget-object p0, p0, Lr/a;->a:Lt0/b;

    iget v1, p0, Lt0/b;->n:I

    invoke-static {v0, v1}, Lg6/c1;->G(II)Lo9/d;

    move-result-object v0

    iget v1, v0, Lo9/b;->l:I

    iget v0, v0, Lo9/b;->m:I

    if-gt v1, v0, :cond_0

    :goto_0
    iget-object v2, p0, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Lr/g;

    iget-object v2, v2, Lr/g;->b:Lu9/g;

    sget-object v3, Lt8/z;->a:Lt8/z;

    invoke-virtual {v2, v3}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    if-eq v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lt0/b;->g()V

    return-void
.end method
