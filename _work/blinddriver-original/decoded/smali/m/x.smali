.class public final Lm/x;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lm/z;

.field public final synthetic n:J


# direct methods
.method public synthetic constructor <init>(Lm/z;JI)V
    .locals 0

    iput p4, p0, Lm/x;->l:I

    iput-object p1, p0, Lm/x;->m:Lm/z;

    iput-wide p2, p0, Lm/x;->n:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lm/x;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lm/p;

    iget-object v0, p0, Lm/x;->m:Lm/z;

    iget-object v1, v0, Lm/z;->H:Lf1/e;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lm/z;->M0()Lf1/e;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lm/z;->H:Lf1/e;

    invoke-virtual {v0}, Lm/z;->M0()Lf1/e;

    move-result-object v2

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    iget-object p1, v0, Lm/z;->D:Lm/b0;

    iget-object p1, p1, Lm/b0;->a:Lm/j0;

    iget-object p1, p1, Lm/j0;->b:Lm/o;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lm/o;->b:Li9/c;

    new-instance v1, Lb3/l;

    iget-wide v3, p0, Lm/x;->n:J

    invoke-direct {v1, v3, v4}, Lb3/l;-><init>(J)V

    invoke-interface {p1, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb3/l;

    iget-wide v5, p0, Lb3/l;->a:J

    invoke-virtual {v0}, Lm/z;->M0()Lf1/e;

    move-result-object v2

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    sget-object v7, Lb3/m;->l:Lb3/m;

    invoke-interface/range {v2 .. v7}, Lf1/e;->a(JJLb3/m;)J

    move-result-wide p0

    iget-object v2, v0, Lm/z;->H:Lf1/e;

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface/range {v2 .. v7}, Lf1/e;->a(JJLb3/m;)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lb3/j;->b(JJ)J

    move-result-wide p0

    goto :goto_1

    :cond_3
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_4
    :goto_0
    const-wide/16 p0, 0x0

    :goto_1
    new-instance v0, Lb3/j;

    invoke-direct {v0, p0, p1}, Lb3/j;-><init>(J)V

    return-object v0

    :pswitch_0
    check-cast p1, Lm/p;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget-object v0, p0, Lm/x;->m:Lm/z;

    iget-wide v1, p0, Lm/x;->n:J

    if-eqz p1, :cond_6

    const/4 p0, 0x1

    if-eq p1, p0, :cond_7

    const/4 p0, 0x2

    if-ne p1, p0, :cond_5

    iget-object p0, v0, Lm/z;->D:Lm/b0;

    iget-object p0, p0, Lm/b0;->a:Lm/j0;

    iget-object p0, p0, Lm/j0;->b:Lm/o;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lm/o;->b:Li9/c;

    if-eqz p0, :cond_7

    new-instance p1, Lb3/l;

    invoke-direct {p1, v1, v2}, Lb3/l;-><init>(J)V

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb3/l;

    iget-wide v1, p0, Lb3/l;->a:J

    goto :goto_2

    :cond_5
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_6
    iget-object p0, v0, Lm/z;->C:Lm/a0;

    iget-object p0, p0, Lm/a0;->a:Lm/j0;

    iget-object p0, p0, Lm/j0;->b:Lm/o;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lm/o;->b:Li9/c;

    if-eqz p0, :cond_7

    new-instance p1, Lb3/l;

    invoke-direct {p1, v1, v2}, Lb3/l;-><init>(J)V

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb3/l;

    iget-wide v1, p0, Lb3/l;->a:J

    :cond_7
    :goto_2
    new-instance p0, Lb3/l;

    invoke-direct {p0, v1, v2}, Lb3/l;-><init>(J)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
