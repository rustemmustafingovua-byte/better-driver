.class public Lq3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly7/o;


# instance fields
.field public final synthetic l:I

.field public m:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lq3/k;->l:I

    sparse-switch p1, :sswitch_data_0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance p1, Lr3/h;

    .line 168
    invoke-direct {p1, p0}, Lr3/h;-><init>(Lq3/k;)V

    .line 169
    iput-object p1, p0, Lq3/k;->m:Ljava/lang/Object;

    return-void

    .line 170
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance p1, Lz1/b;

    invoke-direct {p1}, Lz1/b;-><init>()V

    .line 172
    iput-object p1, p0, Lq3/k;->m:Ljava/lang/Object;

    return-void

    .line 173
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    .line 175
    invoke-static {p1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    .line 176
    iput-object p1, p0, Lq3/k;->m:Ljava/lang/Object;

    return-void

    .line 177
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance p1, Lk/q;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lk/q;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lq3/k;->m:Ljava/lang/Object;

    return-void

    .line 179
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance p1, Lmb/q;

    const/16 v0, 0x18

    .line 181
    invoke-direct {p1, v0}, Lmb/q;-><init>(I)V

    .line 182
    iput-object p1, p0, Lq3/k;->m:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_3
        0xe -> :sswitch_2
        0xf -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(II)V
    .locals 3

    const/16 v0, 0x8

    iput v0, p0, Lq3/k;->l:I

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 156
    new-array v0, v0, [Lq5/a;

    iput-object v0, p0, Lq3/k;->m:Ljava/lang/Object;

    .line 157
    new-instance p0, Lq5/a;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lq5/a;-><init>(I)V

    aput-object p0, v0, v1

    .line 158
    new-instance p0, Lq5/a;

    invoke-direct {p0, v1}, Lq5/a;-><init>(I)V

    const/4 v2, 0x1

    aput-object p0, v0, v2

    .line 159
    aget-object p0, v0, p1

    .line 160
    iget-object p0, p0, Lq5/a;->m:[I

    .line 161
    aput p2, p0, v1

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lq3/k;->l:I

    iput-object p2, p0, Lq3/k;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 2
    iput p1, p0, Lq3/k;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lq3/k;->l:I

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 150
    new-instance v0, Lq3/j;

    const/16 v1, 0x1d

    .line 151
    invoke-direct {v0, v1, p1}, Lm2/j;-><init>(ILjava/lang/Object;)V

    .line 152
    iput-object p1, v0, Lq3/j;->n:Landroid/view/View;

    .line 153
    iput-object v0, p0, Lq3/k;->m:Ljava/lang/Object;

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Lm2/j;

    const/16 v1, 0x1d

    invoke-direct {v0, v1, p1}, Lm2/j;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lq3/k;->m:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x1

    iput v0, p0, Lq3/k;->l:I

    .line 3
    new-instance v1, Lf7/c0;

    invoke-direct {v1, p1}, Lf7/c0;-><init>(Ljava/lang/String;)V

    iget-object p1, v1, Lf7/c0;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget-object v2, Lq8/n;->a:[Ljava/lang/String;

    .line 4
    new-instance v2, Lf7/c0;

    const/4 v3, 0x5

    .line 5
    invoke-direct {v2, v3}, Lf7/c0;-><init>(I)V

    .line 6
    new-instance v3, Lq8/e;

    .line 7
    invoke-direct {v3}, Lq8/g;-><init>()V

    .line 8
    iput-object v3, v2, Lf7/c0;->c:Ljava/lang/Object;

    move v3, v0

    :goto_0
    const/16 v4, 0x28

    .line 9
    invoke-static {v1, v4, v2}, Lq8/n;->d(Lf7/c0;CLf7/c0;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    new-instance p0, Lq8/l;

    const-string p1, "Expected a whitespace or bracket before the tag"

    .line 11
    iget v0, v1, Lf7/c0;->b:I

    .line 12
    invoke-direct {p0, p1, v0}, Lq8/l;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 13
    :cond_1
    :goto_1
    sget-object v3, Lq8/n;->i:Lr9/i;

    const-string v4, "regex"

    invoke-static {v3, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget v4, v1, Lf7/c0;->b:I

    invoke-virtual {v3, p1, v4}, Lr9/i;->d(Ljava/lang/CharSequence;I)Lr9/g;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {v1, v0}, Lf7/c0;->d(I)Ljava/lang/String;

    .line 16
    new-instance v3, Lq8/i;

    .line 17
    invoke-direct {v3}, Lq8/g;-><init>()V

    .line 18
    iget-object v5, v2, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v5, Lq8/g;

    invoke-virtual {v5, v3}, Lq8/g;->b(Lq8/d;)V

    .line 19
    iput-object v3, v2, Lf7/c0;->c:Ljava/lang/Object;

    goto/16 :goto_9

    .line 20
    :cond_2
    const-string v3, "!{"

    invoke-virtual {v1, v3}, Lf7/c0;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 21
    invoke-static {v1}, Lq8/n;->g(Lf7/c0;)Ljava/lang/String;

    move-result-object v3

    .line 22
    iget-object v5, v2, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v5, Lq8/g;

    new-instance v6, Lq8/j;

    invoke-direct {v6, v3}, Lq8/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lq8/g;->b(Lq8/d;)V

    goto/16 :goto_6

    .line 23
    :cond_3
    const-string v3, "{"

    invoke-virtual {v1, v3}, Lf7/c0;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 24
    invoke-static {v1}, Lq8/n;->g(Lf7/c0;)Ljava/lang/String;

    move-result-object v3

    .line 25
    iget-object v5, v2, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v5, Lq8/g;

    new-instance v6, Lq8/m;

    invoke-direct {v6, v3}, Lq8/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lq8/g;->b(Lq8/d;)V

    goto/16 :goto_6

    .line 26
    :cond_4
    const-string v3, "!"

    invoke-virtual {v1, v3}, Lf7/c0;->j(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "~"

    if-eqz v3, :cond_6

    .line 27
    invoke-virtual {v1, v5}, Lf7/c0;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 28
    invoke-static {v1}, Lq8/n;->a(Lf7/c0;)I

    .line 29
    new-instance v3, Lr8/b;

    invoke-static {v1}, Lq8/n;->e(Lf7/c0;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Lr8/b;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 30
    :cond_5
    invoke-static {v1}, Lq8/n;->a(Lf7/c0;)I

    .line 31
    new-instance v3, Lr8/a;

    invoke-static {v1}, Lq8/n;->e(Lf7/c0;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Lr8/a;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 32
    :cond_6
    invoke-virtual {v1, v5}, Lf7/c0;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 33
    invoke-static {v1}, Lq8/n;->a(Lf7/c0;)I

    .line 34
    invoke-static {v1}, Lq8/n;->e(Lf7/c0;)Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-static {v1}, Lq8/n;->f(Lf7/c0;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    .line 36
    new-instance v5, Lr8/b;

    invoke-direct {v5, v3, v4}, Lr8/b;-><init>(Ljava/lang/String;I)V

    :goto_2
    move-object v3, v5

    goto/16 :goto_5

    .line 37
    :cond_7
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 38
    new-instance v5, Lr8/e;

    invoke-static {v1}, Lq8/n;->h(Lf7/c0;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lr8/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 39
    :cond_8
    new-instance p0, Lq8/l;

    const-string p1, "Unexpected operator \'"

    const-string v0, "\': The key prefix operator \'~\' must be used together with the binary operator \'~\'"

    .line 40
    invoke-static {p1, v6, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    iget v0, v1, Lf7/c0;->b:I

    .line 42
    invoke-direct {p0, p1, v0}, Lq8/l;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 43
    :cond_9
    invoke-static {v1}, Lq8/n;->e(Lf7/c0;)Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-static {v1}, Lq8/n;->f(Lf7/c0;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a

    new-instance v5, Lr8/a;

    invoke-direct {v5, v3, v4}, Lr8/a;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    .line 45
    :cond_a
    sget-object v7, Lq8/n;->c:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 46
    invoke-static {v1}, Lq8/n;->h(Lf7/c0;)Ljava/lang/String;

    move-result-object v7

    .line 47
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x3d

    if-eq v8, v9, :cond_11

    const/16 v9, 0x7e

    if-eq v8, v9, :cond_f

    const/16 v5, 0x43c

    if-eq v8, v5, :cond_d

    const/16 v5, 0x47d

    if-eq v8, v5, :cond_b

    goto :goto_3

    :cond_b
    const-string v5, "!~"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_3

    .line 48
    :cond_c
    new-instance v5, Lr8/f;

    invoke-direct {v5, v3, v7, v0}, Lr8/f;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 49
    :cond_d
    const-string v5, "!="

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_3

    .line 50
    :cond_e
    new-instance v5, Lr8/c;

    invoke-direct {v5, v3, v7, v0}, Lr8/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 51
    :cond_f
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_3

    .line 52
    :cond_10
    new-instance v5, Lr8/f;

    invoke-direct {v5, v3, v7, v4}, Lr8/f;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 53
    :cond_11
    const-string v5, "="

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_3

    .line 54
    :cond_12
    new-instance v5, Lr8/c;

    invoke-direct {v5, v3, v7, v4}, Lr8/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 55
    :cond_13
    :goto_3
    sget-object v5, Lq8/n;->d:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 56
    invoke-static {v1}, Lq8/n;->c(Lf7/c0;)I

    move-result v5

    if-eqz v5, :cond_24

    .line 57
    invoke-virtual {v1, v5}, Lf7/c0;->d(I)Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-static {v5}, Lq8/k;->b(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    const-string v7, "Expected a number (e.g. 3.5) or a number with a known unit (e.g. 3.5st)"

    if-eqz v5, :cond_23

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    double-to-float v5, v8

    .line 59
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x3c

    const-string v10, "key"

    if-eq v8, v9, :cond_16

    const/16 v9, 0x3e

    if-eq v8, v9, :cond_15

    const/16 v9, 0x781

    if-eq v8, v9, :cond_14

    const/16 v9, 0x7bf

    if-ne v8, v9, :cond_22

    const-string v8, ">="

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 60
    new-instance v6, Lr8/d;

    .line 61
    invoke-static {v3, v10}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {v6, v3, v5, v4}, Lr8/d;-><init>(Ljava/lang/String;FI)V

    :goto_4
    move-object v3, v6

    goto :goto_5

    .line 63
    :cond_14
    const-string v8, "<="

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 64
    new-instance v6, Lr8/d;

    .line 65
    invoke-static {v3, v10}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x2

    .line 66
    invoke-direct {v6, v3, v5, v7}, Lr8/d;-><init>(Ljava/lang/String;FI)V

    goto :goto_4

    .line 67
    :cond_15
    const-string v8, ">"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 68
    new-instance v6, Lr8/d;

    .line 69
    invoke-static {v3, v10}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {v6, v3, v5, v0}, Lr8/d;-><init>(Ljava/lang/String;FI)V

    goto :goto_4

    .line 71
    :cond_16
    const-string v8, "<"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 72
    new-instance v6, Lr8/d;

    .line 73
    invoke-static {v3, v10}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x3

    .line 74
    invoke-direct {v6, v3, v5, v7}, Lr8/d;-><init>(Ljava/lang/String;FI)V

    goto :goto_4

    .line 75
    :goto_5
    check-cast v3, Lr8/m;

    .line 76
    iget-object v5, v2, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v5, Lq8/g;

    new-instance v6, Lq8/h;

    invoke-direct {v6, v3}, Lq8/h;-><init>(Lr8/m;)V

    invoke-virtual {v5, v6}, Lq8/g;->b(Lq8/d;)V

    :goto_6
    const/16 v3, 0x29

    .line 77
    invoke-static {v1, v3, v2}, Lq8/n;->d(Lf7/c0;CLf7/c0;)Z

    move-result v3

    .line 78
    iget v5, v1, Lf7/c0;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_17

    .line 79
    :try_start_0
    invoke-virtual {v2}, Lf7/c0;->e()Lq8/d;

    move-result-object p1

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lq3/k;->m:Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p0

    .line 82
    new-instance p1, Lq8/l;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 83
    iget v0, v1, Lf7/c0;->b:I

    .line 84
    invoke-direct {p1, p0, v0}, Lq8/l;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_17
    if-eqz v3, :cond_21

    .line 85
    const-string v3, "or"

    invoke-virtual {v1, v3}, Lf7/c0;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 86
    iget-object v3, v2, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v3, Lq8/g;

    instance-of v5, v3, Lq8/b;

    const/4 v6, 0x0

    if-eqz v5, :cond_18

    move-object v5, v3

    check-cast v5, Lq8/b;

    goto :goto_7

    :cond_18
    move-object v5, v6

    .line 87
    :goto_7
    instance-of v7, v3, Lq8/e;

    if-eqz v7, :cond_19

    move-object v7, v3

    check-cast v7, Lq8/e;

    goto :goto_8

    :cond_19
    move-object v7, v6

    :goto_8
    if-eqz v5, :cond_1d

    .line 88
    iget-object v3, v3, Lq8/d;->a:Lq8/g;

    .line 89
    instance-of v7, v3, Lq8/c;

    if-eqz v7, :cond_1a

    .line 90
    iput-object v3, v2, Lf7/c0;->c:Ljava/lang/Object;

    goto :goto_9

    :cond_1a
    if-eqz v3, :cond_1b

    .line 91
    iget-object v7, v3, Lq8/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 92
    iput-object v6, v5, Lq8/d;->a:Lq8/g;

    .line 93
    :cond_1b
    new-instance v6, Lq8/c;

    .line 94
    invoke-direct {v6}, Lq8/g;-><init>()V

    .line 95
    iput-object v6, v5, Lq8/d;->a:Lq8/g;

    .line 96
    iget-object v7, v6, Lq8/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_1c

    .line 97
    invoke-virtual {v3, v6}, Lq8/g;->b(Lq8/d;)V

    .line 98
    :cond_1c
    iput-object v6, v2, Lf7/c0;->c:Ljava/lang/Object;

    goto :goto_9

    :cond_1d
    if-eqz v7, :cond_1f

    .line 99
    iget-object v3, v3, Lq8/g;->b:Ljava/util/ArrayList;

    .line 100
    invoke-static {v3}, Lu8/m;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 101
    invoke-static {v3}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq8/d;

    .line 102
    new-instance v5, Lq8/c;

    .line 103
    invoke-direct {v5}, Lq8/g;-><init>()V

    .line 104
    iget-object v6, v2, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v6, Lq8/g;

    invoke-virtual {v6, v3, v5}, Lq8/g;->e(Lq8/d;Lq8/g;)V

    .line 105
    iput-object v5, v3, Lq8/d;->a:Lq8/g;

    .line 106
    iget-object v6, v5, Lq8/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iput-object v5, v2, Lf7/c0;->c:Ljava/lang/Object;

    goto :goto_9

    .line 108
    :cond_1e
    const-string v3, "and"

    invoke-virtual {v1, v3}, Lf7/c0;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 109
    iget-object v3, v2, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v3, Lq8/g;

    instance-of v5, v3, Lq8/b;

    if-nez v5, :cond_1f

    .line 110
    iget-object v3, v3, Lq8/g;->b:Ljava/util/ArrayList;

    .line 111
    invoke-static {v3}, Lu8/m;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 112
    invoke-static {v3}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq8/d;

    .line 113
    new-instance v5, Lq8/b;

    .line 114
    invoke-direct {v5}, Lq8/g;-><init>()V

    .line 115
    iget-object v6, v2, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v6, Lq8/g;

    invoke-virtual {v6, v3, v5}, Lq8/g;->e(Lq8/d;Lq8/g;)V

    .line 116
    iput-object v5, v3, Lq8/d;->a:Lq8/g;

    .line 117
    iget-object v6, v5, Lq8/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iput-object v5, v2, Lf7/c0;->c:Ljava/lang/Object;

    :cond_1f
    :goto_9
    move v3, v4

    goto/16 :goto_0

    .line 119
    :cond_20
    new-instance p0, Lq8/l;

    const-string p1, "Expected end of string, \'and\' or \'or\'"

    .line 120
    iget v0, v1, Lf7/c0;->b:I

    .line 121
    invoke-direct {p0, p1, v0}, Lq8/l;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 122
    :cond_21
    new-instance p0, Lq8/l;

    const-string p1, "Expected a whitespace or bracket after the tag"

    .line 123
    iget v0, v1, Lf7/c0;->b:I

    .line 124
    invoke-direct {p0, p1, v0}, Lq8/l;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 125
    :cond_22
    new-instance p0, Lq8/l;

    .line 126
    iget p1, v1, Lf7/c0;->b:I

    .line 127
    invoke-direct {p0, v7, p1}, Lq8/l;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 128
    :cond_23
    new-instance p0, Lq8/l;

    .line 129
    iget p1, v1, Lf7/c0;->b:I

    .line 130
    invoke-direct {p0, v7, p1}, Lq8/l;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 131
    :cond_24
    new-instance p0, Lq8/l;

    const-string p1, "Missing value (dangling operator)"

    .line 132
    iget v0, v1, Lf7/c0;->b:I

    .line 133
    invoke-direct {p0, p1, v0}, Lq8/l;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 134
    :cond_25
    new-instance p0, Lq8/l;

    const-string p1, "Unknown operator \'"

    const/16 v0, 0x27

    .line 135
    invoke-static {v0, p1, v6}, La6/q;->g(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    iget v0, v1, Lf7/c0;->b:I

    .line 137
    invoke-direct {p0, p1, v0}, Lq8/l;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public constructor <init>(Lq3/k;)V
    .locals 3

    const/16 v0, 0x8

    iput v0, p0, Lq3/k;->l:I

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 163
    new-array v0, v0, [Lq5/a;

    iput-object v0, p0, Lq3/k;->m:Ljava/lang/Object;

    .line 164
    new-instance p0, Lq5/a;

    iget-object v1, p1, Lq3/k;->m:Ljava/lang/Object;

    check-cast v1, [Lq5/a;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lq5/a;-><init>(Lq5/a;)V

    aput-object p0, v0, v2

    .line 165
    new-instance p0, Lq5/a;

    iget-object p1, p1, Lq3/k;->m:Ljava/lang/Object;

    check-cast p1, [Lq5/a;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lq5/a;-><init>(Lq5/a;)V

    aput-object p0, v0, v1

    return-void
.end method

.method public static d(Lr4/b;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p0, v0}, Lr4/b;->k(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)"

    invoke-virtual {p0, v0}, Lr4/b;->k(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)"

    invoke-virtual {p0, v0}, Lr4/b;->k(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT NOT NULL, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL DEFAULT -1, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807, `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0, `stop_reason` INTEGER NOT NULL DEFAULT -256, `trace_tag` TEXT, `required_network_type` INTEGER NOT NULL, `required_network_request` BLOB NOT NULL DEFAULT x\'\', `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))"

    invoke-virtual {p0, v0}, Lr4/b;->k(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

    invoke-virtual {p0, v0}, Lr4/b;->k(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)"

    invoke-virtual {p0, v0}, Lr4/b;->k(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p0, v0}, Lr4/b;->k(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)"

    invoke-virtual {p0, v0}, Lr4/b;->k(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p0, v0}, Lr4/b;->k(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p0, v0}, Lr4/b;->k(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)"

    invoke-virtual {p0, v0}, Lr4/b;->k(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p0, v0}, Lr4/b;->k(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    invoke-virtual {p0, v0}, Lr4/b;->k(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-virtual {p0, v0}, Lr4/b;->k(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'86254750241babac4b8d52996a675549\')"

    invoke-virtual {p0, v0}, Lr4/b;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static o(Lr4/b;)Lg7/d0;
    .locals 23

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v3, Lm4/a;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v4, "work_spec_id"

    const-string v5, "TEXT"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v3 .. v9}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "work_spec_id"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lm4/a;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v6, "prerequisite_id"

    const-string v7, "TEXT"

    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-direct/range {v5 .. v11}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "prerequisite_id"

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v6, Lm4/b;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string v12, "id"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v7, "WorkSpec"

    const-string v8, "CASCADE"

    const-string v9, "CASCADE"

    invoke-direct/range {v6 .. v11}, Lm4/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v13, Lm4/b;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    const-string v14, "WorkSpec"

    const-string v15, "CASCADE"

    const-string v16, "CASCADE"

    invoke-direct/range {v13 .. v18}, Lm4/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v7, Lm4/d;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string v9, "ASC"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string v11, "index_Dependency_work_spec_id"

    const/4 v13, 0x0

    invoke-direct {v7, v11, v13, v8, v10}, Lm4/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v7, Lm4/d;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string v10, "index_Dependency_prerequisite_id"

    invoke-direct {v7, v10, v13, v3, v8}, Lm4/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Lm4/e;

    const-string v7, "Dependency"

    invoke-direct {v3, v7, v1, v5, v6}, Lm4/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v7}, Lm4/e;->a(Lr4/b;Ljava/lang/String;)Lm4/e;

    move-result-object v1

    invoke-virtual {v3, v1}, Lm4/e;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "\n Found:\n"

    if-nez v5, :cond_0

    new-instance v0, Lg7/d0;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lg7/d0;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/16 v3, 0x20

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    new-instance v14, Lm4/a;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string v15, "id"

    const-string v16, "TEXT"

    invoke-direct/range {v14 .. v20}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lm4/a;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v19, 0x0

    const-string v16, "state"

    const-string v17, "INTEGER"

    invoke-direct/range {v15 .. v21}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "state"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lm4/a;

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v17, "worker_class_name"

    const-string v18, "TEXT"

    invoke-direct/range {v16 .. v22}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v3, v16

    const-string v5, "worker_class_name"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lm4/a;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-string v15, "input_merger_class_name"

    const-string v16, "TEXT"

    invoke-direct/range {v14 .. v20}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "input_merger_class_name"

    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lm4/a;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-string v16, "input"

    const-string v17, "BLOB"

    invoke-direct/range {v15 .. v21}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "input"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lm4/a;

    const/16 v21, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v17, "output"

    const-string v18, "BLOB"

    invoke-direct/range {v16 .. v22}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v3, v16

    const-string v5, "output"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lm4/a;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-string v15, "initial_delay"

    const-string v16, "INTEGER"

    invoke-direct/range {v14 .. v20}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "initial_delay"

    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lm4/a;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-string v16, "interval_duration"

    const-string v17, "INTEGER"

    invoke-direct/range {v15 .. v21}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "interval_duration"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lm4/a;

    const/16 v21, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v17, "flex_duration"

    const-string v18, "INTEGER"

    invoke-direct/range {v16 .. v22}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v3, v16

    const-string v5, "flex_duration"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lm4/a;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-string v15, "run_attempt_count"

    const-string v16, "INTEGER"

    invoke-direct/range {v14 .. v20}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "run_attempt_count"

    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lm4/a;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-string v16, "backoff_policy"

    const-string v17, "INTEGER"

    invoke-direct/range {v15 .. v21}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "backoff_policy"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lm4/a;

    const/16 v21, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v17, "backoff_delay_duration"

    const-string v18, "INTEGER"

    invoke-direct/range {v16 .. v22}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v3, v16

    const-string v5, "backoff_delay_duration"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lm4/a;

    const-string v19, "-1"

    const/16 v20, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-string v15, "last_enqueue_time"

    const-string v16, "INTEGER"

    invoke-direct/range {v14 .. v20}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "last_enqueue_time"

    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lm4/a;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-string v16, "minimum_retention_duration"

    const-string v17, "INTEGER"

    invoke-direct/range {v15 .. v21}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "minimum_retention_duration"

    invoke-virtual {v1, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lm4/a;

    const/16 v21, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v17, "schedule_requested_at"

    const-string v18, "INTEGER"

    invoke-direct/range {v16 .. v22}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v5, v16

    const-string v7, "schedule_requested_at"

    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lm4/a;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-string v15, "run_in_foreground"

    const-string v16, "INTEGER"

    invoke-direct/range {v14 .. v20}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "run_in_foreground"

    invoke-virtual {v1, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lm4/a;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-string v16, "out_of_quota_policy"

    const-string v17, "INTEGER"

    invoke-direct/range {v15 .. v21}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "out_of_quota_policy"

    invoke-virtual {v1, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lm4/a;

    const-string v21, "0"

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v17, "period_count"

    const-string v18, "INTEGER"

    invoke-direct/range {v16 .. v22}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v5, v16

    const-string v8, "period_count"

    invoke-virtual {v1, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lm4/a;

    const-string v19, "0"

    const/16 v20, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-string v15, "generation"

    const-string v16, "INTEGER"

    invoke-direct/range {v14 .. v20}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "generation"

    invoke-virtual {v1, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lm4/a;

    const-string v20, "9223372036854775807"

    const/16 v21, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-string v16, "next_schedule_time_override"

    const-string v17, "INTEGER"

    invoke-direct/range {v15 .. v21}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "next_schedule_time_override"

    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lm4/a;

    const-string v21, "0"

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v17, "next_schedule_time_override_generation"

    const-string v18, "INTEGER"

    invoke-direct/range {v16 .. v22}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v8, v16

    const-string v10, "next_schedule_time_override_generation"

    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lm4/a;

    const-string v19, "-256"

    const/16 v20, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-string v15, "stop_reason"

    const-string v16, "INTEGER"

    invoke-direct/range {v14 .. v20}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "stop_reason"

    invoke-virtual {v1, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lm4/a;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v19, 0x0

    const-string v16, "trace_tag"

    const-string v17, "TEXT"

    invoke-direct/range {v15 .. v21}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "trace_tag"

    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lm4/a;

    const/16 v21, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v17, "required_network_type"

    const-string v18, "INTEGER"

    invoke-direct/range {v16 .. v22}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v8, v16

    const-string v10, "required_network_type"

    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lm4/a;

    const-string v19, "x\'\'"

    const/16 v20, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-string v15, "required_network_request"

    const-string v16, "BLOB"

    invoke-direct/range {v14 .. v20}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "required_network_request"

    invoke-virtual {v1, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lm4/a;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-string v16, "requires_charging"

    const-string v17, "INTEGER"

    invoke-direct/range {v15 .. v21}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "requires_charging"

    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lm4/a;

    const/16 v21, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v17, "requires_device_idle"

    const-string v18, "INTEGER"

    invoke-direct/range {v16 .. v22}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v8, v16

    const-string v10, "requires_device_idle"

    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lm4/a;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-string v15, "requires_battery_not_low"

    const-string v16, "INTEGER"

    invoke-direct/range {v14 .. v20}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "requires_battery_not_low"

    invoke-virtual {v1, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lm4/a;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-string v16, "requires_storage_not_low"

    const-string v17, "INTEGER"

    invoke-direct/range {v15 .. v21}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "requires_storage_not_low"

    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lm4/a;

    const/16 v21, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v17, "trigger_content_update_delay"

    const-string v18, "INTEGER"

    invoke-direct/range {v16 .. v22}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v8, v16

    const-string v10, "trigger_content_update_delay"

    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lm4/a;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-string v15, "trigger_max_content_delay"

    const-string v16, "INTEGER"

    invoke-direct/range {v14 .. v20}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "trigger_max_content_delay"

    invoke-virtual {v1, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lm4/a;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-string v16, "content_uri_triggers"

    const-string v17, "BLOB"

    invoke-direct/range {v15 .. v21}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "content_uri_triggers"

    invoke-virtual {v1, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v13}, Ljava/util/HashSet;-><init>(I)V

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v11, Lm4/d;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v15, "index_WorkSpec_schedule_requested_at"

    invoke-direct {v11, v15, v13, v7, v14}, Lm4/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v7, Lm4/d;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v14, "index_WorkSpec_last_enqueue_time"

    invoke-direct {v7, v14, v13, v3, v11}, Lm4/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Lm4/e;

    const-string v7, "WorkSpec"

    invoke-direct {v3, v7, v1, v8, v10}, Lm4/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v7}, Lm4/e;->a(Lr4/b;Ljava/lang/String;)Lm4/e;

    move-result-object v1

    invoke-virtual {v3, v1}, Lm4/e;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v0, Lg7/d0;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lg7/d0;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v14, Lm4/a;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const-string v15, "tag"

    const-string v16, "TEXT"

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-direct/range {v14 .. v20}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "tag"

    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lm4/a;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v16, "work_spec_id"

    const-string v17, "TEXT"

    const/16 v19, 0x2

    invoke-direct/range {v15 .. v21}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    const/4 v7, 0x1

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v14, Lm4/b;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const-string v15, "WorkSpec"

    const-string v16, "CASCADE"

    const-string v17, "CASCADE"

    invoke-direct/range {v14 .. v19}, Lm4/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v10, Lm4/d;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v15, "index_WorkTag_work_spec_id"

    invoke-direct {v10, v15, v13, v11, v14}, Lm4/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v10, Lm4/e;

    const-string v11, "WorkTag"

    invoke-direct {v10, v11, v1, v3, v8}, Lm4/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v11}, Lm4/e;->a(Lr4/b;Ljava/lang/String;)Lm4/e;

    move-result-object v1

    invoke-virtual {v10, v1}, Lm4/e;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Lg7/d0;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lg7/d0;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    new-instance v14, Lm4/a;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const-string v15, "work_spec_id"

    const-string v16, "TEXT"

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-direct/range {v14 .. v20}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lm4/a;

    const-string v20, "0"

    const/16 v21, 0x1

    const-string v16, "generation"

    const-string v17, "INTEGER"

    const/16 v19, 0x2

    invoke-direct/range {v15 .. v21}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lm4/a;

    const/16 v21, 0x0

    const/16 v22, 0x1

    const-string v17, "system_id"

    const-string v18, "INTEGER"

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v22}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v3, v16

    const-string v5, "system_id"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v14, Lm4/b;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const-string v15, "WorkSpec"

    const-string v16, "CASCADE"

    const-string v17, "CASCADE"

    invoke-direct/range {v14 .. v19}, Lm4/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v13}, Ljava/util/HashSet;-><init>(I)V

    new-instance v8, Lm4/e;

    const-string v10, "SystemIdInfo"

    invoke-direct {v8, v10, v1, v3, v5}, Lm4/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v10}, Lm4/e;->a(Lr4/b;Ljava/lang/String;)Lm4/e;

    move-result-object v1

    invoke-virtual {v8, v1}, Lm4/e;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v0, Lg7/d0;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lg7/d0;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v14, Lm4/a;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const-string v15, "name"

    const-string v16, "TEXT"

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-direct/range {v14 .. v20}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "name"

    invoke-virtual {v1, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lm4/a;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v16, "work_spec_id"

    const-string v17, "TEXT"

    const/16 v19, 0x2

    invoke-direct/range {v15 .. v21}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v14, Lm4/b;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const-string v15, "WorkSpec"

    const-string v16, "CASCADE"

    const-string v17, "CASCADE"

    invoke-direct/range {v14 .. v19}, Lm4/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v8, Lm4/d;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v11, "index_WorkName_work_spec_id"

    invoke-direct {v8, v11, v13, v10, v9}, Lm4/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v8, Lm4/e;

    const-string v9, "WorkName"

    invoke-direct {v8, v9, v1, v3, v5}, Lm4/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v9}, Lm4/e;->a(Lr4/b;Ljava/lang/String;)Lm4/e;

    move-result-object v1

    invoke-virtual {v8, v1}, Lm4/e;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v0, Lg7/d0;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lg7/d0;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v14, Lm4/a;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const-string v15, "work_spec_id"

    const-string v16, "TEXT"

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-direct/range {v14 .. v20}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lm4/a;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v16, "progress"

    const-string v17, "BLOB"

    const/16 v19, 0x0

    invoke-direct/range {v15 .. v21}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "progress"

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v14, Lm4/b;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const-string v15, "WorkSpec"

    const-string v16, "CASCADE"

    const-string v17, "CASCADE"

    invoke-direct/range {v14 .. v19}, Lm4/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v13}, Ljava/util/HashSet;-><init>(I)V

    new-instance v5, Lm4/e;

    const-string v8, "WorkProgress"

    invoke-direct {v5, v8, v1, v3, v4}, Lm4/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v8}, Lm4/e;->a(Lr4/b;Ljava/lang/String;)Lm4/e;

    move-result-object v1

    invoke-virtual {v5, v1}, Lm4/e;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v0, Lg7/d0;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lg7/d0;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v14, Lm4/a;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const-string v15, "key"

    const-string v16, "TEXT"

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-direct/range {v14 .. v20}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "key"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lm4/a;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v16, "long_value"

    const-string v17, "INTEGER"

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v15 .. v21}, Lm4/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "long_value"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v13}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v13}, Ljava/util/HashSet;-><init>(I)V

    new-instance v4, Lm4/e;

    const-string v5, "Preference"

    invoke-direct {v4, v5, v1, v2, v3}, Lm4/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v5}, Lm4/e;->a(Lr4/b;Ljava/lang/String;)Lm4/e;

    move-result-object v0

    invoke-virtual {v4, v0}, Lm4/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Lg7/d0;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Preference(androidx.work.impl.model.Preference).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v13, v0}, Lg7/d0;-><init>(ZLjava/lang/String;)V

    return-object v1

    :cond_6
    new-instance v0, Lg7/d0;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v1}, Lg7/d0;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public static p(Lq3/k;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v6, 0x20

    if-ge v5, v3, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v6}, Lj9/n;->h(II)I

    move-result v7

    if-gtz v7, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-le v3, v5, :cond_1

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v6}, Lj9/n;->h(II)I

    move-result v7

    if-gtz v7, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_2
    if-ge v5, v3, :cond_15

    :goto_3
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    or-int/lit8 v9, v5, 0x20

    add-int/lit8 v10, v9, -0x61

    add-int/lit8 v11, v9, -0x7a

    mul-int/2addr v11, v10

    if-gtz v11, :cond_2

    const/16 v10, 0x65

    if-eq v9, v10, :cond_2

    goto :goto_4

    :cond_2
    if-lt v8, v3, :cond_14

    move v5, v4

    :goto_4
    if-eqz v5, :cond_13

    or-int/lit8 v9, v5, 0x20

    const/16 v10, 0x7a

    const/4 v11, 0x1

    if-eq v9, v10, :cond_c

    :goto_5
    if-ge v8, v3, :cond_3

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v6}, Lj9/n;->h(II)I

    move-result v7

    if-gtz v7, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_3
    const/16 v7, 0x61

    if-ne v9, v7, :cond_4

    move v7, v11

    goto :goto_6

    :cond_4
    move v7, v4

    :goto_6
    move v9, v4

    :cond_5
    if-eqz v7, :cond_6

    const/4 v10, 0x3

    if-gt v10, v9, :cond_6

    const/4 v10, 0x5

    if-ge v9, v10, :cond_6

    add-int/lit8 v10, v8, 0x1

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v8, v10, v1}, Lr1/b;->c(IILjava/lang/String;)J

    move-result-wide v12

    goto :goto_7

    :cond_6
    invoke-static {v8, v3, v1}, Lr1/b;->c(IILjava/lang/String;)J

    move-result-wide v12

    :goto_7
    ushr-long v14, v12, v6

    long-to-int v8, v14

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    long-to-int v10, v12

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_8

    iget-object v12, v0, Lq3/k;->m:Ljava/lang/Object;

    check-cast v12, [F

    add-int/lit8 v13, v9, 0x1

    aput v10, v12, v9

    array-length v9, v12

    if-lt v13, v9, :cond_7

    mul-int/lit8 v9, v13, 0x2

    new-array v9, v9, [F

    iput-object v9, v0, Lq3/k;->m:Ljava/lang/Object;

    array-length v14, v12

    invoke-static {v12, v4, v9, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    move v9, v13

    :cond_8
    :goto_8
    if-ge v8, v3, :cond_a

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12, v6}, Lj9/n;->h(II)I

    move-result v12

    if-lez v12, :cond_9

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2c

    if-ne v12, v13, :cond_a

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_a
    if-ge v8, v3, :cond_b

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_b
    move v7, v9

    :cond_c
    iget-object v9, v0, Lq3/k;->m:Ljava/lang/Object;

    check-cast v9, [F

    const/4 v10, 0x2

    const/4 v12, 0x0

    sparse-switch v5, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown command for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    add-int/lit8 v5, v7, -0x1

    move v10, v4

    :goto_9
    if-gt v10, v5, :cond_d

    new-instance v11, Lr1/z;

    aget v12, v9, v10

    invoke-direct {v11, v12}, Lr1/z;-><init>(F)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_d
    move/from16 v21, v4

    goto/16 :goto_1f

    :sswitch_1
    add-int/lit8 v5, v7, -0x2

    move v10, v4

    :goto_a
    if-gt v10, v5, :cond_d

    new-instance v11, Lr1/y;

    aget v12, v9, v10

    add-int/lit8 v13, v10, 0x1

    aget v13, v9, v13

    invoke-direct {v11, v12, v13}, Lr1/y;-><init>(FF)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x2

    goto :goto_a

    :sswitch_2
    add-int/lit8 v5, v7, -0x4

    move v10, v4

    :goto_b
    if-gt v10, v5, :cond_d

    new-instance v11, Lr1/x;

    aget v12, v9, v10

    add-int/lit8 v13, v10, 0x1

    aget v13, v9, v13

    add-int/lit8 v14, v10, 0x2

    aget v14, v9, v14

    add-int/lit8 v15, v10, 0x3

    aget v15, v9, v15

    invoke-direct {v11, v12, v13, v14, v15}, Lr1/x;-><init>(FFFF)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x4

    goto :goto_b

    :sswitch_3
    add-int/lit8 v5, v7, -0x4

    move v10, v4

    :goto_c
    if-gt v10, v5, :cond_d

    new-instance v11, Lr1/w;

    aget v12, v9, v10

    add-int/lit8 v13, v10, 0x1

    aget v13, v9, v13

    add-int/lit8 v14, v10, 0x2

    aget v14, v9, v14

    add-int/lit8 v15, v10, 0x3

    aget v15, v9, v15

    invoke-direct {v11, v12, v13, v14, v15}, Lr1/w;-><init>(FFFF)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x4

    goto :goto_c

    :sswitch_4
    add-int/lit8 v5, v7, -0x2

    if-ltz v5, :cond_d

    new-instance v12, Lr1/v;

    aget v13, v9, v4

    aget v11, v9, v11

    invoke-direct {v12, v13, v11}, Lr1/v;-><init>(FF)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d
    if-gt v10, v5, :cond_d

    new-instance v11, Lr1/u;

    aget v12, v9, v10

    add-int/lit8 v13, v10, 0x1

    aget v13, v9, v13

    invoke-direct {v11, v12, v13}, Lr1/u;-><init>(FF)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x2

    goto :goto_d

    :sswitch_5
    add-int/lit8 v5, v7, -0x2

    move v10, v4

    :goto_e
    if-gt v10, v5, :cond_d

    new-instance v11, Lr1/u;

    aget v12, v9, v10

    add-int/lit8 v13, v10, 0x1

    aget v13, v9, v13

    invoke-direct {v11, v12, v13}, Lr1/u;-><init>(FF)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x2

    goto :goto_e

    :sswitch_6
    add-int/lit8 v5, v7, -0x1

    move v10, v4

    :goto_f
    if-gt v10, v5, :cond_d

    new-instance v11, Lr1/t;

    aget v12, v9, v10

    invoke-direct {v11, v12}, Lr1/t;-><init>(F)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :sswitch_7
    add-int/lit8 v5, v7, -0x6

    move v10, v4

    :goto_10
    if-gt v10, v5, :cond_d

    new-instance v11, Lr1/s;

    aget v12, v9, v10

    add-int/lit8 v13, v10, 0x1

    aget v13, v9, v13

    add-int/lit8 v14, v10, 0x2

    aget v14, v9, v14

    add-int/lit8 v15, v10, 0x3

    aget v15, v9, v15

    add-int/lit8 v16, v10, 0x4

    aget v16, v9, v16

    add-int/lit8 v17, v10, 0x5

    aget v17, v9, v17

    invoke-direct/range {v11 .. v17}, Lr1/s;-><init>(FFFFFF)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x6

    goto :goto_10

    :sswitch_8
    add-int/lit8 v5, v7, -0x7

    move v10, v4

    :goto_11
    if-gt v10, v5, :cond_d

    new-instance v13, Lr1/r;

    aget v14, v9, v10

    add-int/lit8 v15, v10, 0x1

    aget v15, v9, v15

    add-int/lit8 v16, v10, 0x2

    aget v16, v9, v16

    add-int/lit8 v17, v10, 0x3

    move/from16 v21, v4

    aget v4, v9, v17

    invoke-static {v4, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_e

    move/from16 v17, v11

    goto :goto_12

    :cond_e
    move/from16 v17, v21

    :goto_12
    add-int/lit8 v4, v10, 0x4

    aget v4, v9, v4

    invoke-static {v4, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_f

    move/from16 v18, v11

    goto :goto_13

    :cond_f
    move/from16 v18, v21

    :goto_13
    add-int/lit8 v4, v10, 0x5

    aget v19, v9, v4

    add-int/lit8 v4, v10, 0x6

    aget v20, v9, v4

    invoke-direct/range {v13 .. v20}, Lr1/r;-><init>(FFFZZFF)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x7

    move/from16 v4, v21

    goto :goto_11

    :sswitch_9
    move/from16 v21, v4

    sget-object v4, Lr1/j;->c:Lr1/j;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    :sswitch_a
    move/from16 v21, v4

    add-int/lit8 v4, v7, -0x1

    move/from16 v5, v21

    :goto_14
    if-gt v5, v4, :cond_12

    new-instance v10, Lr1/a0;

    aget v11, v9, v5

    invoke-direct {v10, v11}, Lr1/a0;-><init>(F)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :sswitch_b
    move/from16 v21, v4

    add-int/lit8 v4, v7, -0x2

    move/from16 v5, v21

    :goto_15
    if-gt v5, v4, :cond_12

    new-instance v10, Lr1/q;

    aget v11, v9, v5

    add-int/lit8 v12, v5, 0x1

    aget v12, v9, v12

    invoke-direct {v10, v11, v12}, Lr1/q;-><init>(FF)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x2

    goto :goto_15

    :sswitch_c
    move/from16 v21, v4

    add-int/lit8 v4, v7, -0x4

    move/from16 v5, v21

    :goto_16
    if-gt v5, v4, :cond_12

    new-instance v10, Lr1/p;

    aget v11, v9, v5

    add-int/lit8 v12, v5, 0x1

    aget v12, v9, v12

    add-int/lit8 v13, v5, 0x2

    aget v13, v9, v13

    add-int/lit8 v14, v5, 0x3

    aget v14, v9, v14

    invoke-direct {v10, v11, v12, v13, v14}, Lr1/p;-><init>(FFFF)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x4

    goto :goto_16

    :sswitch_d
    move/from16 v21, v4

    add-int/lit8 v4, v7, -0x4

    move/from16 v5, v21

    :goto_17
    if-gt v5, v4, :cond_12

    new-instance v10, Lr1/o;

    aget v11, v9, v5

    add-int/lit8 v12, v5, 0x1

    aget v12, v9, v12

    add-int/lit8 v13, v5, 0x2

    aget v13, v9, v13

    add-int/lit8 v14, v5, 0x3

    aget v14, v9, v14

    invoke-direct {v10, v11, v12, v13, v14}, Lr1/o;-><init>(FFFF)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x4

    goto :goto_17

    :sswitch_e
    move/from16 v21, v4

    add-int/lit8 v4, v7, -0x2

    if-ltz v4, :cond_12

    new-instance v5, Lr1/n;

    aget v12, v9, v21

    aget v11, v9, v11

    invoke-direct {v5, v12, v11}, Lr1/n;-><init>(FF)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_18
    if-gt v10, v4, :cond_12

    new-instance v5, Lr1/m;

    aget v11, v9, v10

    add-int/lit8 v12, v10, 0x1

    aget v12, v9, v12

    invoke-direct {v5, v11, v12}, Lr1/m;-><init>(FF)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x2

    goto :goto_18

    :sswitch_f
    move/from16 v21, v4

    add-int/lit8 v4, v7, -0x2

    move/from16 v5, v21

    :goto_19
    if-gt v5, v4, :cond_12

    new-instance v10, Lr1/m;

    aget v11, v9, v5

    add-int/lit8 v12, v5, 0x1

    aget v12, v9, v12

    invoke-direct {v10, v11, v12}, Lr1/m;-><init>(FF)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x2

    goto :goto_19

    :sswitch_10
    move/from16 v21, v4

    add-int/lit8 v4, v7, -0x1

    move/from16 v5, v21

    :goto_1a
    if-gt v5, v4, :cond_12

    new-instance v10, Lr1/l;

    aget v11, v9, v5

    invoke-direct {v10, v11}, Lr1/l;-><init>(F)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :sswitch_11
    move/from16 v21, v4

    add-int/lit8 v4, v7, -0x6

    move/from16 v5, v21

    :goto_1b
    if-gt v5, v4, :cond_12

    new-instance v10, Lr1/k;

    aget v11, v9, v5

    add-int/lit8 v12, v5, 0x1

    aget v12, v9, v12

    add-int/lit8 v13, v5, 0x2

    aget v13, v9, v13

    add-int/lit8 v14, v5, 0x3

    aget v14, v9, v14

    add-int/lit8 v15, v5, 0x4

    aget v15, v9, v15

    add-int/lit8 v16, v5, 0x5

    aget v16, v9, v16

    invoke-direct/range {v10 .. v16}, Lr1/k;-><init>(FFFFFF)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x6

    goto :goto_1b

    :sswitch_12
    move/from16 v21, v4

    add-int/lit8 v4, v7, -0x7

    move/from16 v5, v21

    :goto_1c
    if-gt v5, v4, :cond_12

    new-instance v13, Lr1/i;

    aget v14, v9, v5

    add-int/lit8 v10, v5, 0x1

    aget v15, v9, v10

    add-int/lit8 v10, v5, 0x2

    aget v16, v9, v10

    add-int/lit8 v10, v5, 0x3

    aget v10, v9, v10

    invoke-static {v10, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-eqz v10, :cond_10

    move/from16 v17, v11

    goto :goto_1d

    :cond_10
    move/from16 v17, v21

    :goto_1d
    add-int/lit8 v10, v5, 0x4

    aget v10, v9, v10

    invoke-static {v10, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-eqz v10, :cond_11

    move/from16 v18, v11

    goto :goto_1e

    :cond_11
    move/from16 v18, v21

    :goto_1e
    add-int/lit8 v10, v5, 0x5

    aget v19, v9, v10

    add-int/lit8 v10, v5, 0x6

    aget v20, v9, v10

    invoke-direct/range {v13 .. v20}, Lr1/i;-><init>(FFFZZFF)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x7

    goto :goto_1c

    :cond_12
    :goto_1f
    move v5, v8

    move/from16 v4, v21

    goto/16 :goto_2

    :cond_13
    move v5, v8

    goto/16 :goto_2

    :cond_14
    move v5, v8

    goto/16 :goto_3

    :cond_15
    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_12
        0x43 -> :sswitch_11
        0x48 -> :sswitch_10
        0x4c -> :sswitch_f
        0x4d -> :sswitch_e
        0x51 -> :sswitch_d
        0x53 -> :sswitch_c
        0x54 -> :sswitch_b
        0x56 -> :sswitch_a
        0x5a -> :sswitch_9
        0x61 -> :sswitch_8
        0x63 -> :sswitch_7
        0x68 -> :sswitch_6
        0x6c -> :sswitch_5
        0x6d -> :sswitch_4
        0x71 -> :sswitch_3
        0x73 -> :sswitch_2
        0x74 -> :sswitch_1
        0x76 -> :sswitch_0
        0x7a -> :sswitch_9
    .end sparse-switch
.end method

.method public static s(Lq3/k;I)Lx/e0;
    .locals 8

    iget-object p0, p0, Lq3/k;->m:Ljava/lang/Object;

    check-cast p0, Lw/p;

    invoke-static {}, Ld1/w;->e()Ld1/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld1/g;->e()Li9/c;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Ld1/w;->h(Ld1/g;)Ld1/g;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lw/p;->f:Lr0/e1;

    invoke-virtual {v3}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v2, v1}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    iget-object v0, p0, Lw/p;->p:Lx/f0;

    iget-wide v1, v3, Lw/k;->j:J

    iget-boolean p0, p0, Lw/p;->d:Z

    new-instance v4, Lsc/t0;

    invoke-direct {v4, p1, v3}, Lsc/t0;-><init>(ILw/k;)V

    iget-object v3, v0, Lx/f0;->c:Lk4/h;

    if-eqz v3, :cond_4

    iget-object v0, v0, Lx/f0;->b:Lg5/m;

    new-instance v5, Lx/o0;

    iget-object v6, v3, Lk4/h;->d:Ljava/lang/Object;

    check-cast v6, Lx/p0;

    instance-of v7, v6, Lx/b;

    invoke-direct {v5, v3, p1, v0, v4}, Lx/o0;-><init>(Lk4/h;ILg5/m;Lsc/t0;)V

    new-instance v0, Lb3/a;

    invoke-direct {v0, v1, v2}, Lb3/a;-><init>(J)V

    iput-object v0, v5, Lx/o0;->d:Lb3/a;

    if-eqz v7, :cond_2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    check-cast v6, Lx/b;

    iget-object p0, v6, Lx/b;->m:Ljava/util/PriorityQueue;

    new-instance v1, Lx/s0;

    invoke-direct {v1, v0, v5}, Lx/s0;-><init>(ILx/o0;)V

    invoke-virtual {p0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget-boolean p0, v6, Lx/b;->n:Z

    if-nez p0, :cond_3

    iput-boolean v0, v6, Lx/b;->n:Z

    iget-object p0, v6, Lx/b;->l:Landroid/view/View;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    check-cast v6, Lx/b;

    iget-object p0, v6, Lx/b;->m:Ljava/util/PriorityQueue;

    new-instance v1, Lx/s0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v5}, Lx/s0;-><init>(ILx/o0;)V

    invoke-virtual {p0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget-boolean p0, v6, Lx/b;->n:Z

    if-nez p0, :cond_3

    iput-boolean v0, v6, Lx/b;->n:Z

    iget-object p0, v6, Lx/b;->l:Landroid/view/View;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v6, v5}, Lx/p0;->a(Lx/o0;)V

    :cond_3
    :goto_1
    const-string p0, "compose:lazy:schedule_prefetch:index"

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    return-object v5

    :cond_4
    sget-object p0, Lx/h;->a:Lx/h;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v2, v1}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    throw p0
.end method


# virtual methods
.method public a(ILr3/g;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public b(J)J
    .locals 2

    iget-object p0, p0, Lq3/k;->m:Ljava/lang/Object;

    check-cast p0, Lz1/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lb3/q;->b(J)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Lb3/q;->c(J)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "maximumVelocity should be a positive value. You specified="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lb3/q;->g(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lz1/b;->a:Lz1/d;

    invoke-static {p1, p2}, Lb3/q;->b(J)F

    move-result v1

    invoke-virtual {v0, v1}, Lz1/d;->b(F)F

    move-result v0

    iget-object p0, p0, Lz1/b;->b:Lz1/d;

    invoke-static {p1, p2}, Lb3/q;->c(J)F

    move-result p1

    invoke-virtual {p0, p1}, Lz1/d;->b(F)F

    move-result p0

    invoke-static {v0, p0}, Lb6/g;->e(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public c(I)Lr3/g;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public e()V
    .locals 0

    iget-object p0, p0, Lq3/k;->m:Ljava/lang/Object;

    check-cast p0, Lr0/u;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 5

    const-string v0, "\' with no args"

    const-string v1, "Failed to invoke constructor \'"

    iget-object p0, p0, Lq3/k;->m:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lb8/c;->a:Lg6/c1;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lb8/c;->b(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lb8/c;->b(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public g(I)Lr3/g;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public h()Lr0/r2;
    .locals 6

    invoke-static {}, Lx3/h;->a()Lx3/h;

    move-result-object v0

    invoke-virtual {v0}, Lx3/h;->c()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance p0, Lx2/j;

    invoke-direct {p0, v2}, Lx2/j;-><init>(Z)V

    return-object p0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v1

    new-instance v3, Lx2/f;

    invoke-direct {v3, v1, p0}, Lx2/f;-><init>(Lr0/e1;Lq3/k;)V

    iget-object p0, v0, Lx3/h;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget p0, v0, Lx3/h;->c:I

    if-eq p0, v2, :cond_2

    iget p0, v0, Lx3/h;->c:I

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lx3/h;->b:Lk/f;

    invoke-virtual {p0, v3}, Lk/f;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    iget-object p0, v0, Lx3/h;->d:Landroid/os/Handler;

    new-instance v2, Lf7/n;

    iget v4, v0, Lx3/h;->c:I

    filled-new-array {v3}, [Lx2/f;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lf7/n;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object p0, v0, Lx3/h;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :goto_2
    iget-object v0, v0, Lx3/h;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public i()I
    .locals 2

    iget-object p0, p0, Lq3/k;->m:Ljava/lang/Object;

    check-cast p0, [Lq5/a;

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Lq5/a;->b()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lq5/a;->b()Z

    move-result p0

    if-nez p0, :cond_0

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public j(I)I
    .locals 0

    iget-object p0, p0, Lq3/k;->m:Ljava/lang/Object;

    check-cast p0, [Lq5/a;

    aget-object p0, p0, p1

    iget-object p0, p0, Lq5/a;->m:[I

    array-length p1, p0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public k(II)I
    .locals 0

    iget-object p0, p0, Lq3/k;->m:Ljava/lang/Object;

    check-cast p0, [Lq5/a;

    aget-object p0, p0, p1

    iget-object p0, p0, Lq5/a;->m:[I

    array-length p1, p0

    if-ge p2, p1, :cond_0

    aget p0, p0, p2

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public l()Lq9/h;
    .locals 3

    iget-object p0, p0, Lq3/k;->m:Ljava/lang/Object;

    check-cast p0, Lq8/d;

    instance-of v0, p0, Lq8/g;

    if-eqz v0, :cond_0

    check-cast p0, Lq8/g;

    new-instance v0, Lq8/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lq8/f;-><init>(Lq8/g;Ly8/c;I)V

    new-instance p0, Lf9/l;

    invoke-direct {p0, v0}, Lf9/l;-><init>(Li9/e;)V

    return-object p0

    :cond_0
    instance-of v0, p0, Lq8/m;

    if-eqz v0, :cond_1

    check-cast p0, Lq8/m;

    iget-object p0, p0, Lq8/m;->b:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lu8/l;->c0([Ljava/lang/Object;)Lq9/h;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-static {p0}, Lu8/l;->c0([Ljava/lang/Object;)Lq9/h;

    move-result-object p0

    return-object p0
.end method

.method public m()Ljava/util/Set;
    .locals 3

    iget-object p0, p0, Lq3/k;->m:Ljava/lang/Object;

    check-cast p0, Lq8/d;

    instance-of v0, p0, Lq8/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lq8/g;

    new-instance v0, Lq8/f;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lq8/f;-><init>(Lq8/g;Ly8/c;I)V

    new-instance p0, Lf9/l;

    invoke-direct {p0, v0}, Lf9/l;-><init>(Li9/e;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lq8/h;

    if-eqz v0, :cond_1

    check-cast p0, Lq8/h;

    iget-object p0, p0, Lq8/h;->b:Lr8/m;

    const/4 v0, 0x1

    new-array v0, v0, [Lr8/m;

    aput-object p0, v0, v1

    invoke-static {v0}, Lu8/l;->c0([Ljava/lang/Object;)Lq9/h;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-array p0, v1, [Lr8/m;

    invoke-static {p0}, Lu8/l;->c0([Ljava/lang/Object;)Lq9/h;

    move-result-object p0

    :goto_0
    sget-object v0, Lq8/a;->o:Lq8/a;

    new-instance v1, Lq9/q;

    invoke-direct {v1, p0, v0}, Lq9/q;-><init>(Lq9/h;Li9/c;)V

    invoke-interface {v1}, Lq9/h;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lu8/t;->l:Lu8/t;

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Ll7/a;->y(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object p0, v1

    :goto_2
    return-object p0
.end method

.method public n()Z
    .locals 3

    iget-object p0, p0, Lq3/k;->m:Ljava/lang/Object;

    check-cast p0, [Lq5/a;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    iget-object v1, v1, Lq5/a;->m:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, p0, v2

    iget-object p0, p0, Lq5/a;->m:[I

    array-length p0, p0

    if-le p0, v2, :cond_1

    :goto_0
    return v2

    :cond_1
    return v0
.end method

.method public q(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public r(Lg5/s;Lf2/y;)Lad/a2;
    .locals 38

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v1, v1, Lq3/k;->m:Ljava/lang/Object;

    check-cast v1, Lk/q;

    new-instance v2, Lk/q;

    iget-object v3, v0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Lk/q;-><init>(I)V

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ly1/w;

    iget-wide v8, v7, Ly1/w;->a:J

    invoke-virtual {v1, v8, v9}, Lk/q;->f(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ly1/v;

    if-nez v10, :cond_0

    iget-wide v10, v7, Ly1/w;->b:J

    iget-wide v12, v7, Ly1/w;->d:J

    move-wide/from16 v25, v10

    move-wide/from16 v27, v12

    const/16 v29, 0x0

    move-object/from16 v10, p2

    goto :goto_1

    :cond_0
    iget-wide v11, v10, Ly1/v;->a:J

    iget-boolean v13, v10, Ly1/v;->c:Z

    iget-wide v14, v10, Ly1/v;->b:J

    move-object/from16 v10, p2

    invoke-virtual {v10, v14, v15}, Lf2/y;->H(J)J

    move-result-wide v14

    move-wide/from16 v25, v11

    move/from16 v29, v13

    move-wide/from16 v27, v14

    :goto_1
    iget-wide v11, v7, Ly1/w;->a:J

    new-instance v16, Ly1/u;

    iget-wide v13, v7, Ly1/w;->b:J

    move v15, v6

    iget-wide v5, v7, Ly1/w;->d:J

    move-object/from16 v36, v3

    iget-boolean v3, v7, Ly1/w;->e:Z

    move/from16 v23, v3

    iget v3, v7, Ly1/w;->f:F

    move/from16 v24, v3

    iget v3, v7, Ly1/w;->g:I

    move/from16 v30, v3

    iget-object v3, v7, Ly1/w;->i:Ljava/util/ArrayList;

    move-object/from16 v31, v3

    move/from16 v37, v4

    iget-wide v3, v7, Ly1/w;->j:J

    move-wide/from16 v32, v3

    iget-wide v3, v7, Ly1/w;->k:J

    move-wide/from16 v34, v3

    move-wide/from16 v21, v5

    move-wide/from16 v17, v11

    move-wide/from16 v19, v13

    invoke-direct/range {v16 .. v35}, Ly1/u;-><init>(JJJZFJJZILjava/util/ArrayList;JJ)V

    move-object/from16 v5, v16

    move-wide/from16 v3, v17

    invoke-virtual {v2, v3, v4, v5}, Lk/q;->i(JLjava/lang/Object;)V

    iget-boolean v3, v7, Ly1/w;->e:Z

    if-eqz v3, :cond_1

    new-instance v16, Ly1/v;

    iget-wide v4, v7, Ly1/w;->b:J

    iget-wide v6, v7, Ly1/w;->c:J

    move/from16 v21, v3

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v16 .. v21}, Ly1/v;-><init>(JJZ)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v8, v9, v3}, Lk/q;->i(JLjava/lang/Object;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v8, v9}, Lk/q;->j(J)V

    :goto_2
    add-int/lit8 v6, v15, 0x1

    move-object/from16 v3, v36

    move/from16 v4, v37

    goto/16 :goto_0

    :cond_2
    new-instance v1, Lad/a2;

    invoke-direct {v1, v2, v0}, Lad/a2;-><init>(Lk/q;Lg5/s;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lq3/k;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object p0, p0, Lq3/k;->m:Ljava/lang/Object;

    check-cast p0, [Lq5/a;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    const-string v2, "A:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lq5/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/4 v1, 0x1

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    const-string v2, " B:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lq5/a;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
