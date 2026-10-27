.class public final synthetic Lg0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lg0/g;

.field public final synthetic n:Li0/e;


# direct methods
.method public synthetic constructor <init>(Lg0/g;Li0/e;I)V
    .locals 0

    iput p3, p0, Lg0/b;->l:I

    iput-object p1, p0, Lg0/b;->m:Lg0/g;

    iput-object p2, p0, Lg0/b;->n:Li0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lg0/b;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg0/b;->m:Lg0/g;

    iget-object v0, v0, Lg0/g;->c:Li9/a;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lc2/u;

    invoke-interface {v1}, Lc2/u;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lc2/u;

    if-nez v0, :cond_1

    sget-object p0, Ll1/c;->e:Ll1/c;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lg0/b;->n:Li0/e;

    invoke-interface {p0, v0}, Li0/e;->r0(Lc2/u;)Ll1/c;

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lc2/u;->R(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ll1/c;->j(J)Ll1/c;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_0
    iget-object v0, p0, Lg0/b;->m:Lg0/g;

    iget-object v1, v0, Lg0/g;->g:Lg0/a;

    new-instance v2, Lg0/b;

    const/4 v3, 0x2

    iget-object p0, p0, Lg0/b;->n:Li0/e;

    invoke-direct {v2, v0, p0, v3}, Lg0/b;-><init>(Lg0/g;Li0/e;I)V

    new-instance p0, Lj9/y;

    invoke-direct {p0}, Lj9/y;-><init>()V

    iget-object v0, v0, Lg0/g;->e:Ld1/b0;

    new-instance v3, Lb0/n;

    const/4 v4, 0x4

    invoke-direct {v3, v4, p0, v2}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "positioner"

    invoke-virtual {v0, v2, v1, v3}, Ld1/b0;->c(Ljava/lang/Object;Li9/c;Li9/a;)V

    iget-object p0, p0, Lj9/y;->m:Ljava/lang/Object;

    if-eqz p0, :cond_2

    check-cast p0, Ll1/c;

    return-object p0

    :cond_2
    const-string p0, "result"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_1
    iget-object v0, p0, Lg0/b;->m:Lg0/g;

    iget-object v1, v0, Lg0/g;->f:Lg0/a;

    new-instance v2, Lad/t;

    const/16 v3, 0xd

    iget-object p0, p0, Lg0/b;->n:Li0/e;

    invoke-direct {v2, v3, p0}, Lad/t;-><init>(ILjava/lang/Object;)V

    new-instance p0, Lj9/y;

    invoke-direct {p0}, Lj9/y;-><init>()V

    iget-object v0, v0, Lg0/g;->e:Ld1/b0;

    new-instance v3, Lb0/n;

    const/4 v4, 0x4

    invoke-direct {v3, v4, p0, v2}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "dataBuilder"

    invoke-virtual {v0, v2, v1, v3}, Ld1/b0;->c(Ljava/lang/Object;Li9/c;Li9/a;)V

    iget-object p0, p0, Lj9/y;->m:Ljava/lang/Object;

    if-eqz p0, :cond_3

    check-cast p0, Le0/c;

    return-object p0

    :cond_3
    const-string p0, "result"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
