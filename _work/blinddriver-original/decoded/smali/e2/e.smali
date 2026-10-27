.class public final Le2/e;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/e;


# static fields
.field public static final m:Le2/e;

.field public static final n:Le2/e;

.field public static final o:Le2/e;

.field public static final p:Le2/e;


# instance fields
.field public final synthetic l:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Le2/e;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le2/e;-><init>(II)V

    sput-object v0, Le2/e;->m:Le2/e;

    new-instance v0, Le2/e;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Le2/e;-><init>(II)V

    sput-object v0, Le2/e;->n:Le2/e;

    new-instance v0, Le2/e;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Le2/e;-><init>(II)V

    sput-object v0, Le2/e;->o:Le2/e;

    new-instance v0, Le2/e;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Le2/e;-><init>(II)V

    sput-object v0, Le2/e;->p:Le2/e;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Le2/e;->l:I

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget p0, p0, Le2/e;->l:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Le2/h;

    check-cast p2, Lr0/z;

    check-cast p1, Le2/g0;

    iput-object p2, p1, Le2/g0;->N:Lr0/z;

    iget-object p0, p1, Le2/g0;->R:Le2/c1;

    sget-object v0, Lf2/l1;->h:Lr0/s2;

    check-cast p2, Lz0/h;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Lr0/r;->z(Lr0/j1;Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb3/c;

    invoke-virtual {p1, v0}, Le2/g0;->b0(Lb3/c;)V

    sget-object v0, Lf2/l1;->n:Lr0/s2;

    invoke-static {p2, v0}, Lr0/r;->z(Lr0/j1;Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb3/m;

    iget-object v1, p1, Le2/g0;->L:Lb3/m;

    if-eq v1, v0, :cond_1

    iput-object v0, p1, Le2/g0;->L:Lb3/m;

    invoke-virtual {p1}, Le2/g0;->E()V

    invoke-virtual {p1}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le2/g0;->C()V

    :cond_0
    invoke-virtual {p1}, Le2/g0;->D()V

    iget-object v0, p0, Le2/c1;->f:Lf1/q;

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Le2/j;->O()V

    iget-object v0, v0, Lf1/q;->q:Lf1/q;

    goto :goto_0

    :cond_1
    sget-object v0, Lf2/l1;->s:Lr0/s2;

    invoke-static {p2, v0}, Lr0/r;->z(Lr0/j1;Lr0/m1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf2/p2;

    invoke-virtual {p1, p2}, Le2/g0;->g0(Lf2/p2;)V

    iget-object p0, p0, Le2/c1;->f:Lf1/q;

    iget p1, p0, Lf1/q;->o:I

    const p2, 0x8000

    and-int/2addr p1, p2

    if-eqz p1, :cond_b

    :goto_1
    if-eqz p0, :cond_b

    iget p1, p0, Lf1/q;->n:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    move-object v0, p0

    move-object v1, p1

    :goto_2
    if-eqz v0, :cond_a

    instance-of v2, v0, Le2/i;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    check-cast v0, Le2/i;

    check-cast v0, Lf1/q;

    iget-object v0, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v2, v0, Lf1/q;->y:Z

    if-eqz v2, :cond_2

    invoke-static {v0}, Le2/i1;->c(Lf1/q;)V

    goto :goto_5

    :cond_2
    iput-boolean v3, v0, Lf1/q;->u:Z

    goto :goto_5

    :cond_3
    iget v2, v0, Lf1/q;->n:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_9

    instance-of v2, v0, Le2/k;

    if-eqz v2, :cond_9

    move-object v2, v0

    check-cast v2, Le2/k;

    iget-object v2, v2, Le2/k;->A:Lf1/q;

    const/4 v4, 0x0

    :goto_3
    if-eqz v2, :cond_8

    iget v5, v2, Lf1/q;->n:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_7

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    if-nez v1, :cond_5

    new-instance v1, Lt0/b;

    const/16 v5, 0x10

    new-array v5, v5, [Lf1/q;

    invoke-direct {v1, v5}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v1, v0}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v0, p1

    :cond_6
    invoke-virtual {v1, v2}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_7
    :goto_4
    iget-object v2, v2, Lf1/q;->q:Lf1/q;

    goto :goto_3

    :cond_8
    if-ne v4, v3, :cond_9

    goto :goto_2

    :cond_9
    :goto_5
    invoke-static {v1}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v0

    goto :goto_2

    :cond_a
    iget p1, p0, Lf1/q;->o:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_b

    iget-object p0, p0, Lf1/q;->q:Lf1/q;

    goto :goto_1

    :cond_b
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Le2/h;

    check-cast p2, Lf1/r;

    check-cast p1, Le2/g0;

    invoke-virtual {p1, p2}, Le2/g0;->f0(Lf1/r;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Le2/h;

    check-cast p2, Lc2/r0;

    check-cast p1, Le2/g0;

    invoke-virtual {p1, p2}, Le2/g0;->e0(Lc2/r0;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    check-cast p1, Le2/h;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
