.class public final Lu6/z;
.super Ls5/g;
.source "SourceFile"


# static fields
.field public static final A:I


# instance fields
.field public m:Ls5/o;

.field public n:Ls5/m;

.field public o:I

.field public p:Ls5/c;

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Lu6/y;

.field public u:Lu6/y;

.field public v:I

.field public w:Ljava/lang/Object;

.field public x:Ljava/lang/Object;

.field public y:Z

.field public z:Ly5/f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Ls5/f;->values()[Ls5/f;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    iget-boolean v5, v4, Ls5/f;->l:Z

    if-eqz v5, :cond_0

    iget v4, v4, Ls5/f;->m:I

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sput v3, Lu6/z;->A:I

    return-void
.end method


# virtual methods
.method public final A0(Ljava/lang/Object;Ls5/n;)V
    .locals 9

    iget-object v0, p0, Lu6/z;->z:Ly5/f;

    invoke-virtual {v0}, Ly5/f;->n()I

    iget-boolean v0, p0, Lu6/z;->y:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu6/z;->u:Lu6/y;

    iget v4, p0, Lu6/z;->v:I

    iget-object v5, p0, Lu6/z;->x:Ljava/lang/Object;

    iget-object v6, p0, Lu6/z;->w:Ljava/lang/Object;

    if-ge v4, v3, :cond_1

    iget-object v1, v0, Lu6/y;->c:[Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long p1, p1

    if-lez v4, :cond_0

    shl-int/lit8 v1, v4, 0x2

    shl-long/2addr p1, v1

    :cond_0
    iget-wide v7, v0, Lu6/y;->b:J

    or-long/2addr p1, v7

    iput-wide p1, v0, Lu6/y;->b:J

    invoke-virtual {v0, v4, v5, v6}, Lu6/y;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lu6/y;

    invoke-direct {v2}, Lu6/y;-><init>()V

    iput-object v2, v0, Lu6/y;->a:Lu6/y;

    iget-object v3, v2, Lu6/y;->c:[Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long p1, p1

    iget-wide v3, v2, Lu6/y;->b:J

    or-long/2addr p1, v3

    iput-wide p1, v2, Lu6/y;->b:J

    invoke-virtual {v2, v1, v5, v6}, Lu6/y;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v0, Lu6/y;->a:Lu6/y;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lu6/z;->u:Lu6/y;

    iget v4, p0, Lu6/z;->v:I

    if-ge v4, v3, :cond_4

    iget-object v1, v0, Lu6/y;->c:[Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long p1, p1

    if-lez v4, :cond_3

    shl-int/lit8 v1, v4, 0x2

    shl-long/2addr p1, v1

    :cond_3
    iget-wide v3, v0, Lu6/y;->b:J

    or-long/2addr p1, v3

    iput-wide p1, v0, Lu6/y;->b:J

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lu6/y;

    invoke-direct {v2}, Lu6/y;-><init>()V

    iput-object v2, v0, Lu6/y;->a:Lu6/y;

    iget-object v3, v2, Lu6/y;->c:[Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long p1, p1

    iget-wide v3, v2, Lu6/y;->b:J

    or-long/2addr p1, v3

    iput-wide p1, v2, Lu6/y;->b:J

    iget-object v2, v0, Lu6/y;->a:Lu6/y;

    :goto_0
    const/4 p1, 0x1

    if-nez v2, :cond_5

    iget p2, p0, Lu6/z;->v:I

    add-int/2addr p2, p1

    iput p2, p0, Lu6/z;->v:I

    return-void

    :cond_5
    iput-object v2, p0, Lu6/z;->u:Lu6/y;

    iput p1, p0, Lu6/z;->v:I

    return-void
.end method

.method public final B0(Ls5/n;)V
    .locals 8

    iget-object v0, p0, Lu6/z;->z:Ly5/f;

    invoke-virtual {v0}, Ly5/f;->n()I

    iget-boolean v0, p0, Lu6/z;->y:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu6/z;->u:Lu6/y;

    iget v1, p0, Lu6/z;->v:I

    iget-object v2, p0, Lu6/z;->x:Ljava/lang/Object;

    iget-object v3, p0, Lu6/z;->w:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x10

    if-ge v1, v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v4, p1

    if-lez v1, :cond_0

    shl-int/lit8 p1, v1, 0x2

    shl-long/2addr v4, p1

    :cond_0
    iget-wide v6, v0, Lu6/y;->b:J

    or-long/2addr v4, v6

    iput-wide v4, v0, Lu6/y;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lu6/y;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Lu6/y;

    invoke-direct {v1}, Lu6/y;-><init>()V

    iput-object v1, v0, Lu6/y;->a:Lu6/y;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v4, p1

    iget-wide v6, v1, Lu6/y;->b:J

    or-long/2addr v4, v6

    iput-wide v4, v1, Lu6/y;->b:J

    const/4 p1, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lu6/y;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, v0, Lu6/y;->a:Lu6/y;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lu6/z;->u:Lu6/y;

    iget v1, p0, Lu6/z;->v:I

    invoke-virtual {v0, v1, p1}, Lu6/y;->a(ILs5/n;)Lu6/y;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_3

    iget p1, p0, Lu6/z;->v:I

    add-int/2addr p1, v0

    iput p1, p0, Lu6/z;->v:I

    return-void

    :cond_3
    iput-object p1, p0, Lu6/z;->u:Lu6/y;

    iput v0, p0, Lu6/z;->v:I

    return-void
.end method

.method public final C(Ls5/a;Lbb/f;I)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final C0(Ls5/k;)V
    .locals 2

    invoke-virtual {p1}, Ls5/k;->l0()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lu6/z;->w:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lu6/z;->y:Z

    :cond_0
    invoke-virtual {p1}, Ls5/k;->d0()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lu6/z;->x:Ljava/lang/Object;

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lu6/z;->y:Z

    :cond_1
    return-void
.end method

.method public final D0(Ls5/k;)V
    .locals 5

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v3, v0, :cond_7

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    invoke-virtual {p0, p1, v2}, Lu6/z;->E0(Ls5/k;Ls5/n;)V

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lu6/z;->s:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lu6/z;->C0(Ls5/k;)V

    :cond_2
    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lu6/z;->S(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lu6/z;->P()V

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_4
    iget-boolean v2, p0, Lu6/z;->s:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, Lu6/z;->C0(Ls5/k;)V

    :cond_5
    invoke-virtual {p0}, Lu6/z;->k0()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lu6/z;->R()V

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_7
    iget-boolean v2, p0, Lu6/z;->s:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0, p1}, Lu6/z;->C0(Ls5/k;)V

    :cond_8
    invoke-virtual {p0}, Lu6/z;->n0()V

    goto :goto_1

    :cond_9
    :goto_2
    return-void
.end method

.method public final E0(Ls5/k;Ls5/n;)V
    .locals 1

    iget-boolean v0, p0, Lu6/z;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lu6/z;->C0(Ls5/k;)V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Internal error: unexpected token: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lu6/z;->U()V

    return-void

    :pswitch_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lu6/z;->K(Z)V

    return-void

    :pswitch_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lu6/z;->K(Z)V

    return-void

    :pswitch_3
    invoke-virtual {p1}, Ls5/k;->c0()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls5/n;->C:Ls5/n;

    invoke-virtual {p0, p1, p2}, Lu6/z;->A0(Ljava/lang/Object;Ls5/n;)V

    return-void

    :pswitch_4
    invoke-virtual {p1}, Ls5/k;->Z()I

    move-result p2

    invoke-static {p2}, Landroidx/fragment/app/t1;->d(I)I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    invoke-virtual {p1}, Ls5/k;->Y()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lu6/z;->Y(J)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ls5/k;->c0()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls5/n;->B:Ls5/n;

    invoke-virtual {p0, p1, p2}, Lu6/z;->A0(Ljava/lang/Object;Ls5/n;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Ls5/k;->X()I

    move-result p1

    invoke-virtual {p0, p1}, Lu6/z;->X(I)V

    return-void

    :pswitch_5
    invoke-virtual {p1}, Ls5/k;->p0()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ls5/k;->i0()[C

    move-result-object p2

    invoke-virtual {p1}, Ls5/k;->k0()I

    move-result v0

    invoke-virtual {p1}, Ls5/k;->j0()I

    move-result p1

    invoke-virtual {p0, p2, v0, p1}, Lu6/z;->s0([CII)V

    return-void

    :cond_3
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu6/z;->q0(Ljava/lang/String;)V

    return-void

    :pswitch_6
    invoke-virtual {p1}, Ls5/k;->V()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu6/z;->writeObject(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final F0(Lu6/z;)V
    .locals 1

    iget-boolean v0, p0, Lu6/z;->q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lu6/z;->q:Z

    iput-boolean v0, p0, Lu6/z;->q:Z

    :cond_0
    iget-boolean v0, p0, Lu6/z;->r:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lu6/z;->r:Z

    iput-boolean v0, p0, Lu6/z;->r:Z

    :cond_1
    iget-boolean v0, p0, Lu6/z;->q:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lu6/z;->r:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lu6/z;->s:Z

    iget-object v0, p1, Lu6/z;->m:Ls5/o;

    invoke-virtual {p1, v0}, Lu6/z;->I0(Ls5/o;)Lu6/x;

    move-result-object p1

    :goto_2
    invoke-virtual {p1}, Lu6/x;->z0()Ls5/n;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lu6/z;->J0(Ls5/k;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final G0(Ls5/c;)Lu6/x;
    .locals 7

    new-instance v0, Lu6/x;

    iget-object v1, p0, Lu6/z;->t:Lu6/y;

    iget-object v2, p0, Lu6/z;->m:Ls5/o;

    iget-boolean v3, p0, Lu6/z;->q:Z

    iget-boolean v4, p0, Lu6/z;->r:Z

    iget-object v5, p0, Lu6/z;->n:Ls5/m;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lu6/x;-><init>(Lu6/y;Ls5/o;ZZLs5/m;Ls5/c;)V

    return-object v0
.end method

.method public final H0(Ls5/k;)Lu6/x;
    .locals 7

    new-instance v0, Lu6/x;

    iget-object v1, p0, Lu6/z;->t:Lu6/y;

    invoke-virtual {p1}, Ls5/k;->R()Ls5/o;

    move-result-object v2

    iget-boolean v3, p0, Lu6/z;->q:Z

    iget-boolean v4, p0, Lu6/z;->r:Z

    iget-object v5, p0, Lu6/z;->n:Ls5/m;

    invoke-virtual {p1}, Ls5/k;->D0()Ls5/c;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lu6/x;-><init>(Lu6/y;Ls5/o;ZZLs5/m;Ls5/c;)V

    invoke-virtual {p1}, Ls5/k;->y()Ls5/h;

    move-result-object p0

    iput-object p0, v0, Lu6/x;->I:Ls5/h;

    return-object v0
.end method

.method public final I0(Ls5/o;)Lu6/x;
    .locals 7

    new-instance v0, Lu6/x;

    iget-object v1, p0, Lu6/z;->t:Lu6/y;

    iget-boolean v3, p0, Lu6/z;->q:Z

    iget-boolean v4, p0, Lu6/z;->r:Z

    iget-object v5, p0, Lu6/z;->n:Ls5/m;

    iget-object v6, p0, Lu6/z;->p:Ls5/c;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lu6/x;-><init>(Lu6/y;Ls5/o;ZZLs5/m;Ls5/c;)V

    return-object v0
.end method

.method public final J(Ls5/a;[BII)V
    .locals 1

    new-array p1, p4, [B

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p1}, Lu6/z;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public final J0(Ls5/k;)V
    .locals 3

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->y:Ls5/n;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lu6/z;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lu6/z;->C0(Ls5/k;)V

    :cond_0
    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu6/z;->S(Ljava/lang/String;)V

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_8

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    invoke-virtual {p0, p1, v0}, Lu6/z;->E0(Ls5/k;Ls5/n;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lu6/z;->P()V

    return-void

    :cond_3
    iget-boolean v0, p0, Lu6/z;->s:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lu6/z;->C0(Ls5/k;)V

    :cond_4
    invoke-virtual {p0}, Lu6/z;->k0()V

    invoke-virtual {p0, p1}, Lu6/z;->D0(Ls5/k;)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lu6/z;->R()V

    return-void

    :cond_6
    iget-boolean v0, p0, Lu6/z;->s:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lu6/z;->C0(Ls5/k;)V

    :cond_7
    invoke-virtual {p0}, Lu6/z;->n0()V

    invoke-virtual {p0, p1}, Lu6/z;->D0(Ls5/k;)V

    return-void

    :cond_8
    new-instance p0, Lw5/e;

    const-string v0, "Unexpected end-of-input"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;I)V

    throw p0
.end method

.method public final K(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Ls5/n;->D:Ls5/n;

    goto :goto_0

    :cond_0
    sget-object p1, Ls5/n;->E:Ls5/n;

    :goto_0
    invoke-virtual {p0, p1}, Lu6/z;->B0(Ls5/n;)V

    return-void
.end method

.method public final P()V
    .locals 3

    sget-object v0, Ls5/n;->x:Ls5/n;

    iget-object v1, p0, Lu6/z;->u:Lu6/y;

    iget v2, p0, Lu6/z;->v:I

    invoke-virtual {v1, v2, v0}, Lu6/y;->a(ILs5/n;)Lu6/y;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lu6/z;->v:I

    add-int/2addr v0, v1

    iput v0, p0, Lu6/z;->v:I

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lu6/z;->u:Lu6/y;

    iput v1, p0, Lu6/z;->v:I

    :goto_0
    iget-object v0, p0, Lu6/z;->z:Ly5/f;

    iget-object v0, v0, Ly5/f;->d:Ly5/f;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lu6/z;->z:Ly5/f;

    :cond_1
    return-void
.end method

.method public final R()V
    .locals 3

    sget-object v0, Ls5/n;->v:Ls5/n;

    iget-object v1, p0, Lu6/z;->u:Lu6/y;

    iget v2, p0, Lu6/z;->v:I

    invoke-virtual {v1, v2, v0}, Lu6/y;->a(ILs5/n;)Lu6/y;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lu6/z;->v:I

    add-int/2addr v0, v1

    iput v0, p0, Lu6/z;->v:I

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lu6/z;->u:Lu6/y;

    iput v1, p0, Lu6/z;->v:I

    :goto_0
    iget-object v0, p0, Lu6/z;->z:Ly5/f;

    iget-object v0, v0, Ly5/f;->d:Ly5/f;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lu6/z;->z:Ly5/f;

    :cond_1
    return-void
.end method

.method public final S(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lu6/z;->z:Ly5/f;

    invoke-virtual {v0, p1}, Ly5/f;->m(Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lu6/z;->x0(Ljava/lang/Object;)V

    return-void
.end method

.method public final T(Ls5/q;)V
    .locals 2

    iget-object v0, p0, Lu6/z;->z:Ly5/f;

    move-object v1, p1

    check-cast v1, Lw5/k;

    iget-object v1, v1, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ly5/f;->m(Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lu6/z;->x0(Ljava/lang/Object;)V

    return-void
.end method

.method public final U()V
    .locals 1

    sget-object v0, Ls5/n;->F:Ls5/n;

    invoke-virtual {p0, v0}, Lu6/z;->B0(Ls5/n;)V

    return-void
.end method

.method public final V(D)V
    .locals 1

    sget-object v0, Ls5/n;->C:Ls5/n;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lu6/z;->A0(Ljava/lang/Object;Ls5/n;)V

    return-void
.end method

.method public final W(F)V
    .locals 1

    sget-object v0, Ls5/n;->C:Ls5/n;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lu6/z;->A0(Ljava/lang/Object;Ls5/n;)V

    return-void
.end method

.method public final X(I)V
    .locals 1

    sget-object v0, Ls5/n;->B:Ls5/n;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lu6/z;->A0(Ljava/lang/Object;Ls5/n;)V

    return-void
.end method

.method public final Y(J)V
    .locals 1

    sget-object v0, Ls5/n;->B:Ls5/n;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lu6/z;->A0(Ljava/lang/Object;Ls5/n;)V

    return-void
.end method

.method public final Z(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ls5/n;->C:Ls5/n;

    invoke-virtual {p0, p1, v0}, Lu6/z;->A0(Ljava/lang/Object;Ls5/n;)V

    return-void
.end method

.method public final a0(Ljava/math/BigDecimal;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lu6/z;->U()V

    return-void

    :cond_0
    sget-object v0, Ls5/n;->C:Ls5/n;

    invoke-virtual {p0, p1, v0}, Lu6/z;->A0(Ljava/lang/Object;Ls5/n;)V

    return-void
.end method

.method public final b0(Ljava/math/BigInteger;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lu6/z;->U()V

    return-void

    :cond_0
    sget-object v0, Ls5/n;->B:Ls5/n;

    invoke-virtual {p0, p1, v0}, Lu6/z;->A0(Ljava/lang/Object;Ls5/n;)V

    return-void
.end method

.method public final c0(S)V
    .locals 1

    sget-object v0, Ls5/n;->B:Ls5/n;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lu6/z;->A0(Ljava/lang/Object;Ls5/n;)V

    return-void
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lu6/z;->x:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lu6/z;->y:Z

    return-void
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lu6/z;->r:Z

    return p0
.end method

.method public final e0(C)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Called operation not supported for TokenBuffer"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f0(I[C)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Called operation not supported for TokenBuffer"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final g0(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Called operation not supported for TokenBuffer"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h0(Ls5/q;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Called operation not supported for TokenBuffer"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i0(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ls5/n;->z:Ls5/n;

    new-instance v1, Lu6/u;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v1, Lu6/u;->l:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lu6/z;->A0(Ljava/lang/Object;Ls5/n;)V

    return-void
.end method

.method public final k()Z
    .locals 0

    iget-boolean p0, p0, Lu6/z;->q:Z

    return p0
.end method

.method public final k0()V
    .locals 1

    iget-object v0, p0, Lu6/z;->z:Ly5/f;

    invoke-virtual {v0}, Ly5/f;->n()I

    sget-object v0, Ls5/n;->w:Ls5/n;

    invoke-virtual {p0, v0}, Lu6/z;->z0(Ls5/n;)V

    iget-object v0, p0, Lu6/z;->z:Ly5/f;

    invoke-virtual {v0}, Ly5/f;->i()Ly5/f;

    move-result-object v0

    iput-object v0, p0, Lu6/z;->z:Ly5/f;

    return-void
.end method

.method public final l0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lu6/z;->z:Ly5/f;

    invoke-virtual {v0}, Ly5/f;->n()I

    sget-object v0, Ls5/n;->w:Ls5/n;

    invoke-virtual {p0, v0}, Lu6/z;->z0(Ls5/n;)V

    iget-object v0, p0, Lu6/z;->z:Ly5/f;

    invoke-virtual {v0, p1}, Ly5/f;->j(Ljava/lang/Object;)Ly5/f;

    move-result-object p1

    iput-object p1, p0, Lu6/z;->z:Ly5/f;

    return-void
.end method

.method public final m(Ls5/f;)Ls5/g;
    .locals 1

    iget v0, p0, Lu6/z;->o:I

    iget p1, p1, Ls5/f;->m:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lu6/z;->o:I

    return-object p0
.end method

.method public final m0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lu6/z;->z:Ly5/f;

    invoke-virtual {v0}, Ly5/f;->n()I

    sget-object v0, Ls5/n;->w:Ls5/n;

    invoke-virtual {p0, v0}, Lu6/z;->z0(Ls5/n;)V

    iget-object v0, p0, Lu6/z;->z:Ly5/f;

    invoke-virtual {v0, p1}, Ly5/f;->j(Ljava/lang/Object;)Ly5/f;

    move-result-object p1

    iput-object p1, p0, Lu6/z;->z:Ly5/f;

    return-void
.end method

.method public final n()Ly5/f;
    .locals 0

    iget-object p0, p0, Lu6/z;->z:Ly5/f;

    return-object p0
.end method

.method public final n0()V
    .locals 1

    iget-object v0, p0, Lu6/z;->z:Ly5/f;

    invoke-virtual {v0}, Ly5/f;->n()I

    sget-object v0, Ls5/n;->u:Ls5/n;

    invoke-virtual {p0, v0}, Lu6/z;->z0(Ls5/n;)V

    iget-object v0, p0, Lu6/z;->z:Ly5/f;

    invoke-virtual {v0}, Ly5/f;->k()Ly5/f;

    move-result-object v0

    iput-object v0, p0, Lu6/z;->z:Ly5/f;

    return-void
.end method

.method public final o0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lu6/z;->z:Ly5/f;

    invoke-virtual {v0}, Ly5/f;->n()I

    sget-object v0, Ls5/n;->u:Ls5/n;

    invoke-virtual {p0, v0}, Lu6/z;->z0(Ls5/n;)V

    iget-object v0, p0, Lu6/z;->z:Ly5/f;

    invoke-virtual {v0, p1}, Ly5/f;->l(Ljava/lang/Object;)Ly5/f;

    move-result-object p1

    iput-object p1, p0, Lu6/z;->z:Ly5/f;

    return-void
.end method

.method public final p0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lu6/z;->z:Ly5/f;

    invoke-virtual {v0}, Ly5/f;->n()I

    sget-object v0, Ls5/n;->u:Ls5/n;

    invoke-virtual {p0, v0}, Lu6/z;->z0(Ls5/n;)V

    iget-object v0, p0, Lu6/z;->z:Ly5/f;

    invoke-virtual {v0, p1}, Ly5/f;->l(Ljava/lang/Object;)Ly5/f;

    move-result-object p1

    iput-object p1, p0, Lu6/z;->z:Ly5/f;

    return-void
.end method

.method public final q(Ls5/f;)Z
    .locals 0

    iget p0, p0, Lu6/z;->o:I

    iget p1, p1, Ls5/f;->m:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final q0(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lu6/z;->U()V

    return-void

    :cond_0
    sget-object v0, Ls5/n;->A:Ls5/n;

    invoke-virtual {p0, p1, v0}, Lu6/z;->A0(Ljava/lang/Object;Ls5/n;)V

    return-void
.end method

.method public final r0(Ls5/q;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lu6/z;->U()V

    return-void

    :cond_0
    sget-object v0, Ls5/n;->A:Ls5/n;

    invoke-virtual {p0, p1, v0}, Lu6/z;->A0(Ljava/lang/Object;Ls5/n;)V

    return-void
.end method

.method public final s0([CII)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lu6/z;->q0(Ljava/lang/String;)V

    return-void
.end method

.method public final t(II)Ls5/g;
    .locals 2

    iget v0, p0, Lu6/z;->o:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Lu6/z;->o:I

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TokenBuffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu6/z;->m:Ls5/o;

    invoke-virtual {p0, v1}, Lu6/z;->I0(Ls5/o;)Lu6/x;

    move-result-object v1

    iget-boolean v2, p0, Lu6/z;->q:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lu6/z;->r:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    :try_start_0
    invoke-virtual {v1}, Lu6/x;->z0()Ls5/n;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x64

    if-nez v4, :cond_3

    if-lt v3, v5, :cond_2

    const-string p0, " ... (truncated "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " entries)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz v2, :cond_4

    :try_start_1
    invoke-virtual {p0, v0}, Lu6/z;->y0(Ljava/lang/StringBuilder;)V

    :cond_4
    if-ge v3, v5, :cond_6

    if-lez v3, :cond_5

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ls5/n;->y:Ls5/n;

    if-ne v4, v5, :cond_6

    const/16 v4, 0x28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lu6/x;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final u0(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lu6/z;->w:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lu6/z;->y:Z

    return-void
.end method

.method public final writeObject(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lu6/z;->U()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [B

    if-eq v0, v1, :cond_3

    instance-of v0, p1, Lu6/u;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lu6/z;->m:Ls5/o;

    if-nez v0, :cond_2

    sget-object v0, Ls5/n;->z:Ls5/n;

    invoke-virtual {p0, p1, v0}, Lu6/z;->A0(Ljava/lang/Object;Ls5/n;)V

    return-void

    :cond_2
    invoke-virtual {v0, p0, p1}, Ls5/o;->d(Ls5/g;Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_0
    sget-object v0, Ls5/n;->z:Ls5/n;

    invoke-virtual {p0, p1, v0}, Lu6/z;->A0(Ljava/lang/Object;Ls5/n;)V

    return-void
.end method

.method public final x0(Ljava/lang/Object;)V
    .locals 12

    iget-boolean v0, p0, Lu6/z;->y:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu6/z;->u:Lu6/y;

    iget v4, p0, Lu6/z;->v:I

    sget-object v5, Ls5/n;->y:Ls5/n;

    iget-object v6, p0, Lu6/z;->x:Ljava/lang/Object;

    iget-object v7, p0, Lu6/z;->w:Ljava/lang/Object;

    if-ge v4, v3, :cond_1

    iget-object v1, v0, Lu6/y;->c:[Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v8, p1

    if-lez v4, :cond_0

    shl-int/lit8 p1, v4, 0x2

    shl-long/2addr v8, p1

    :cond_0
    iget-wide v10, v0, Lu6/y;->b:J

    or-long/2addr v8, v10

    iput-wide v8, v0, Lu6/y;->b:J

    invoke-virtual {v0, v4, v6, v7}, Lu6/y;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lu6/y;

    invoke-direct {v2}, Lu6/y;-><init>()V

    iput-object v2, v0, Lu6/y;->a:Lu6/y;

    iget-object v3, v2, Lu6/y;->c:[Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v3, p1

    iget-wide v8, v2, Lu6/y;->b:J

    or-long/2addr v3, v8

    iput-wide v3, v2, Lu6/y;->b:J

    invoke-virtual {v2, v1, v6, v7}, Lu6/y;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v0, Lu6/y;->a:Lu6/y;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lu6/z;->u:Lu6/y;

    iget v4, p0, Lu6/z;->v:I

    sget-object v5, Ls5/n;->y:Ls5/n;

    if-ge v4, v3, :cond_4

    iget-object v1, v0, Lu6/y;->c:[Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v5, p1

    if-lez v4, :cond_3

    shl-int/lit8 p1, v4, 0x2

    shl-long/2addr v5, p1

    :cond_3
    iget-wide v3, v0, Lu6/y;->b:J

    or-long/2addr v3, v5

    iput-wide v3, v0, Lu6/y;->b:J

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lu6/y;

    invoke-direct {v2}, Lu6/y;-><init>()V

    iput-object v2, v0, Lu6/y;->a:Lu6/y;

    iget-object v3, v2, Lu6/y;->c:[Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v3, p1

    iget-wide v5, v2, Lu6/y;->b:J

    or-long/2addr v3, v5

    iput-wide v3, v2, Lu6/y;->b:J

    iget-object v2, v0, Lu6/y;->a:Lu6/y;

    :goto_0
    const/4 p1, 0x1

    if-nez v2, :cond_5

    iget v0, p0, Lu6/z;->v:I

    add-int/2addr v0, p1

    iput v0, p0, Lu6/z;->v:I

    return-void

    :cond_5
    iput-object v2, p0, Lu6/z;->u:Lu6/y;

    iput p1, p0, Lu6/z;->v:I

    return-void
.end method

.method public final y0(Ljava/lang/StringBuilder;)V
    .locals 4

    iget-object v0, p0, Lu6/z;->u:Lu6/y;

    iget v1, p0, Lu6/z;->v:I

    add-int/lit8 v1, v1, -0x1

    iget-object v0, v0, Lu6/y;->d:Ljava/util/TreeMap;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const/16 v1, 0x5d

    if-eqz v0, :cond_1

    const-string v3, "[objectId="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lu6/z;->u:Lu6/y;

    iget p0, p0, Lu6/z;->v:I

    add-int/lit8 p0, p0, -0x1

    iget-object v0, v0, Lu6/y;->d:Ljava/util/TreeMap;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_3

    const-string p0, "[typeId="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    return-void
.end method

.method public final z0(Ls5/n;)V
    .locals 8

    iget-boolean v0, p0, Lu6/z;->y:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu6/z;->u:Lu6/y;

    iget v1, p0, Lu6/z;->v:I

    iget-object v2, p0, Lu6/z;->x:Ljava/lang/Object;

    iget-object v3, p0, Lu6/z;->w:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x10

    if-ge v1, v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v4, p1

    if-lez v1, :cond_0

    shl-int/lit8 p1, v1, 0x2

    shl-long/2addr v4, p1

    :cond_0
    iget-wide v6, v0, Lu6/y;->b:J

    or-long/2addr v4, v6

    iput-wide v4, v0, Lu6/y;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lu6/y;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Lu6/y;

    invoke-direct {v1}, Lu6/y;-><init>()V

    iput-object v1, v0, Lu6/y;->a:Lu6/y;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v4, p1

    iget-wide v6, v1, Lu6/y;->b:J

    or-long/2addr v4, v6

    iput-wide v4, v1, Lu6/y;->b:J

    const/4 p1, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lu6/y;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, v0, Lu6/y;->a:Lu6/y;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lu6/z;->u:Lu6/y;

    iget v1, p0, Lu6/z;->v:I

    invoke-virtual {v0, v1, p1}, Lu6/y;->a(ILs5/n;)Lu6/y;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_3

    iget p1, p0, Lu6/z;->v:I

    add-int/2addr p1, v0

    iput p1, p0, Lu6/z;->v:I

    return-void

    :cond_3
    iput-object p1, p0, Lu6/z;->u:Lu6/y;

    iput v0, p0, Lu6/z;->v:I

    return-void
.end method
