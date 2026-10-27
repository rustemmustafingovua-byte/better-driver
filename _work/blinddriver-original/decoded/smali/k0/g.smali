.class public final Lk0/g;
.super Le2/k;
.source "SourceFile"

# interfaces
.implements Le2/z1;


# instance fields
.field public B:Lu2/b0;

.field public C:Lu2/x;

.field public D:Lb0/r1;

.field public E:Z

.field public F:Z

.field public G:Lu2/q;

.field public H:Lm0/v1;

.field public I:Lu2/k;

.field public J:Lk1/u;


# direct methods
.method public static P0(Lb0/r1;Ljava/lang/String;Z)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lb0/r1;->e:Lu2/a0;

    iget-object v0, p0, Lb0/r1;->v:Lb0/h0;

    if-eqz p2, :cond_1

    new-instance v1, Lu2/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lu2/a;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lu2/a;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x2

    new-array p1, p1, [Lu2/g;

    const/4 v4, 0x0

    aput-object v1, p1, v4

    aput-object v2, p1, v3

    invoke-static {p1}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lb0/r1;->d:Lg5/e;

    invoke-virtual {p0, p1}, Lg5/e;->h(Ljava/util/List;)Lu2/x;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p0}, Lu2/a0;->a(Lu2/x;Lu2/x;)V

    invoke-virtual {v0, p0}, Lb0/h0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p0, Lu2/x;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2, p2}, Lp2/d0;->b(II)J

    move-result-wide v1

    const/4 p2, 0x4

    invoke-direct {p0, p2, v1, v2, p1}, Lu2/x;-><init>(IJLjava/lang/String;)V

    invoke-virtual {v0, p0}, Lb0/h0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final C(Lm2/x;)V
    .locals 10

    iget-boolean v0, p0, Lk0/g;->F:Z

    iget-object v1, p0, Lk0/g;->C:Lu2/x;

    iget-object v1, v1, Lu2/x;->a:Lp2/g;

    sget-object v2, Lm2/v;->a:[Lp9/d;

    sget-object v2, Lm2/t;->E:Lm2/w;

    sget-object v3, Lm2/v;->a:[Lp9/d;

    const/16 v4, 0x12

    aget-object v4, v3, v4

    invoke-interface {p1, v2, v1}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    iget-object v1, p0, Lk0/g;->B:Lu2/b0;

    iget-object v1, v1, Lu2/b0;->a:Lp2/g;

    sget-object v2, Lm2/t;->F:Lm2/w;

    const/16 v4, 0x13

    aget-object v4, v3, v4

    invoke-interface {p1, v2, v1}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    iget-object v1, p0, Lk0/g;->C:Lu2/x;

    iget-wide v1, v1, Lu2/x;->b:J

    sget-object v4, Lm2/t;->G:Lm2/w;

    const/16 v5, 0x14

    aget-object v5, v3, v5

    new-instance v5, Lp2/l0;

    invoke-direct {v5, v1, v2}, Lp2/l0;-><init>(J)V

    invoke-interface {p1, v4, v5}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    sget-object v1, Lm2/t;->r:Lm2/w;

    const/16 v2, 0x9

    aget-object v2, v3, v2

    sget-object v2, Lg1/k;->a:Lg1/d;

    invoke-interface {p1, v1, v2}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    iget-object v1, p0, Lk0/g;->C:Lu2/x;

    iget-object v1, v1, Lu2/x;->a:Lp2/g;

    new-instance v2, Lg1/f;

    invoke-static {v1}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    invoke-direct {v2, v1}, Lg1/f;-><init>(Landroid/view/autofill/AutofillValue;)V

    sget-object v1, Lm2/t;->s:Lm2/w;

    const/16 v4, 0xa

    aget-object v4, v3, v4

    invoke-interface {p1, v1, v2}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    new-instance v1, Lk0/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lk0/f;-><init>(Lk0/g;I)V

    invoke-static {p1, v1}, Lm2/v;->b(Lm2/x;Li9/c;)V

    iget-object v1, p0, Lk0/g;->I:Lu2/k;

    iget v1, v1, Lu2/k;->d:I

    const/4 v2, 0x4

    const/4 v4, 0x7

    const/16 v5, 0x8

    const/4 v6, 0x6

    if-ne v1, v6, :cond_0

    sget-object v1, Lg1/m;->a:Lg1/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lg1/l;->c:Lg1/e;

    sget-object v7, Lm2/t;->q:Lm2/w;

    aget-object v5, v3, v5

    invoke-interface {p1, v7, v1}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    if-ne v1, v5, :cond_2

    :goto_0
    sget-object v1, Lg1/m;->a:Lg1/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lg1/l;->b:Lg1/e;

    sget-object v7, Lm2/t;->q:Lm2/w;

    aget-object v5, v3, v5

    invoke-interface {p1, v7, v1}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-ne v1, v2, :cond_3

    sget-object v1, Lg1/m;->a:Lg1/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lg1/l;->d:Lg1/e;

    sget-object v7, Lm2/t;->q:Lm2/w;

    aget-object v5, v3, v5

    invoke-interface {p1, v7, v1}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    iget-boolean v1, p0, Lk0/g;->E:Z

    sget-object v5, Lt8/z;->a:Lt8/z;

    if-nez v1, :cond_4

    sget-object v1, Lm2/t;->i:Lm2/w;

    invoke-interface {p1, v1, v5}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    :cond_4
    if-eqz v0, :cond_5

    sget-object v1, Lm2/t;->K:Lm2/w;

    invoke-interface {p1, v1, v5}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    :cond_5
    iget-boolean v1, p0, Lk0/g;->E:Z

    sget-object v5, Lm2/t;->N:Lm2/w;

    const/16 v7, 0x1a

    aget-object v3, v3, v7

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p1, v5, v3}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    new-instance v3, Lk0/f;

    const/4 v5, 0x1

    invoke-direct {v3, p0, v5}, Lk0/f;-><init>(Lk0/g;I)V

    invoke-static {p1, v3}, Lm2/v;->a(Lm2/x;Li9/c;)V

    const/4 v3, 0x2

    const/4 v7, 0x0

    if-eqz v1, :cond_6

    new-instance v1, Lk0/f;

    invoke-direct {v1, p0, v3}, Lk0/f;-><init>(Lk0/g;I)V

    sget-object v8, Lm2/l;->k:Lm2/w;

    new-instance v9, Lm2/a;

    invoke-direct {v9, v7, v1}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-interface {p1, v8, v9}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    new-instance v1, Lk0/f;

    invoke-direct {v1, p0, p1}, Lk0/f;-><init>(Lk0/g;Lm2/x;)V

    sget-object v8, Lm2/l;->o:Lm2/w;

    new-instance v9, Lm2/a;

    invoke-direct {v9, v7, v1}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-interface {p1, v8, v9}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    :cond_6
    new-instance v1, Lb0/x2;

    invoke-direct {v1, v2, p0}, Lb0/x2;-><init>(ILjava/lang/Object;)V

    sget-object v2, Lm2/l;->j:Lm2/w;

    new-instance v8, Lm2/a;

    invoke-direct {v8, v7, v1}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-interface {p1, v2, v8}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    iget-object v1, p0, Lk0/g;->I:Lu2/k;

    iget v1, v1, Lu2/k;->e:I

    new-instance v2, Lk0/e;

    invoke-direct {v2, p0, v6}, Lk0/e;-><init>(Lk0/g;I)V

    sget-object v6, Lm2/t;->H:Lm2/w;

    new-instance v8, Lu2/j;

    invoke-direct {v8, v1}, Lu2/j;-><init>(I)V

    invoke-interface {p1, v6, v8}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    sget-object v1, Lm2/l;->p:Lm2/w;

    new-instance v6, Lm2/a;

    invoke-direct {v6, v7, v2}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-interface {p1, v1, v6}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    new-instance v1, Lk0/e;

    invoke-direct {v1, p0, v4}, Lk0/e;-><init>(Lk0/g;I)V

    sget-object v2, Lm2/l;->b:Lm2/w;

    new-instance v4, Lm2/a;

    invoke-direct {v4, v7, v1}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-interface {p1, v2, v4}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    new-instance v1, Lk0/e;

    invoke-direct {v1, p0, v5}, Lk0/e;-><init>(Lk0/g;I)V

    sget-object v2, Lm2/l;->c:Lm2/w;

    new-instance v4, Lm2/a;

    invoke-direct {v4, v7, v1}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-interface {p1, v2, v4}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    iget-object v1, p0, Lk0/g;->C:Lu2/x;

    iget-wide v1, v1, Lu2/x;->b:J

    invoke-static {v1, v2}, Lp2/l0;->c(J)Z

    move-result v1

    if-nez v1, :cond_7

    if-nez v0, :cond_7

    new-instance v0, Lk0/e;

    invoke-direct {v0, p0, v3}, Lk0/e;-><init>(Lk0/g;I)V

    sget-object v1, Lm2/l;->q:Lm2/w;

    new-instance v2, Lm2/a;

    invoke-direct {v2, v7, v0}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-interface {p1, v1, v2}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lk0/g;->E:Z

    if-eqz v0, :cond_7

    new-instance v0, Lk0/e;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lk0/e;-><init>(Lk0/g;I)V

    sget-object v1, Lm2/l;->r:Lm2/w;

    new-instance v2, Lm2/a;

    invoke-direct {v2, v7, v0}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-interface {p1, v1, v2}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    :cond_7
    iget-boolean v0, p0, Lk0/g;->E:Z

    if-eqz v0, :cond_8

    new-instance v0, Lk0/e;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lk0/e;-><init>(Lk0/g;I)V

    sget-object p0, Lm2/l;->s:Lm2/w;

    new-instance v1, Lm2/a;

    invoke-direct {v1, v7, v0}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-interface {p1, p0, v1}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public final t0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
