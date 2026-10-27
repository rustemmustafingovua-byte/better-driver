.class public final Lg6/x1;
.super Lg6/f1;
.source "SourceFile"


# static fields
.field public static final p:[Ljava/lang/Object;

.field public static final q:Lg6/x1;


# instance fields
.field public final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lg6/x1;->p:[Ljava/lang/Object;

    new-instance v1, Lg6/x1;

    invoke-direct {v1, v0}, Lg6/x1;-><init>(Z)V

    sput-object v1, Lg6/x1;->q:Lg6/x1;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    iput-boolean p1, p0, Lg6/x1;->o:Z

    return-void
.end method


# virtual methods
.method public final Z(Ls5/k;Lb6/i;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v0

    :pswitch_0
    invoke-virtual {p1}, Ls5/k;->V()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    return-object v0

    :pswitch_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lg6/x1;->a0(Ls5/k;Lb6/i;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object p0, Lb6/j;->o:Lb6/j;

    invoke-virtual {p2, p0}, Lb6/i;->n0(Lb6/j;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ls5/k;->C()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ls5/k;->b0()Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0

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

.method public final a0(Ls5/k;Lb6/i;)Ljava/lang/Number;
    .locals 1

    invoke-virtual {p1}, Ls5/k;->a0()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Ls5/k;->T()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ls5/k;->w0()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lb6/j;->n:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ls5/k;->T()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p2, 0x2

    if-ne p0, p2, :cond_2

    invoke-virtual {p1}, Ls5/k;->W()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Ls5/k;->U()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public final b0(Ls5/k;Lb6/i;Lg6/w1;)Ljava/lang/Object;
    .locals 8

    sget v0, Lg6/f1;->n:I

    invoke-virtual {p2, v0}, Lb6/i;->l0(I)Z

    move-result v0

    sget-object v1, Lb6/j;->q:Lb6/j;

    invoke-virtual {p2, v1}, Lb6/i;->n0(Lb6/j;)Z

    move-result v1

    move-object v2, p3

    :goto_0
    iget-boolean v3, v2, Lg6/w1;->b:Z

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_6

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v6

    if-nez v6, :cond_0

    sget-object v6, Ls5/n;->t:Ls5/n;

    :cond_0
    iget v6, v6, Ls5/n;->o:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    packed-switch v6, :pswitch_data_0

    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v5

    :pswitch_0
    invoke-virtual {p1}, Ls5/k;->V()Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    :pswitch_1
    move-object v6, v5

    goto :goto_2

    :pswitch_2
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :pswitch_3
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lg6/x1;->a0(Ls5/k;Lb6/i;)Ljava/lang/Number;

    move-result-object v6

    goto :goto_2

    :pswitch_5
    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lg6/f1;->o(Ls5/k;Lb6/i;)Ljava/lang/Number;

    move-result-object v6

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ls5/k;->b0()Ljava/lang/Number;

    move-result-object v6

    goto :goto_2

    :pswitch_6
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v6

    :goto_2
    iget-boolean v7, v2, Lg6/w1;->c:Z

    if-eqz v7, :cond_2

    invoke-virtual {v2, v6, v3}, Lg6/w1;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    iget-object v7, v2, Lg6/w1;->e:Ljava/util/LinkedHashMap;

    if-nez v7, :cond_3

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v2, Lg6/w1;->e:Ljava/util/LinkedHashMap;

    :cond_3
    iget-object v7, v2, Lg6/w1;->e:Ljava/util/LinkedHashMap;

    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    iput-object v3, v2, Lg6/w1;->d:Ljava/lang/String;

    new-instance v3, Lg6/w1;

    invoke-direct {v3, v2}, Lg6/w1;-><init>(Lg6/w1;)V

    :goto_3
    move-object v2, v3

    goto :goto_0

    :cond_5
    iput-object v3, v2, Lg6/w1;->d:Ljava/lang/String;

    new-instance v3, Lg6/w1;

    iget-boolean v6, v2, Lg6/w1;->c:Z

    invoke-direct {v3, v2, v6}, Lg6/w1;-><init>(Lg6/w1;Z)V

    move-object v2, v3

    :goto_4
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_6
    if-ne v2, p3, :cond_8

    iget-object p0, v2, Lg6/w1;->e:Ljava/util/LinkedHashMap;

    if-nez p0, :cond_7

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    :cond_7
    return-object p0

    :cond_8
    iget-object v3, v2, Lg6/w1;->a:Lg6/w1;

    iget-object v4, v2, Lg6/w1;->e:Ljava/util/LinkedHashMap;

    if-nez v4, :cond_9

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_5

    :cond_9
    iput-object v5, v2, Lg6/w1;->e:Ljava/util/LinkedHashMap;

    :goto_5
    iget-boolean v2, v3, Lg6/w1;->b:Z

    if-eqz v2, :cond_a

    invoke-virtual {v3, v4}, Lg6/w1;->c(Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v3, v4}, Lg6/w1;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_b
    :goto_6
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v3

    if-nez v3, :cond_c

    sget-object v3, Ls5/n;->t:Ls5/n;

    :cond_c
    iget v3, v3, Ls5/n;->o:I

    packed-switch v3, :pswitch_data_1

    :pswitch_7
    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v5

    :pswitch_8
    invoke-virtual {p1}, Ls5/k;->V()Ljava/lang/Object;

    move-result-object v3

    goto :goto_7

    :pswitch_9
    move-object v3, v5

    goto :goto_7

    :pswitch_a
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    :pswitch_b
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :pswitch_c
    invoke-virtual {p0, p1, p2}, Lg6/x1;->a0(Ls5/k;Lb6/i;)Ljava/lang/Number;

    move-result-object v3

    goto :goto_7

    :pswitch_d
    if-eqz v0, :cond_d

    invoke-static {p1, p2}, Lg6/f1;->o(Ls5/k;Lb6/i;)Ljava/lang/Number;

    move-result-object v3

    goto :goto_7

    :cond_d
    invoke-virtual {p1}, Ls5/k;->b0()Ljava/lang/Number;

    move-result-object v3

    goto :goto_7

    :pswitch_e
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v3

    :goto_7
    invoke-virtual {v2, v3}, Lg6/w1;->b(Ljava/lang/Object;)V

    goto :goto_6

    :pswitch_f
    sget-object v3, Lg6/x1;->p:[Ljava/lang/Object;

    if-ne v2, p3, :cond_11

    iget-object p0, v2, Lg6/w1;->f:Ljava/util/ArrayList;

    if-nez p0, :cond_f

    if-eqz v1, :cond_e

    return-object v3

    :cond_e
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    :cond_f
    if-eqz v1, :cond_10

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    :cond_10
    return-object p0

    :cond_11
    iget-object v6, v2, Lg6/w1;->a:Lg6/w1;

    iget-object v7, v2, Lg6/w1;->f:Ljava/util/ArrayList;

    if-nez v7, :cond_13

    if-eqz v1, :cond_12

    goto :goto_9

    :cond_12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_9

    :cond_13
    if-eqz v1, :cond_14

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    goto :goto_8

    :cond_14
    move-object v3, v7

    :goto_8
    iput-object v5, v2, Lg6/w1;->f:Ljava/util/ArrayList;

    :goto_9
    iget-boolean v2, v6, Lg6/w1;->b:Z

    if-eqz v2, :cond_15

    invoke-virtual {v6, v3}, Lg6/w1;->c(Ljava/lang/Object;)V

    goto :goto_a

    :cond_15
    invoke-virtual {v6, v3}, Lg6/w1;->b(Ljava/lang/Object;)V

    :goto_a
    move-object v2, v6

    goto/16 :goto_0

    :pswitch_10
    new-instance v3, Lg6/w1;

    invoke-direct {v3, v2}, Lg6/w1;-><init>(Lg6/w1;)V

    goto/16 :goto_3

    :pswitch_11
    new-instance v3, Lg6/w1;

    iget-boolean v4, v2, Lg6/w1;->c:Z

    invoke-direct {v3, v2, v4}, Lg6/w1;-><init>(Lg6/w1;Z)V

    goto/16 :goto_3

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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_7
        :pswitch_10
        :pswitch_f
        :pswitch_7
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    :pswitch_0
    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v2

    .line 3
    :pswitch_1
    invoke-virtual {p1}, Ls5/k;->V()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    return-object v2

    .line 4
    :pswitch_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 6
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lg6/x1;->a0(Ls5/k;Lb6/i;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_6
    sget p0, Lg6/f1;->n:I

    invoke-virtual {p2, p0}, Lb6/i;->l0(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 8
    invoke-static {p1, p2}, Lg6/f1;->o(Ls5/k;Lb6/i;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p1}, Ls5/k;->b0()Ljava/lang/Number;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_7
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_8
    sget-object v0, Ls5/r;->m:Ls5/r;

    invoke-virtual {p2, v0}, Lb6/i;->o0(Ls5/r;)Z

    move-result v0

    .line 12
    new-instance v3, Lg6/w1;

    invoke-direct {v3, v2, v0}, Lg6/w1;-><init>(Lg6/w1;Z)V

    .line 13
    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_8

    .line 14
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v2

    if-nez v2, :cond_1

    .line 15
    sget-object v2, Ls5/n;->t:Ls5/n;

    .line 16
    :cond_1
    iget v2, v2, Ls5/n;->o:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    if-eq v2, v1, :cond_3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    .line 17
    invoke-virtual {p0, p1, p2, v2}, Lg6/x1;->Z(Ls5/k;Lb6/i;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 18
    :cond_2
    new-instance v2, Lg6/w1;

    invoke-direct {v2, v3}, Lg6/w1;-><init>(Lg6/w1;)V

    .line 19
    invoke-virtual {p0, p1, p2, v2}, Lg6/x1;->b0(Ls5/k;Lb6/i;Lg6/w1;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 20
    :cond_3
    iget-object p0, v3, Lg6/w1;->e:Ljava/util/LinkedHashMap;

    if-nez p0, :cond_4

    .line 21
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    :cond_4
    return-object p0

    .line 22
    :cond_5
    new-instance v2, Lg6/w1;

    iget-boolean v4, v3, Lg6/w1;->c:Z

    invoke-direct {v2, v3, v4}, Lg6/w1;-><init>(Lg6/w1;Z)V

    .line 23
    invoke-virtual {p0, p1, p2, v2}, Lg6/x1;->b0(Ls5/k;Lb6/i;Lg6/w1;)Ljava/lang/Object;

    move-result-object v2

    .line 24
    :goto_1
    iget-boolean v4, v3, Lg6/w1;->c:Z

    if-eqz v4, :cond_6

    .line 25
    invoke-virtual {v3, v2, v0}, Lg6/w1;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 26
    :cond_6
    iget-object v4, v3, Lg6/w1;->e:Ljava/util/LinkedHashMap;

    if-nez v4, :cond_7

    .line 27
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v3, Lg6/w1;->e:Ljava/util/LinkedHashMap;

    .line 28
    :cond_7
    iget-object v4, v3, Lg6/w1;->e:Ljava/util/LinkedHashMap;

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :goto_2
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 30
    :cond_8
    iget-object p0, v3, Lg6/w1;->e:Ljava/util/LinkedHashMap;

    if-nez p0, :cond_9

    .line 31
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    :cond_9
    return-object p0

    .line 32
    :pswitch_9
    new-instance v0, Lg6/w1;

    invoke-direct {v0, v2}, Lg6/w1;-><init>(Lg6/w1;)V

    .line 33
    invoke-virtual {p0, p1, p2, v0}, Lg6/x1;->b0(Ls5/k;Lb6/i;Lg6/w1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 34
    :pswitch_a
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-object p0

    .line 35
    :pswitch_b
    sget-object v0, Ls5/r;->m:Ls5/r;

    .line 36
    invoke-virtual {p2, v0}, Lb6/i;->o0(Ls5/r;)Z

    move-result v0

    .line 37
    new-instance v1, Lg6/w1;

    invoke-direct {v1, v2, v0}, Lg6/w1;-><init>(Lg6/w1;Z)V

    .line 38
    invoke-virtual {p0, p1, p2, v1}, Lg6/x1;->b0(Ls5/k;Lb6/i;Lg6/w1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 39
    iget-boolean v0, p0, Lg6/x1;->o:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0, p1, p2}, Lg6/x1;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 41
    :cond_0
    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    goto :goto_2

    .line 42
    :cond_1
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    .line 43
    sget-object v1, Ls5/n;->x:Ls5/n;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 44
    :cond_2
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_a

    .line 45
    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    .line 46
    :cond_3
    invoke-virtual {p0, p1, p2}, Lg6/x1;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v1

    sget-object v2, Ls5/n;->x:Ls5/n;

    if-ne v1, v2, :cond_3

    return-object p3

    .line 48
    :cond_4
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    .line 49
    sget-object v1, Ls5/n;->v:Ls5/n;

    if-ne v0, v1, :cond_6

    :cond_5
    :goto_0
    return-object p3

    .line 50
    :cond_6
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 51
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    .line 52
    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v1

    .line 53
    :cond_7
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    .line 54
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 55
    invoke-virtual {p0, p1, p2, v2}, Lg6/x1;->deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 56
    :cond_8
    invoke-virtual {p0, p1, p2}, Lg6/x1;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v3

    :goto_1
    if-eq v3, v2, :cond_9

    .line 57
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_9
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    return-object p3

    .line 59
    :cond_a
    :goto_2
    invoke-virtual {p0, p1, p2}, Lg6/x1;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ls5/k;->w()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lg6/x1;->Z(Ls5/k;Lb6/i;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p3, p1, p2}, Ln6/d;->b(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final logicalType()Lt6/f;
    .locals 0

    sget-object p0, Lt6/f;->p:Lt6/f;

    return-object p0
.end method

.method public final supportsUpdate(Lb6/h;)Ljava/lang/Boolean;
    .locals 0

    iget-boolean p0, p0, Lg6/x1;->o:Z

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
