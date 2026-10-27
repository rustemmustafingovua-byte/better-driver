.class public final synthetic Lm0/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lm0/i1;

.field public final synthetic n:Lz0/d;

.field public final synthetic o:Lm0/b1;


# direct methods
.method public synthetic constructor <init>(Lm0/b1;Lm0/i1;Lz0/d;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lm0/h0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/h0;->o:Lm0/b1;

    iput-object p2, p0, Lm0/h0;->m:Lm0/i1;

    iput-object p3, p0, Lm0/h0;->n:Lz0/d;

    return-void
.end method

.method public synthetic constructor <init>(Lm0/i1;Lz0/d;Lm0/b1;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lm0/h0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/h0;->m:Lm0/i1;

    iput-object p2, p0, Lm0/h0;->n:Lz0/d;

    iput-object p3, p0, Lm0/h0;->o:Lm0/b1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lm0/h0;->l:I

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    packed-switch v0, :pswitch_data_0

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/2addr p2, v2

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lm0/j1;->a:Lr0/a0;

    iget-object v0, p0, Lm0/h0;->m:Lm0/i1;

    invoke-virtual {p2, v0}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object p2

    new-instance v0, Lb0/c0;

    iget-object v1, p0, Lm0/h0;->n:Lz0/d;

    iget-object p0, p0, Lm0/h0;->o:Lm0/b1;

    invoke-direct {v0, v1, p0}, Lb0/c0;-><init>(Lz0/d;Lm0/b1;)V

    const p0, 0x24633bb7

    invoke-static {p0, v0, p1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object p0

    const/16 v0, 0x38

    invoke-static {p2, p0, p1, v0}, Lr0/r;->a(Lj6/g0;Li9/e;Lr0/q;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    and-int/2addr p2, v2

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lm0/h0;

    iget-object v0, p0, Lm0/h0;->m:Lm0/i1;

    iget-object v1, p0, Lm0/h0;->n:Lz0/d;

    iget-object p0, p0, Lm0/h0;->o:Lm0/b1;

    invoke-direct {p2, v0, v1, p0}, Lm0/h0;-><init>(Lm0/i1;Lz0/d;Lm0/b1;)V

    const v0, -0x10fa1909

    invoke-static {v0, p2, p1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object p2

    const/16 v0, 0x30

    invoke-static {p0, p2, p1, v0}, Lb0/n1;->e(Lm0/b1;Lz0/d;Lr0/q;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
