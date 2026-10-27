.class public abstract Lg6/f1;
.super Lb6/n;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final n:I


# instance fields
.field public final l:Ljava/lang/Class;

.field public final m:Lb6/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lb6/j;->o:Lb6/j;

    iget v0, v0, Lb6/j;->m:I

    sget-object v1, Lb6/j;->p:Lb6/j;

    iget v1, v1, Lb6/j;->m:I

    or-int/2addr v0, v1

    sput v0, Lg6/f1;->n:I

    sget-object v0, Lb6/j;->F:Lb6/j;

    iget v0, v0, Lb6/j;->m:I

    sget-object v0, Lb6/j;->I:Lb6/j;

    iget v0, v0, Lb6/j;->m:I

    return-void
.end method

.method public constructor <init>(Lb6/l;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 2
    const-class v0, Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p1, Lb6/l;->o:Ljava/lang/Class;

    .line 4
    :goto_0
    iput-object v0, p0, Lg6/f1;->l:Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lg6/f1;->m:Lb6/l;

    return-void
.end method

.method public constructor <init>(Lg6/f1;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object v0, p1, Lg6/f1;->l:Ljava/lang/Class;

    iput-object v0, p0, Lg6/f1;->l:Ljava/lang/Class;

    .line 8
    iget-object p1, p1, Lg6/f1;->m:Lb6/l;

    iput-object p1, p0, Lg6/f1;->m:Lb6/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lg6/f1;->l:Ljava/lang/Class;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lg6/f1;->m:Lb6/l;

    return-void
.end method

.method public static G(Lb6/i;Ljava/lang/String;)I
    .locals 7

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x9

    if-le v3, v4, :cond_3

    iget-object v3, p0, Lb6/i;->t:Ls5/k;

    invoke-virtual {v3}, Ls5/k;->D0()Ls5/c;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ls5/c;->e(I)V

    invoke-static {p1}, Lw5/h;->m(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/32 v5, -0x80000000

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_2

    long-to-int p0, v3

    return p0

    :cond_2
    const-string v3, "Overflow: numeric value (%s) out of range of int (%d -%d)"

    const/high16 v4, -0x80000000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7fffffff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {p1, v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v0, p1, v3, v4}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_3
    invoke-static {p1}, Lw5/h;->k(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string v3, "not a valid `int` value"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v3, v2}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static R(Lb6/i;Lb6/f;Lb6/n;)Le6/r;
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lb6/f;->c()Lb6/h0;

    move-result-object v0

    iget-object v0, v0, Lb6/h0;->r:Lr5/b1;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb6/i;->q:Lb6/h;

    iget-object v0, v0, Ld6/n;->r:La6/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lr5/b1;->o:Lr5/b1;

    :goto_0
    sget-object v1, Lr5/b1;->l:Lr5/b1;

    if-ne v0, v1, :cond_1

    sget-object p0, Lf6/q;->n:Lf6/q;

    return-object p0

    :cond_1
    sget-object v1, Lr5/b1;->m:Lr5/b1;

    if-ne v0, v1, :cond_4

    if-nez p1, :cond_3

    invoke-virtual {p2}, Lb6/n;->handledType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb6/i;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object p0

    invoke-virtual {p0}, Lb6/l;->c0()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lb6/l;->Q()Lb6/l;

    move-result-object p0

    :cond_2
    new-instance p1, Lf6/q;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lf6/q;-><init>(Lb6/i0;Lb6/l;)V

    return-object p1

    :cond_3
    invoke-interface {p1}, Lb6/f;->getType()Lb6/l;

    move-result-object p0

    invoke-virtual {p0}, Lb6/l;->Q()Lb6/l;

    move-result-object p0

    new-instance p2, Lf6/q;

    invoke-interface {p1}, Lb6/f;->b()Lb6/i0;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lf6/q;-><init>(Lb6/i0;Lb6/l;)V

    return-object p2

    :cond_4
    invoke-static {p0, p1, v0, p2}, Lg6/f1;->t(Lb6/i;Lb6/f;Lr5/b1;Lb6/n;)Le6/r;

    move-result-object p0

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    return-object p2
.end method

.method public static S(Lb6/i;Lb6/f;Lb6/n;)Lb6/n;
    .locals 2

    iget-object v0, p0, Lb6/i;->q:Lb6/h;

    invoke-virtual {v0}, Ld6/m;->d()Lb6/d;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lb6/f;->d()Lj6/h;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lb6/d;->k(Lj6/h;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lb6/f;->d()Lj6/h;

    invoke-virtual {p0, v0}, Lb6/g;->n(Ljava/lang/Object;)Lu6/k;

    move-result-object v0

    invoke-virtual {p0}, Lb6/i;->u()Lt6/p;

    move-object v1, v0

    check-cast v1, Lf6/m;

    iget-object v1, v1, Lf6/m;->a:Lb6/l;

    if-nez p2, :cond_0

    invoke-virtual {p0, v1, p1}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object p2

    :cond_0
    new-instance p0, Lg6/e1;

    invoke-direct {p0, v0, v1, p2}, Lg6/e1;-><init>(Lu6/k;Lb6/l;Lb6/n;)V

    return-object p0

    :cond_1
    return-object p2
.end method

.method public static T(Lb6/i;Lb6/f;Ljava/lang/Class;)Lr5/q;
    .locals 0

    iget-object p0, p0, Lb6/i;->q:Lb6/h;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Lb6/f;->f(Ld6/m;Ljava/lang/Class;)Lr5/q;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Ld6/n;->h(Ljava/lang/Class;)Lr5/q;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lb6/i;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-static {p2}, Lu6/h;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, " value"

    invoke-static {p1, p2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "element of "

    invoke-static {p2, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    filled-new-array {p4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "Cannot coerce %s to %s (but could if coercion was enabled using `CoercionConfig`)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lb6/i;->t:Ls5/k;

    new-instance p2, Lh6/c;

    invoke-direct {p2, p0, p1, p3}, Lh6/c;-><init>(Ls5/k;Ljava/lang/String;Ljava/lang/Object;)V

    throw p2

    :cond_2
    return-void
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x49

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "NaN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lg6/f1;->y(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lg6/f1;->x(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x49

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "NaN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/high16 p0, 0x7fc00000    # Float.NaN

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lg6/f1;->y(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/high16 p0, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lg6/f1;->x(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/high16 p0, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Ls5/k;Lb6/i;Ljava/lang/Class;)I
    .locals 4

    sget-object v0, Lt6/f;->q:Lt6/f;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, p2, v1}, Lb6/i;->R(Lt6/f;Ljava/lang/Class;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ls5/k;->b0()Ljava/lang/Number;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Floating-point value ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p2, v1, p0}, Lg6/f1;->d(Lb6/i;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static k(Ls5/k;Lb6/i;Ljava/lang/Class;)I
    .locals 4

    sget-object v0, Lt6/f;->r:Lt6/f;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, p2, v1}, Lb6/i;->R(Lt6/f;Ljava/lang/Class;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ls5/k;->b0()Ljava/lang/Number;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Integer value ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p2, v1, p0}, Lg6/f1;->d(Lb6/i;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static m(Ls5/k;Lb6/i;Ljava/io/Serializable;I)I
    .locals 3

    sget-object v0, Lt6/f;->u:Lt6/f;

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p3}, Lb6/i;->R(Lt6/f;Ljava/lang/Class;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    packed-switch p3, :pswitch_data_0

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    const-string p3, "EmptyString"

    goto :goto_0

    :pswitch_1
    const-string p3, "EmptyObject"

    goto :goto_0

    :pswitch_2
    const-string p3, "EmptyArray"

    goto :goto_0

    :pswitch_3
    const-string p3, "Binary"

    goto :goto_0

    :pswitch_4
    const-string p3, "String"

    goto :goto_0

    :pswitch_5
    const-string p3, "Boolean"

    goto :goto_0

    :pswitch_6
    const-string p3, "Float"

    goto :goto_0

    :pswitch_7
    const-string p3, "Integer"

    goto :goto_0

    :pswitch_8
    const-string p3, "Object"

    goto :goto_0

    :pswitch_9
    const-string p3, "Array"

    :goto_0
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " value ("

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, v1, p2, p0}, Lg6/f1;->d(Lb6/i;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static n(Ls5/k;Lb6/i;Ljava/lang/Class;)Ljava/lang/Boolean;
    .locals 4

    sget-object v0, Lt6/f;->s:Lt6/f;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, p2, v1}, Lb6/i;->R(Lt6/f;Ljava/lang/Class;I)I

    move-result v0

    invoke-static {v0}, Landroidx/fragment/app/t1;->d(I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 p1, 0x2

    if-eq v2, p1, :cond_3

    if-eq v2, v1, :cond_2

    invoke-virtual {p0}, Ls5/k;->Z()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Ls5/k;->X()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p1, "0"

    invoke-virtual {p0}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ls5/k;->b0()Ljava/lang/Number;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Integer value ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p2, v1, p0}, Lg6/f1;->d(Lb6/i;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static o(Ls5/k;Lb6/i;)Ljava/lang/Number;
    .locals 1

    sget-object v0, Lb6/j;->o:Lb6/j;

    invoke-virtual {p1, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ls5/k;->C()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lb6/j;->p:Lb6/j;

    invoke-virtual {p1, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ls5/k;->Y()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ls5/k;->b0()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static t(Lb6/i;Lb6/f;Lr5/b1;Lb6/n;)Le6/r;
    .locals 2

    sget-object v0, Lr5/b1;->m:Lr5/b1;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    const-class p1, Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lb6/n;->handledType()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lb6/i;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object p0

    new-instance p1, Lf6/q;

    invoke-direct {p1, v1, p0}, Lf6/q;-><init>(Lb6/i0;Lb6/l;)V

    return-object p1

    :cond_1
    invoke-interface {p1}, Lb6/f;->getType()Lb6/l;

    move-result-object p0

    new-instance p2, Lf6/q;

    invoke-interface {p1}, Lb6/f;->b()Lb6/i0;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lf6/q;-><init>(Lb6/i0;Lb6/l;)V

    return-object p2

    :cond_2
    sget-object v0, Lr5/b1;->n:Lr5/b1;

    if-ne p2, v0, :cond_9

    if-nez p3, :cond_3

    goto :goto_3

    :cond_3
    instance-of p2, p3, Le6/f;

    if-eqz p2, :cond_5

    move-object p2, p3

    check-cast p2, Le6/f;

    iget-object v0, p2, Le6/f;->q:Le6/c0;

    invoke-virtual {v0}, Le6/c0;->k()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p1, :cond_4

    iget-object p1, p2, Le6/f;->o:Lb6/l;

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lb6/f;->getType()Lb6/l;

    move-result-object p1

    :goto_1
    const-string p2, "Cannot create empty instance of %s, no default Creator"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v1

    :cond_5
    invoke-virtual {p3}, Lb6/n;->getEmptyAccessPattern()Lu6/a;

    move-result-object p1

    sget-object p2, Lu6/a;->l:Lu6/a;

    if-ne p1, p2, :cond_6

    goto :goto_2

    :cond_6
    sget-object p2, Lu6/a;->m:Lu6/a;

    if-ne p1, p2, :cond_8

    invoke-virtual {p3, p0}, Lb6/n;->getEmptyValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_7

    :goto_2
    sget-object p0, Lf6/q;->o:Lf6/q;

    return-object p0

    :cond_7
    new-instance p1, Lf6/q;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lf6/q;-><init>(ILjava/lang/Object;)V

    return-object p1

    :cond_8
    new-instance p0, Lf6/q;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lf6/q;-><init>(ILjava/lang/Object;)V

    return-object p0

    :cond_9
    sget-object p0, Lr5/b1;->l:Lr5/b1;

    if-ne p2, p0, :cond_a

    sget-object p0, Lf6/q;->n:Lf6/q;

    return-object p0

    :cond_a
    :goto_3
    return-object v1
.end method

.method public static final u(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static v(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/16 v2, 0x46

    if-ne v1, v2, :cond_2

    const-string v1, "FALSE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "False"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static w(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    if-ne v0, v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_1
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x39

    if-gt v3, v5, :cond_5

    const/16 v5, 0x30

    if-ge v3, v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v4

    :cond_5
    :goto_2
    return v1
.end method

.method public static x(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "-Infinity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-INF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static y(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Infinity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "INF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static z(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x74

    if-ne v1, v2, :cond_0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/16 v2, 0x54

    if-ne v1, v2, :cond_2

    const-string v1, "TRUE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "True"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method


# virtual methods
.method public final A(Ls5/k;Lb6/i;Ljava/lang/Class;)Ljava/lang/Boolean;
    .locals 4

    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 p0, 0x7

    if-eq v0, p0, :cond_0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2, p3, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    throw v3

    :pswitch_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    invoke-static {p1, p2, p3}, Lg6/f1;->n(Ls5/k;Lb6/i;Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lg6/f1;->q(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :cond_3
    invoke-virtual {p2, p3, p1}, Lb6/i;->Q(Ljava/lang/Class;Ls5/k;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    sget-object v0, Lt6/f;->s:Lt6/f;

    invoke-virtual {p0, p2, p1, v0, p3}, Lg6/f1;->j(Lb6/i;Ljava/lang/String;Lt6/f;Ljava/lang/Class;)I

    move-result v0

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_6

    invoke-static {p1}, Lg6/f1;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_6
    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    invoke-static {p1}, Lg6/f1;->v(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_7
    invoke-virtual {p0, p2, p1}, Lg6/f1;->l(Lb6/i;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    :goto_1
    :pswitch_2
    return-object v3

    :cond_8
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "only \"true\" or \"false\" recognized"

    invoke-virtual {p2, p3, p1, v0, p0}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final B(Ls5/k;Lb6/i;)Z
    .locals 7

    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_5

    if-eq v0, v1, :cond_2

    const/4 v6, 0x6

    if-eq v0, v6, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p2}, Lg6/f1;->P(Lb6/i;)V

    return v4

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2, v3}, Lg6/f1;->n(Ls5/k;Lb6/i;Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    sget-object v0, Lb6/j;->F:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->w:Ls5/n;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lg6/f1;->B(Ls5/k;Lb6/i;)Z

    move-result v0

    invoke-virtual {p0, p1, p2}, Lg6/f1;->O(Ls5/k;Lb6/i;)V

    return v0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lg6/f1;->Y(Ls5/k;Lb6/i;)V

    throw v2

    :cond_4
    :goto_0
    invoke-virtual {p2, v3, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    throw v2

    :cond_5
    invoke-virtual {p2, v3, p1}, Lb6/i;->Q(Ljava/lang/Class;Ls5/k;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    sget-object v0, Lt6/f;->s:Lt6/f;

    invoke-virtual {p0, p2, p1, v0, v3}, Lg6/f1;->j(Lb6/i;Ljava/lang/String;Lt6/f;Ljava/lang/Class;)I

    move-result v0

    if-ne v0, v1, :cond_6

    invoke-virtual {p0, p2}, Lg6/f1;->P(Lb6/i;)V

    return v4

    :cond_6
    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_8

    invoke-static {p1}, Lg6/f1;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :pswitch_1
    return v5

    :cond_8
    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    invoke-static {p1}, Lg6/f1;->v(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_2
    :pswitch_2
    return v4

    :cond_9
    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p2, p1}, Lg6/f1;->Q(Lb6/i;Ljava/lang/String;)V

    return v4

    :cond_a
    const-string p0, "only \"true\"/\"True\"/\"TRUE\" or \"false\"/\"False\"/\"FALSE\" recognized"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p2, v3, p1, p0, v0}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final C(Ls5/k;Lb6/i;)B
    .locals 8

    iget-object v0, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    if-eq v1, v2, :cond_8

    if-eq v1, v5, :cond_5

    const/16 v2, 0xb

    if-eq v1, v2, :cond_4

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const/4 p0, 0x7

    if-eq v1, p0, :cond_2

    const/16 p0, 0x8

    if-ne v1, p0, :cond_7

    invoke-static {p1, p2, v6}, Lg6/f1;->h(Ls5/k;Lb6/i;Ljava/lang/Class;)I

    move-result p0

    if-ne p0, v5, :cond_0

    goto :goto_1

    :cond_0
    if-ne p0, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ls5/k;->P()B

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1}, Ls5/k;->P()B

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p2}, Lg6/f1;->P(Lb6/i;)V

    return v7

    :cond_5
    sget-object v0, Lb6/j;->F:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->w:Ls5/n;

    if-eq v0, v1, :cond_6

    invoke-virtual {p0, p1, p2}, Lg6/f1;->C(Ls5/k;Lb6/i;)B

    move-result v0

    invoke-virtual {p0, p1, p2}, Lg6/f1;->O(Ls5/k;Lb6/i;)V

    return v0

    :cond_6
    invoke-virtual {p0, p1, p2}, Lg6/f1;->Y(Ls5/k;Lb6/i;)V

    throw v3

    :cond_7
    invoke-virtual {p2, v6}, Lb6/i;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v3

    :cond_8
    invoke-virtual {p2, v6, p1}, Lb6/i;->Q(Ljava/lang/Class;Ls5/k;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    sget-object v2, Lt6/f;->q:Lt6/f;

    invoke-virtual {p0, p2, v1, v2, v6}, Lg6/f1;->j(Lb6/i;Ljava/lang/String;Lt6/f;Ljava/lang/Class;)I

    move-result v2

    if-ne v2, v5, :cond_9

    invoke-virtual {p0, p2}, Lg6/f1;->P(Lb6/i;)V

    return v7

    :cond_9
    if-ne v2, v4, :cond_a

    :goto_1
    return v7

    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0, p2, v1}, Lg6/f1;->Q(Lb6/i;Ljava/lang/String;)V

    return v7

    :cond_b
    invoke-virtual {p1}, Ls5/k;->D0()Ls5/c;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ls5/c;->e(I)V

    :try_start_0
    invoke-static {v1}, Lw5/h;->k(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, -0x80

    if-lt p0, p1, :cond_c

    const/16 p1, 0xff

    if-gt p0, p1, :cond_c

    int-to-byte p0, p0

    return p0

    :cond_c
    const-string p0, "overflow, value cannot be represented as 8-bit value"

    new-array p1, v7, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1, p0, p1}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :catch_0
    const-string p0, "not a valid `byte` value"

    new-array p1, v7, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1, p0, p1}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
.end method

.method public D(Ls5/k;Lb6/i;)Ljava/util/Date;
    .locals 10

    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v1, 0x3

    iget-object v2, p0, Lg6/f1;->l:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_9

    const/4 v5, 0x0

    if-eq v0, v1, :cond_3

    const/16 v4, 0xb

    if-eq v0, v4, :cond_2

    const/4 v4, 0x6

    if-eq v0, v4, :cond_1

    const/4 p0, 0x7

    if-ne v0, p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ls5/k;->Y()J

    move-result-wide p0
    :try_end_0
    .catch Ls5/i; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :catch_0
    invoke-virtual {p1}, Ls5/k;->b0()Ljava/lang/Number;

    move-result-object p0

    const-string p1, "not a valid 64-bit `long` for creating `java.util.Date`"

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p2, v2, p0, p1, v0}, Lb6/i;->j0(Ljava/lang/Class;Ljava/lang/Number;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_0
    invoke-virtual {p2, v2, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    throw v3

    :cond_1
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p1

    move-object v4, p2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lb6/n;->logicalType()Lt6/f;

    move-result-object v0

    invoke-virtual {p0}, Lg6/f1;->handledType()Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {p2, v0, v6, v7}, Lb6/i;->R(Lt6/f;Ljava/lang/Class;I)I

    move-result v0

    sget-object v6, Lb6/j;->F:Lb6/j;

    invoke-virtual {p2, v6}, Lb6/i;->n0(Lb6/j;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eq v0, v4, :cond_8

    :cond_4
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v7

    sget-object v8, Ls5/n;->x:Ls5/n;

    if-ne v7, v8, :cond_6

    invoke-static {v0}, Landroidx/fragment/app/t1;->d(I)I

    move-result v0

    if-eq v0, v4, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    if-ne v0, v1, :cond_8

    invoke-virtual {p0, p2}, Lb6/n;->getEmptyValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0

    :cond_5
    invoke-virtual {p0, p2}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0

    :cond_6
    if-eqz v6, :cond_8

    sget-object v0, Ls5/n;->w:Ls5/n;

    if-eq v7, v0, :cond_7

    invoke-virtual {p0, p1, p2}, Lg6/f1;->D(Ls5/k;Lb6/i;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lg6/f1;->O(Ls5/k;Lb6/i;)V

    return-object v0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lg6/f1;->Y(Ls5/k;Lb6/i;)V

    throw v3

    :cond_8
    sget-object v6, Ls5/n;->w:Ls5/n;

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {p2, v2}, Lb6/i;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object v5

    const/4 v8, 0x0

    move-object v7, p1

    move-object v4, p2

    invoke-virtual/range {v4 .. v9}, Lb6/i;->g0(Lb6/l;Ls5/n;Ls5/k;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_9
    move-object v7, p1

    move-object v4, p2

    invoke-virtual {v4, v2, v7}, Lb6/i;->Q(Ljava/lang/Class;Ls5/k;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p0, v4, p1}, Lg6/f1;->i(Lb6/i;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Landroidx/fragment/app/t1;->d(I)I

    move-result p0

    if-eq p0, v1, :cond_a

    goto :goto_1

    :cond_a
    new-instance p0, Ljava/util/Date;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_b
    const-string p0, "null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    :goto_1
    return-object v3

    :cond_c
    invoke-virtual {v4, p1}, Lb6/i;->r0(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :goto_2
    invoke-static {p0}, Lu6/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "not a valid representation (error: %s)"

    invoke-virtual {v4, v2, p1, p2, p0}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
.end method

.method public final E(Ls5/k;Lb6/i;)D
    .locals 8

    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-wide/16 v6, 0x0

    if-eq v0, v1, :cond_8

    if-eq v0, v4, :cond_5

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 p0, 0x7

    if-eq v0, p0, :cond_0

    const/16 p0, 0x8

    if-ne v0, p0, :cond_7

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v5}, Lg6/f1;->k(Ls5/k;Lb6/i;Ljava/lang/Class;)I

    move-result p0

    if-ne p0, v4, :cond_1

    goto :goto_2

    :cond_1
    if-ne p0, v3, :cond_2

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p1}, Ls5/k;->U()D

    move-result-wide p0

    return-wide p0

    :cond_3
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p2}, Lg6/f1;->P(Lb6/i;)V

    return-wide v6

    :cond_5
    sget-object v0, Lb6/j;->F:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->w:Ls5/n;

    if-eq v0, v1, :cond_6

    invoke-virtual {p0, p1, p2}, Lg6/f1;->E(Ls5/k;Lb6/i;)D

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lg6/f1;->O(Ls5/k;Lb6/i;)V

    return-wide v0

    :cond_6
    invoke-virtual {p0, p1, p2}, Lg6/f1;->Y(Ls5/k;Lb6/i;)V

    throw v2

    :cond_7
    invoke-virtual {p2, v5, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    throw v2

    :cond_8
    invoke-virtual {p2, v5, p1}, Lb6/i;->Q(Ljava/lang/Class;Ls5/k;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lg6/f1;->e(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    :cond_9
    sget-object v1, Lt6/f;->q:Lt6/f;

    invoke-virtual {p0, p2, v0, v1, v5}, Lg6/f1;->j(Lb6/i;Ljava/lang/String;Lt6/f;Ljava/lang/Class;)I

    move-result v1

    if-ne v1, v4, :cond_a

    invoke-virtual {p0, p2}, Lg6/f1;->P(Lb6/i;)V

    return-wide v6

    :cond_a
    if-ne v1, v3, :cond_b

    :goto_2
    return-wide v6

    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, p2, v0}, Lg6/f1;->Q(Lb6/i;Ljava/lang/String;)V

    return-wide v6

    :cond_c
    :try_start_0
    sget-object p0, Ls5/s;->o:Ls5/s;

    invoke-virtual {p1, p0}, Ls5/k;->s0(Ls5/s;)Z

    move-result p0

    invoke-static {v0, p0}, Lw5/h;->h(Ljava/lang/String;Z)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "not a valid `double` value (as String to convert)"

    invoke-virtual {p2, v5, v0, p1, p0}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public final F(Ls5/k;Lb6/i;)F
    .locals 7

    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    if-eq v0, v1, :cond_8

    if-eq v0, v4, :cond_5

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 p0, 0x7

    if-eq v0, p0, :cond_0

    const/16 p0, 0x8

    if-ne v0, p0, :cond_7

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v5}, Lg6/f1;->k(Ls5/k;Lb6/i;Ljava/lang/Class;)I

    move-result p0

    if-ne p0, v4, :cond_1

    goto :goto_2

    :cond_1
    if-ne p0, v3, :cond_2

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p1}, Ls5/k;->W()F

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p2}, Lg6/f1;->P(Lb6/i;)V

    return v6

    :cond_5
    sget-object v0, Lb6/j;->F:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->w:Ls5/n;

    if-eq v0, v1, :cond_6

    invoke-virtual {p0, p1, p2}, Lg6/f1;->F(Ls5/k;Lb6/i;)F

    move-result v0

    invoke-virtual {p0, p1, p2}, Lg6/f1;->O(Ls5/k;Lb6/i;)V

    return v0

    :cond_6
    invoke-virtual {p0, p1, p2}, Lg6/f1;->Y(Ls5/k;Lb6/i;)V

    throw v2

    :cond_7
    invoke-virtual {p2, v5, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    throw v2

    :cond_8
    invoke-virtual {p2, v5, p1}, Lb6/i;->Q(Ljava/lang/Class;Ls5/k;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lg6/f1;->f(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_9
    sget-object v1, Lt6/f;->q:Lt6/f;

    invoke-virtual {p0, p2, v0, v1, v5}, Lg6/f1;->j(Lb6/i;Ljava/lang/String;Lt6/f;Ljava/lang/Class;)I

    move-result v1

    if-ne v1, v4, :cond_a

    invoke-virtual {p0, p2}, Lg6/f1;->P(Lb6/i;)V

    return v6

    :cond_a
    if-ne v1, v3, :cond_b

    :goto_2
    return v6

    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, p2, v0}, Lg6/f1;->Q(Lb6/i;Ljava/lang/String;)V

    return v6

    :cond_c
    invoke-static {v0}, Lw5/h;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    iget-object p0, p2, Lb6/i;->t:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->D0()Ls5/c;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ls5/c;->d(I)V

    :try_start_0
    sget-object p0, Ls5/s;->o:Ls5/s;

    invoke-virtual {p1, p0}, Ls5/k;->s0(Ls5/s;)Z

    move-result p0

    invoke-static {v0, p0}, Lw5/h;->j(Ljava/lang/String;Z)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_d
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "not a valid `float` value"

    invoke-virtual {p2, v5, v0, p1, p0}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public final H(Ls5/k;Lb6/i;)I
    .locals 7

    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    if-eq v0, v1, :cond_8

    const/4 v1, 0x0

    if-eq v0, v3, :cond_5

    const/16 v6, 0xb

    if-eq v0, v6, :cond_4

    const/4 v6, 0x6

    if-eq v0, v6, :cond_3

    const/4 p0, 0x7

    if-eq v0, p0, :cond_2

    const/16 p0, 0x8

    if-ne v0, p0, :cond_7

    invoke-static {p1, p2, v4}, Lg6/f1;->h(Ls5/k;Lb6/i;Ljava/lang/Class;)I

    move-result p0

    if-ne p0, v3, :cond_0

    goto :goto_1

    :cond_0
    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ls5/k;->m0()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1}, Ls5/k;->X()I

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p2}, Lg6/f1;->P(Lb6/i;)V

    return v5

    :cond_5
    sget-object v0, Lb6/j;->F:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    sget-object v2, Ls5/n;->w:Ls5/n;

    if-eq v0, v2, :cond_6

    invoke-virtual {p0, p1, p2}, Lg6/f1;->H(Ls5/k;Lb6/i;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lg6/f1;->O(Ls5/k;Lb6/i;)V

    return v0

    :cond_6
    invoke-virtual {p0, p1, p2}, Lg6/f1;->Y(Ls5/k;Lb6/i;)V

    throw v1

    :cond_7
    invoke-virtual {p2, v4, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    throw v1

    :cond_8
    invoke-virtual {p2, v4, p1}, Lb6/i;->Q(Ljava/lang/Class;Ls5/k;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    sget-object v0, Lt6/f;->q:Lt6/f;

    invoke-virtual {p0, p2, p1, v0, v4}, Lg6/f1;->j(Lb6/i;Ljava/lang/String;Lt6/f;Ljava/lang/Class;)I

    move-result v0

    if-ne v0, v3, :cond_9

    invoke-virtual {p0, p2}, Lg6/f1;->P(Lb6/i;)V

    return v5

    :cond_9
    if-ne v0, v2, :cond_a

    :goto_1
    return v5

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p2, p1}, Lg6/f1;->Q(Lb6/i;Ljava/lang/String;)V

    return v5

    :cond_b
    invoke-static {p2, p1}, Lg6/f1;->G(Lb6/i;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final I(Ls5/k;Lb6/i;Ljava/lang/Class;)Ljava/lang/Integer;
    .locals 7

    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    const/16 v5, 0xb

    if-eq v0, v5, :cond_5

    const/4 v5, 0x6

    if-eq v0, v5, :cond_4

    const/4 v4, 0x7

    if-eq v0, v4, :cond_3

    const/16 v4, 0x8

    if-ne v0, v4, :cond_2

    invoke-static {p1, p2, p3}, Lg6/f1;->h(Ls5/k;Lb6/i;Ljava/lang/Class;)I

    move-result p3

    if-ne p3, v3, :cond_0

    invoke-virtual {p0, p2}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_0
    if-ne p3, v2, :cond_1

    invoke-virtual {p0, p2}, Lb6/n;->getEmptyValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ls5/k;->m0()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v1

    :cond_3
    invoke-virtual {p1}, Ls5/k;->X()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p2}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_6
    invoke-virtual {p0, p1, p2}, Lg6/f1;->q(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_7
    invoke-virtual {p2, p3, p1}, Lb6/i;->Q(Ljava/lang/Class;Ls5/k;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p2, p1}, Lg6/f1;->i(Lb6/i;Ljava/lang/String;)I

    move-result p3

    if-ne p3, v3, :cond_8

    invoke-virtual {p0, p2}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_8
    if-ne p3, v2, :cond_9

    invoke-virtual {p0, p2}, Lb6/n;->getEmptyValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lg6/f1;->l(Lb6/i;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-virtual {p0, p2}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_a
    const-class p0, Ljava/lang/Integer;

    const/4 p3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x9

    if-le v0, v2, :cond_e

    iget-object v0, p2, Lb6/i;->t:Ls5/k;

    invoke-virtual {v0}, Ls5/k;->D0()Ls5/c;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ls5/c;->e(I)V

    invoke-static {p1}, Lw5/h;->m(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v5, -0x80000000

    cmp-long v0, v2, v5

    if-ltz v0, :cond_c

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v2, v5

    if-lez v0, :cond_b

    goto :goto_1

    :cond_b
    move v4, p3

    :cond_c
    :goto_1
    if-nez v4, :cond_d

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_d
    const-string v0, "Overflow: numeric value (%s) out of range of `java.lang.Integer` (%d -%d)"

    const/high16 v2, -0x80000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, p0, p1, v0, v2}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_e
    invoke-static {p1}, Lw5/h;->k(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string v0, "not a valid `java.lang.Integer` value"

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1, v0, p3}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public final J(Ls5/k;Lb6/i;Ljava/lang/Class;)Ljava/lang/Long;
    .locals 5

    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v1, :cond_7

    if-eq v0, v4, :cond_6

    const/16 v1, 0xb

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    invoke-static {p1, p2, p3}, Lg6/f1;->h(Ls5/k;Lb6/i;Ljava/lang/Class;)I

    move-result p3

    if-ne p3, v4, :cond_0

    invoke-virtual {p0, p2}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0

    :cond_0
    if-ne p3, v3, :cond_1

    invoke-virtual {p0, p2}, Lb6/n;->getEmptyValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ls5/k;->n0()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v2

    :cond_3
    invoke-virtual {p1}, Ls5/k;->Y()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p2}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0

    :cond_6
    invoke-virtual {p0, p1, p2}, Lg6/f1;->q(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0

    :cond_7
    invoke-virtual {p2, p3, p1}, Lb6/i;->Q(Ljava/lang/Class;Ls5/k;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p2, p1}, Lg6/f1;->i(Lb6/i;Ljava/lang/String;)I

    move-result p3

    if-ne p3, v4, :cond_8

    invoke-virtual {p0, p2}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0

    :cond_8
    if-ne p3, v3, :cond_9

    invoke-virtual {p0, p2}, Lb6/n;->getEmptyValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0

    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lg6/f1;->l(Lb6/i;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-virtual {p0, p2}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0

    :cond_a
    iget-object p0, p2, Lb6/i;->t:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->D0()Ls5/c;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Ls5/c;->e(I)V

    :try_start_0
    invoke-static {p1}, Lw5/h;->m(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-class p3, Ljava/lang/Long;

    const-string v0, "not a valid `java.lang.Long` value"

    invoke-virtual {p2, p3, p1, v0, p0}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public final K(Ls5/k;Lb6/i;)J
    .locals 8

    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-wide/16 v6, 0x0

    if-eq v0, v1, :cond_8

    if-eq v0, v4, :cond_5

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 p0, 0x7

    if-eq v0, p0, :cond_2

    const/16 p0, 0x8

    if-ne v0, p0, :cond_7

    invoke-static {p1, p2, v5}, Lg6/f1;->h(Ls5/k;Lb6/i;Ljava/lang/Class;)I

    move-result p0

    if-ne p0, v4, :cond_0

    goto :goto_1

    :cond_0
    if-ne p0, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ls5/k;->n0()J

    move-result-wide p0

    return-wide p0

    :cond_2
    invoke-virtual {p1}, Ls5/k;->Y()J

    move-result-wide p0

    return-wide p0

    :cond_3
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p2}, Lg6/f1;->P(Lb6/i;)V

    return-wide v6

    :cond_5
    sget-object v0, Lb6/j;->F:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->w:Ls5/n;

    if-eq v0, v1, :cond_6

    invoke-virtual {p0, p1, p2}, Lg6/f1;->K(Ls5/k;Lb6/i;)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lg6/f1;->O(Ls5/k;Lb6/i;)V

    return-wide v0

    :cond_6
    invoke-virtual {p0, p1, p2}, Lg6/f1;->Y(Ls5/k;Lb6/i;)V

    throw v2

    :cond_7
    invoke-virtual {p2, v5, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    throw v2

    :cond_8
    invoke-virtual {p2, v5, p1}, Lb6/i;->Q(Ljava/lang/Class;Ls5/k;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    sget-object v0, Lt6/f;->q:Lt6/f;

    invoke-virtual {p0, p2, p1, v0, v5}, Lg6/f1;->j(Lb6/i;Ljava/lang/String;Lt6/f;Ljava/lang/Class;)I

    move-result v0

    if-ne v0, v4, :cond_9

    invoke-virtual {p0, p2}, Lg6/f1;->P(Lb6/i;)V

    return-wide v6

    :cond_9
    if-ne v0, v3, :cond_a

    :goto_1
    return-wide v6

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p2, p1}, Lg6/f1;->Q(Lb6/i;Ljava/lang/String;)V

    return-wide v6

    :cond_b
    iget-object p0, p2, Lb6/i;->t:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->D0()Ls5/c;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ls5/c;->e(I)V

    :try_start_0
    invoke-static {p1}, Lw5/h;->m(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "not a valid `long` value"

    invoke-virtual {p2, v5, p1, v0, p0}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public final L(Ls5/k;Lb6/i;)S
    .locals 7

    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    if-eq v0, v1, :cond_8

    if-eq v0, v4, :cond_5

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 p0, 0x7

    if-eq v0, p0, :cond_2

    const/16 p0, 0x8

    if-ne v0, p0, :cond_7

    invoke-static {p1, p2, v5}, Lg6/f1;->h(Ls5/k;Lb6/i;Ljava/lang/Class;)I

    move-result p0

    if-ne p0, v4, :cond_0

    goto :goto_1

    :cond_0
    if-ne p0, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ls5/k;->g0()S

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1}, Ls5/k;->g0()S

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p2}, Lg6/f1;->P(Lb6/i;)V

    return v6

    :cond_5
    sget-object v0, Lb6/j;->F:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->w:Ls5/n;

    if-eq v0, v1, :cond_6

    invoke-virtual {p0, p1, p2}, Lg6/f1;->L(Ls5/k;Lb6/i;)S

    move-result v0

    invoke-virtual {p0, p1, p2}, Lg6/f1;->O(Ls5/k;Lb6/i;)V

    return v0

    :cond_6
    invoke-virtual {p0, p1, p2}, Lg6/f1;->Y(Ls5/k;Lb6/i;)V

    throw v2

    :cond_7
    invoke-virtual {p2, v5}, Lb6/i;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v2

    :cond_8
    invoke-virtual {p2, v5, p1}, Lb6/i;->Q(Ljava/lang/Class;Ls5/k;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lt6/f;->q:Lt6/f;

    invoke-virtual {p0, p2, v0, v1, v5}, Lg6/f1;->j(Lb6/i;Ljava/lang/String;Lt6/f;Ljava/lang/Class;)I

    move-result v1

    if-ne v1, v4, :cond_9

    invoke-virtual {p0, p2}, Lg6/f1;->P(Lb6/i;)V

    return v6

    :cond_9
    if-ne v1, v3, :cond_a

    :goto_1
    return v6

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0, p2, v0}, Lg6/f1;->Q(Lb6/i;Ljava/lang/String;)V

    return v6

    :cond_b
    invoke-virtual {p1}, Ls5/k;->D0()Ls5/c;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ls5/c;->e(I)V

    :try_start_0
    invoke-static {v0}, Lw5/h;->k(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, -0x8000

    if-lt p0, p1, :cond_c

    const/16 p1, 0x7fff

    if-gt p0, p1, :cond_c

    int-to-short p0, p0

    return p0

    :cond_c
    const-string p0, "overflow, value cannot be represented as 16-bit value"

    new-array p1, v6, [Ljava/lang/Object;

    invoke-virtual {p2, v5, v0, p0, p1}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :catch_0
    const-string p0, "not a valid `short` value"

    new-array p1, v6, [Ljava/lang/Object;

    invoke-virtual {p2, v5, v0, p0, p1}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public final M(Ls5/k;Lb6/i;Le6/r;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ls5/k;->w()I

    move-result p0

    const/4 v0, 0x1

    const-class v1, Ljava/lang/String;

    if-eq p0, v0, :cond_6

    const/16 v0, 0xc

    const/4 v2, 0x0

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    const/4 v3, 0x4

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x2

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Ls5/k;->K()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v4, 0x5

    invoke-static {p1, p2, p0, v4}, Lg6/f1;->m(Ls5/k;Lb6/i;Ljava/io/Serializable;I)I

    move-result p0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Ls5/k;->b0()Ljava/lang/Number;

    move-result-object p0

    invoke-static {p1, p2, p0, v3}, Lg6/f1;->m(Ls5/k;Lb6/i;Ljava/io/Serializable;I)I

    move-result p0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Ls5/k;->b0()Ljava/lang/Number;

    move-result-object p0

    invoke-static {p1, p2, p0, v0}, Lg6/f1;->m(Ls5/k;Lb6/i;Ljava/io/Serializable;I)I

    move-result p0

    :goto_0
    if-ne p0, v0, :cond_0

    invoke-interface {p3, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    if-ne p0, v3, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object p0

    iget-boolean p0, p0, Ls5/n;->s:Z

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ls5/k;->o0()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p2, v1, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    throw v2

    :pswitch_3
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Ls5/k;->V()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, [B

    if-eqz p1, :cond_4

    iget-object p1, p2, Lb6/i;->q:Lb6/h;

    iget-object p1, p1, Ld6/m;->m:Ld6/a;

    iget-object p1, p1, Ld6/a;->s:Ls5/a;

    check-cast p0, [B

    invoke-virtual {p1, p0}, Ls5/a;->e([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-nez p0, :cond_5

    return-object v2

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p2, v1, p1}, Lb6/i;->Q(Ljava/lang/Class;Ls5/k;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final N(Lb6/i;ZLjava/lang/Enum;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string p2, "enable"

    goto :goto_0

    :cond_0
    const-string p2, "disable"

    :goto_0
    invoke-virtual {p0}, Lg6/f1;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p4, v0, p2, v1, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Cannot coerce %s to Null value as %s (%s `%s.%s` to allow)"

    invoke-virtual {p1, p0, p3, p2}, Lb6/i;->v0(Lb6/n;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final O(Ls5/k;Lb6/i;)V
    .locals 1

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object p1

    sget-object v0, Ls5/n;->x:Ls5/n;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lg6/f1;->X(Lb6/i;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final P(Lb6/i;)V
    .locals 2

    sget-object v0, Lb6/j;->s:Lb6/j;

    invoke-virtual {p1, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lg6/f1;->p()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Cannot coerce `null` to %s (disable `DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES` to allow)"

    invoke-virtual {p1, p0, v1, v0}, Lb6/i;->v0(Lb6/n;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final Q(Lb6/i;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lb6/x;->S:Lb6/x;

    iget-object v1, p1, Lb6/i;->q:Lb6/h;

    invoke-virtual {v1, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lb6/j;->s:Lb6/j;

    invoke-virtual {p1, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p2, "empty String (\"\")"

    goto :goto_1

    :cond_1
    const-string v2, "String \""

    const-string v3, "\""

    invoke-static {v2, p2, v3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p0, p1, v1, v0, p2}, Lg6/f1;->N(Lb6/i;ZLjava/lang/Enum;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-void
.end method

.method public U()Le6/c0;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public V()Lb6/l;
    .locals 0

    iget-object p0, p0, Lg6/f1;->m:Lb6/l;

    return-object p0
.end method

.method public final W(Lb6/i;)Lb6/l;
    .locals 1

    iget-object v0, p0, Lg6/f1;->m:Lb6/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-virtual {p1, p0}, Lb6/i;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object p0

    return-object p0
.end method

.method public final X(Lb6/i;)V
    .locals 3

    sget-object v0, Ls5/n;->x:Ls5/n;

    invoke-virtual {p0}, Lg6/f1;->handledType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Attempted to unwrap \'%s\' value from an array (with `DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS`) but it contains more than one value"

    invoke-virtual {p1, p0, v0, v2, v1}, Lb6/i;->A0(Lb6/n;Ls5/n;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final Y(Ls5/k;Lb6/i;)V
    .locals 9

    iget-object v0, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-static {v0}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ls5/n;->w:Ls5/n;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot deserialize instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " out of "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " token: nested Arrays not allowed with DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object v4

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v5

    const/4 p0, 0x0

    new-array v8, p0, [Ljava/lang/Object;

    move-object v6, p1

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lb6/i;->g0(Lb6/l;Ls5/n;Ls5/k;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p3, p1, p2}, Ln6/d;->b(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public handledType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lg6/f1;->l:Ljava/lang/Class;

    return-object p0
.end method

.method public final i(Lb6/i;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lb6/n;->logicalType()Lt6/f;

    move-result-object v0

    invoke-virtual {p0}, Lg6/f1;->handledType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lg6/f1;->j(Lb6/i;Ljava/lang/String;Lt6/f;Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public final j(Lb6/i;Ljava/lang/String;Lt6/f;Ljava/lang/Class;)I
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0xa

    invoke-virtual {p1, p3, p4, p0}, Lb6/i;->R(Lt6/f;Ljava/lang/Class;I)I

    move-result p0

    const-string p3, "empty String (\"\")"

    invoke-static {p1, p0, p4, p2, p3}, Lg6/f1;->d(Lb6/i;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    return p0

    :cond_0
    invoke-static {p2}, Lg6/f1;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p3, p4}, Lb6/i;->S(Lt6/f;Ljava/lang/Class;)I

    move-result p0

    const-string p3, "blank String (all whitespace)"

    invoke-static {p1, p0, p4, p2, p3}, Lg6/f1;->d(Lb6/i;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    return p0

    :cond_1
    sget-object v0, Ls5/r;->n:Ls5/r;

    invoke-virtual {p1, v0}, Lb6/i;->o0(Ls5/r;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 v0, 0x6

    invoke-virtual {p1, p3, p4, v0}, Lb6/i;->R(Lt6/f;Ljava/lang/Class;I)I

    move-result p3

    const/4 p4, 0x1

    if-eq p3, p4, :cond_3

    return p3

    :cond_3
    invoke-virtual {p0}, Lg6/f1;->p()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Cannot coerce String value (\"%s\") to %s (but might if coercion using `CoercionConfig` was enabled)"

    invoke-virtual {p1, p0, p3, p2}, Lb6/i;->v0(Lb6/n;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final l(Lb6/i;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "null"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lb6/x;->S:Lb6/x;

    iget-object v0, p1, Lb6/i;->q:Lb6/h;

    invoke-virtual {v0, p2}, Ld6/m;->m(Lb6/x;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "String \"null\""

    invoke-virtual {p0, p1, v1, p2, v0}, Lg6/f1;->N(Lb6/i;ZLjava/lang/Enum;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final p()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lg6/f1;->V()Lb6/l;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lb6/l;->c0()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lb6/g;->y()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    invoke-static {v0}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lg6/f1;->handledType()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    invoke-static {p0}, Lu6/h;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    if-eqz v1, :cond_6

    const-string v0, "element of "

    invoke-static {v0, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string v0, " value"

    invoke-static {p0, v0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public q(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 12

    invoke-virtual {p0}, Lb6/n;->logicalType()Lt6/f;

    move-result-object v0

    invoke-virtual {p0}, Lg6/f1;->handledType()Ljava/lang/Class;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {p2, v0, v1, v2}, Lb6/i;->R(Lt6/f;Ljava/lang/Class;I)I

    move-result v0

    sget-object v1, Lb6/j;->F:Lb6/j;

    invoke-virtual {p2, v1}, Lb6/i;->n0(Lb6/j;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-eq v0, v2, :cond_6

    :cond_0
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v4

    sget-object v5, Ls5/n;->x:Ls5/n;

    if-ne v4, v5, :cond_2

    invoke-static {v0}, Landroidx/fragment/app/t1;->d(I)I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    invoke-virtual {p0, p2}, Lb6/n;->getEmptyValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p2}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v1, :cond_6

    sget-object v0, Ls5/n;->w:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Ls5/n;->F:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object p1

    if-ne p1, v5, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0, p2}, Lg6/f1;->X(Lb6/i;)V

    throw v3

    :cond_5
    invoke-virtual {p0, p1, p2}, Lg6/f1;->Y(Ls5/k;Lb6/i;)V

    throw v3

    :cond_6
    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object v7

    sget-object v8, Ls5/n;->w:Ls5/n;

    const/4 p0, 0x0

    new-array v11, p0, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object v9, p1

    move-object v6, p2

    invoke-virtual/range {v6 .. v11}, Lb6/i;->g0(Lb6/l;Ls5/n;Ls5/k;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
.end method

.method public final r(Lb6/i;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-static {p2}, Landroidx/fragment/app/t1;->d(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lb6/n;->getEmptyValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    const-string v0, "empty String (\"\")"

    invoke-static {p1, p2, p3, p0, v0}, Lg6/f1;->d(Lb6/i;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final s(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0}, Lg6/f1;->U()Le6/c0;

    move-result-object v0

    invoke-virtual {p0}, Lg6/f1;->handledType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ls5/k;->o0()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le6/c0;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p2, p1}, Le6/c0;->u(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lb6/n;->logicalType()Lt6/f;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p2, p1, v1, v0}, Lb6/i;->R(Lt6/f;Ljava/lang/Class;I)I

    move-result p1

    invoke-virtual {p0, p2, p1, v1}, Lg6/f1;->r(Lb6/i;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Lg6/f1;->u(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lb6/n;->logicalType()Lt6/f;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Lb6/i;->S(Lt6/f;Ljava/lang/Class;)I

    move-result p1

    invoke-virtual {p0, p2, p1, v1}, Lg6/f1;->r(Lb6/i;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Le6/c0;->e()Z

    move-result v2

    sget-object v3, Lt6/f;->q:Lt6/f;

    const/4 v4, 0x2

    const/4 v5, 0x6

    if-eqz v2, :cond_3

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p2, v3, v2, v5}, Lb6/i;->R(Lt6/f;Ljava/lang/Class;I)I

    move-result v2

    if-ne v2, v4, :cond_3

    invoke-static {p2, p1}, Lg6/f1;->G(Lb6/i;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p2, p0}, Le6/c0;->r(Lb6/i;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v0}, Le6/c0;->f()Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    const-class v2, Ljava/lang/Long;

    invoke-virtual {p2, v3, v2, v5}, Lb6/i;->R(Lt6/f;Ljava/lang/Class;I)I

    move-result v2

    if-ne v2, v4, :cond_4

    iget-object v1, p2, Lb6/i;->t:Ls5/k;

    invoke-virtual {v1}, Ls5/k;->D0()Ls5/c;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ls5/c;->e(I)V

    :try_start_0
    invoke-static {p1}, Lw5/h;->m(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p2, p0, p1}, Le6/c0;->s(Lb6/i;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    const-string v0, "not a valid `long` value"

    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v2, p1, v0, v1}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_4
    invoke-virtual {v0}, Le6/c0;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lt6/f;->s:Lt6/f;

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {p2, v2, v3, v5}, Lb6/i;->R(Lt6/f;Ljava/lang/Class;I)I

    move-result v2

    if-ne v2, v4, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 p0, 0x1

    invoke-virtual {v0, p2, p0}, Le6/c0;->p(Lb6/i;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v3, "false"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, p2, v6}, Le6/c0;->p(Lb6/i;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object v2, p2, Lb6/i;->t:Ls5/k;

    const-string v2, "no String-argument constructor/factory method to deserialize from String value (\'%s\')"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v1, v0, v2, p1}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw p0
.end method
