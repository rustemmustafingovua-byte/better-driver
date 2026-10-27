.class public final Ls0/r;
.super Ls0/j0;
.source "SourceFile"


# static fields
.field public static final d:Ls0/r;

.field public static final e:Ls0/r;

.field public static final f:Ls0/r;

.field public static final g:Ls0/r;


# instance fields
.field public final synthetic c:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    new-instance v0, Ls0/r;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Ls0/r;-><init>(III)V

    sput-object v0, Ls0/r;->d:Ls0/r;

    new-instance v0, Ls0/r;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Ls0/r;-><init>(III)V

    sput-object v0, Ls0/r;->e:Ls0/r;

    new-instance v0, Ls0/r;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-direct {v0, v3, v1, v2}, Ls0/r;-><init>(III)V

    sput-object v0, Ls0/r;->f:Ls0/r;

    new-instance v0, Ls0/r;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2}, Ls0/r;-><init>(III)V

    sput-object v0, Ls0/r;->g:Ls0/r;

    return-void
.end method

.method public synthetic constructor <init>(III)V
    .locals 0

    iput p3, p0, Ls0/r;->c:I

    invoke-direct {p0, p1, p2}, Ls0/j0;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a(Ls0/l0;Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    .locals 1

    iget p0, p0, Ls0/r;->c:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0}, Ls0/l0;->b(I)I

    move-result p0

    instance-of p1, p2, Lr0/y1;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lr0/y1;

    iget-object p5, p4, Lmb/x4;->e:Ljava/lang/Object;

    check-cast p5, Lt0/b;

    invoke-virtual {p5, p1}, Lt0/b;->b(Ljava/lang/Object;)V

    iget-object p5, p4, Lmb/x4;->d:Ljava/lang/Object;

    check-cast p5, Lk/n0;

    invoke-virtual {p5, p1}, Lk/n0;->a(Ljava/lang/Object;)Z

    :cond_0
    iget p1, p3, Lr0/h2;->t:I

    invoke-virtual {p3, p1, p0, p2}, Lr0/h2;->K(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lr0/y1;

    if-eqz p1, :cond_1

    check-cast p0, Lr0/y1;

    invoke-virtual {p4, p0}, Lmb/x4;->e(Lr0/y1;)V

    goto :goto_0

    :cond_1
    instance-of p1, p0, Lr0/n1;

    if-eqz p1, :cond_2

    check-cast p0, Lr0/n1;

    invoke-virtual {p0}, Lr0/n1;->d()V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p2

    const/4 p5, 0x1

    invoke-virtual {p1, p5}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lr0/a;

    invoke-virtual {p1, p0}, Ls0/l0;->b(I)I

    move-result p0

    instance-of p1, p2, Lr0/y1;

    if-eqz p1, :cond_3

    move-object p1, p2

    check-cast p1, Lr0/y1;

    iget-object v0, p4, Lmb/x4;->e:Ljava/lang/Object;

    check-cast v0, Lt0/b;

    invoke-virtual {v0, p1}, Lt0/b;->b(Ljava/lang/Object;)V

    iget-object v0, p4, Lmb/x4;->d:Ljava/lang/Object;

    check-cast v0, Lk/n0;

    invoke-virtual {v0, p1}, Lk/n0;->a(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p3, p5}, Lr0/h2;->c(Lr0/a;)I

    move-result p1

    invoke-virtual {p3, p1, p0, p2}, Lr0/h2;->K(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lr0/y1;

    if-eqz p1, :cond_4

    check-cast p0, Lr0/y1;

    invoke-virtual {p4, p0}, Lmb/x4;->e(Lr0/y1;)V

    goto :goto_1

    :cond_4
    instance-of p1, p0, Lr0/n1;

    if-eqz p1, :cond_5

    check-cast p0, Lr0/n1;

    invoke-virtual {p0}, Lr0/n1;->d()V

    :cond_5
    :goto_1
    return-void

    :pswitch_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lr0/a;

    invoke-virtual {p1, p0}, Ls0/l0;->b(I)I

    move-result p0

    invoke-interface {p2}, Lr0/c;->k()V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p4}, Lr0/h2;->c(Lr0/a;)I

    move-result p1

    invoke-virtual {p3, p1}, Lr0/h2;->D(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lr0/c;->c(ILjava/lang/Object;)V

    return-void

    :pswitch_2
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Li9/a;

    invoke-interface {p4}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p4

    const/4 p5, 0x1

    invoke-virtual {p1, p5}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lr0/a;

    invoke-virtual {p1, p0}, Ls0/l0;->b(I)I

    move-result p0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p5}, Lr0/h2;->c(Lr0/a;)I

    move-result p1

    invoke-virtual {p3, p1, p4}, Lr0/h2;->U(ILjava/lang/Object;)V

    invoke-interface {p2, p0, p4}, Lr0/c;->l(ILjava/lang/Object;)V

    invoke-interface {p2, p4}, Lr0/c;->d(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ls0/l0;)Lr0/a;
    .locals 1

    iget v0, p0, Ls0/r;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ls0/j0;->b(Ls0/l0;)Lr0/a;

    move-result-object p0

    return-object p0

    :pswitch_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/a;

    return-object p0

    :pswitch_1
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/a;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
