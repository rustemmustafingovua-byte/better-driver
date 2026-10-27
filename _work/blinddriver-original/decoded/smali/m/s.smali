.class public final Lm/s;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lm/a0;

.field public final synthetic n:Lm/b0;


# direct methods
.method public synthetic constructor <init>(Lm/a0;Lm/b0;I)V
    .locals 0

    iput p3, p0, Lm/s;->l:I

    iput-object p1, p0, Lm/s;->m:Lm/a0;

    iput-object p2, p0, Lm/s;->n:Lm/b0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lm/s;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lm/p;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    iget-object p0, p0, Lm/s;->n:Lm/b0;

    iget-object p0, p0, Lm/b0;->a:Lm/j0;

    iget-object p0, p0, Lm/j0;->c:Lm/g0;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    iget-object p0, p0, Lm/s;->m:Lm/a0;

    iget-object p0, p0, Lm/a0;->a:Lm/j0;

    iget-object p0, p0, Lm/j0;->c:Lm/g0;

    if-eqz p0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ln/c1;

    sget-object v0, Lm/p;->l:Lm/p;

    sget-object v1, Lm/p;->m:Lm/p;

    invoke-virtual {p1, v0, v1}, Ln/c1;->a(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lm/s;->m:Lm/a0;

    iget-object p0, p0, Lm/a0;->a:Lm/j0;

    iget-object p0, p0, Lm/j0;->c:Lm/g0;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lm/g0;->b:Ln/r0;

    goto :goto_1

    :cond_3
    sget-object p0, Lm/v;->b:Ln/r0;

    goto :goto_1

    :cond_4
    sget-object v0, Lm/p;->n:Lm/p;

    invoke-virtual {p1, v1, v0}, Ln/c1;->a(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lm/s;->n:Lm/b0;

    iget-object p0, p0, Lm/b0;->a:Lm/j0;

    iget-object p0, p0, Lm/j0;->c:Lm/g0;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lm/g0;->b:Ln/r0;

    goto :goto_1

    :cond_5
    sget-object p0, Lm/v;->b:Ln/r0;

    goto :goto_1

    :cond_6
    sget-object p0, Lm/v;->b:Ln/r0;

    :goto_1
    return-object p0

    :pswitch_1
    check-cast p1, Lm/p;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_9

    const/4 v2, 0x1

    if-eq p1, v2, :cond_7

    const/4 v2, 0x2

    if-ne p1, v2, :cond_8

    iget-object p0, p0, Lm/s;->n:Lm/b0;

    iget-object p0, p0, Lm/b0;->a:Lm/j0;

    iget-object p0, p0, Lm/j0;->a:Lm/c0;

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_9
    iget-object p0, p0, Lm/s;->m:Lm/a0;

    iget-object p0, p0, Lm/a0;->a:Lm/j0;

    iget-object p0, p0, Lm/j0;->a:Lm/c0;

    if-eqz p0, :cond_7

    :goto_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Ln/c1;

    sget-object v0, Lm/p;->l:Lm/p;

    sget-object v1, Lm/p;->m:Lm/p;

    invoke-virtual {p1, v0, v1}, Ln/c1;->a(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lm/s;->m:Lm/a0;

    iget-object p0, p0, Lm/a0;->a:Lm/j0;

    iget-object p0, p0, Lm/j0;->a:Lm/c0;

    if-eqz p0, :cond_a

    iget-object p0, p0, Lm/c0;->a:Ln/x;

    if-nez p0, :cond_e

    :cond_a
    sget-object p0, Lm/v;->b:Ln/r0;

    goto :goto_3

    :cond_b
    sget-object v0, Lm/p;->n:Lm/p;

    invoke-virtual {p1, v1, v0}, Ln/c1;->a(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lm/s;->n:Lm/b0;

    iget-object p0, p0, Lm/b0;->a:Lm/j0;

    iget-object p0, p0, Lm/j0;->a:Lm/c0;

    if-eqz p0, :cond_c

    iget-object p0, p0, Lm/c0;->a:Ln/x;

    if-nez p0, :cond_e

    :cond_c
    sget-object p0, Lm/v;->b:Ln/r0;

    goto :goto_3

    :cond_d
    sget-object p0, Lm/v;->b:Ln/r0;

    :cond_e
    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
