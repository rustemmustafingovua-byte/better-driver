.class public final Lo0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Li9/e;

.field public final synthetic n:Lz0/d;


# direct methods
.method public synthetic constructor <init>(Li9/e;Lz0/d;I)V
    .locals 0

    iput p3, p0, Lo0/h;->l:I

    iput-object p1, p0, Lo0/h;->m:Li9/e;

    iput-object p2, p0, Lo0/h;->n:Lz0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lo0/h;->l:I

    sget-object v1, Lt8/z;->a:Lt8/z;

    iget-object v2, p0, Lo0/h;->n:Lz0/d;

    iget-object p0, p0, Lo0/h;->m:Li9/e;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    and-int/2addr p2, v4

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Lo0/j;->a:F

    new-instance p2, Lo0/h;

    invoke-direct {p2, p0, v2, v5}, Lo0/h;-><init>(Li9/e;Lz0/d;I)V

    const p0, -0x1b6383e2

    invoke-static {p0, p2, p1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object p0

    const/16 p2, 0x1b6

    invoke-static {p0, p1, p2}, Lo0/j;->b(Lz0/d;Lr0/q;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_1
    return-object v1

    :pswitch_0
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    and-int/lit8 v6, p2, 0x3

    if-eq v6, v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    and-int/2addr p2, v4

    invoke-virtual {p1, p2, v3}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_4

    if-nez p0, :cond_3

    const p0, -0x41afc885

    invoke-virtual {p1, p0}, Lr0/q;->b0(I)V

    :goto_3
    invoke-virtual {p1, v5}, Lr0/q;->q(Z)V

    goto :goto_4

    :cond_3
    const p2, 0x2f6df146

    invoke-virtual {p1, p2}, Lr0/q;->b0(I)V

    invoke-interface {p0, p1, v0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :goto_4
    invoke-virtual {v2, p1, v0}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_4
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_5
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
