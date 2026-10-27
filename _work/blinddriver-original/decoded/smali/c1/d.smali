.class public final Lc1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/c;


# static fields
.field public static final p:Lg5/c;


# instance fields
.field public final l:Ljava/util/Map;

.field public final m:Lk/m0;

.field public n:Lc1/f;

.field public final o:Lb0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb0/u2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lb0/u2;-><init>(I)V

    new-instance v1, Lad/b2;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lad/b2;-><init>(I)V

    new-instance v2, Lg5/c;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0, v1}, Lg5/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Lc1/d;->p:Lg5/c;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/d;->l:Ljava/util/Map;

    sget-object p1, Lk/t0;->a:[J

    new-instance p1, Lk/m0;

    invoke-direct {p1}, Lk/m0;-><init>()V

    iput-object p1, p0, Lc1/d;->m:Lk/m0;

    new-instance p1, Lb0/a;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0}, Lb0/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lc1/d;->o:Lb0/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lz0/d;Lr0/q;I)V
    .locals 7

    const v0, 0x1fcd8740

    invoke-virtual {p3, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p4, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p3, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    and-int/lit8 v1, p4, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p3, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p4, 0x180

    if-nez v1, :cond_5

    invoke-virtual {p3, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, v0, 0x93

    const/16 v2, 0x92

    const/4 v3, 0x0

    if-eq v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    move v1, v3

    :goto_4
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p3, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p3, p1}, Lr0/q;->d0(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lr0/m;->a:Lr0/e;

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lc1/d;->o:Lb0/a;

    invoke-virtual {v1, p1}, Lb0/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Lc1/i;

    iget-object v5, p0, Lc1/d;->l:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    sget-object v6, Lc1/h;->a:Lr0/s2;

    new-instance v6, Lc1/g;

    invoke-direct {v6, v5, v1}, Lc1/g;-><init>(Ljava/util/Map;Li9/c;)V

    invoke-direct {v4, v6}, Lc1/i;-><init>(Lc1/g;)V

    invoke-virtual {p3, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v1, v4

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Type of the key "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported. On Android you can only use types which can be stored inside the Bundle."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_5
    check-cast v1, Lc1/i;

    sget-object v4, Lc1/h;->a:Lr0/s2;

    invoke-virtual {v4, v1}, Lr0/s2;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v4

    sget-object v5, Lo4/a;->a:Lr0/m1;

    invoke-virtual {v5, v1}, Lr0/m1;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v5

    filled-new-array {v4, v5}, [Lj6/g0;

    move-result-object v4

    and-int/lit8 v0, v0, 0x70

    const/16 v5, 0x8

    or-int/2addr v0, v5

    invoke-static {v4, p2, p3, v0}, Lr0/r;->b([Lj6/g0;Li9/e;Lr0/q;I)V

    invoke-virtual {p3, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p3, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {p3, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_9

    if-ne v4, v2, :cond_a

    :cond_9
    new-instance v4, Lb0/o;

    const/4 v0, 0x6

    invoke-direct {v4, p0, p1, v1, v0}, Lb0/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p3, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_a
    check-cast v4, Li9/c;

    sget-object v0, Lt8/z;->a:Lt8/z;

    invoke-static {v0, v4, p3}, Lr0/r;->c(Ljava/lang/Object;Li9/c;Lr0/q;)V

    iget-boolean v0, p3, Lr0/q;->y:Z

    if-eqz v0, :cond_b

    iget-object v0, p3, Lr0/q;->G:Lr0/d2;

    iget v0, v0, Lr0/d2;->i:I

    iget v1, p3, Lr0/q;->z:I

    if-ne v0, v1, :cond_b

    const/4 v0, -0x1

    iput v0, p3, Lr0/q;->z:I

    iput-boolean v3, p3, Lr0/q;->y:Z

    :cond_b
    invoke-virtual {p3, v3}, Lr0/q;->q(Z)V

    goto :goto_6

    :cond_c
    invoke-virtual {p3}, Lr0/q;->W()V

    :goto_6
    invoke-virtual {p3}, Lr0/q;->u()Lr0/n1;

    move-result-object p3

    if-eqz p3, :cond_d

    new-instance v0, Lb0/a3;

    const/4 v2, 0x2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v1, p4

    invoke-direct/range {v0 .. v5}, Lb0/a3;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p3, Lr0/n1;->d:Li9/e;

    :cond_d
    return-void
.end method
