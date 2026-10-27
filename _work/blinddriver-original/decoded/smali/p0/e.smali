.class public final synthetic Lp0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lp0/e;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, Lp0/e;->l:I

    const-string v2, "null cannot be cast to non-null type androidx.compose.material3.internal.ParentSemanticsNode"

    const-string v3, "null cannot be cast to non-null type kotlin.Float"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const-string v6, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    const-string v7, "null cannot be cast to non-null type kotlin.Int"

    const-string v8, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, v8}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lp2/i;

    goto :goto_0

    :cond_0
    move-object v1, v9

    :goto_0
    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    move-object v2, v9

    :goto_1
    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    move-object v3, v9

    :goto_2
    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v4, 0x4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    check-cast v4, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v4, v9

    :goto_3
    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_0
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    :cond_4
    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    new-instance v0, Lp2/e;

    new-instance v1, Lp2/g0;

    invoke-direct {v1, v9}, Lp2/g0;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4, v2, v3, v1}, Lp2/e;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_1
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lp2/c0;->f:Lg5/c;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_6

    iget-object v1, v1, Lg5/c;->n:Ljava/lang/Object;

    check-cast v1, Li9/c;

    invoke-interface {v1, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lp2/k;

    :cond_6
    :goto_4
    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    new-instance v0, Lp2/e;

    invoke-direct {v0, v4, v2, v3, v9}, Lp2/e;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_2
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lp2/c0;->e:Lg5/c;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    if-eqz v0, :cond_8

    iget-object v1, v1, Lg5/c;->n:Ljava/lang/Object;

    check-cast v1, Li9/c;

    invoke-interface {v1, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lp2/l;

    :cond_8
    :goto_5
    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    new-instance v0, Lp2/e;

    invoke-direct {v0, v4, v2, v3, v9}, Lp2/e;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_3
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lp2/c0;->d:Lg5/c;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_6

    :cond_9
    if-eqz v0, :cond_a

    iget-object v1, v1, Lg5/c;->n:Ljava/lang/Object;

    check-cast v1, Li9/c;

    invoke-interface {v1, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lp2/n0;

    :cond_a
    :goto_6
    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    new-instance v0, Lp2/e;

    invoke-direct {v0, v4, v2, v3, v9}, Lp2/e;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_4
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lp2/c0;->c:Lg5/c;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_7

    :cond_b
    if-eqz v0, :cond_c

    iget-object v1, v1, Lg5/c;->n:Ljava/lang/Object;

    check-cast v1, Li9/c;

    invoke-interface {v1, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lp2/o0;

    :cond_c
    :goto_7
    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    new-instance v0, Lp2/e;

    invoke-direct {v0, v4, v2, v3, v9}, Lp2/e;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    goto :goto_a

    :pswitch_5
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lp2/c0;->h:Lg5/c;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_8

    :cond_d
    if-eqz v0, :cond_e

    iget-object v1, v1, Lg5/c;->n:Ljava/lang/Object;

    check-cast v1, Li9/c;

    invoke-interface {v1, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lp2/e0;

    :cond_e
    :goto_8
    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    new-instance v0, Lp2/e;

    invoke-direct {v0, v4, v2, v3, v9}, Lp2/e;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    goto :goto_a

    :pswitch_6
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lp2/c0;->g:Lg5/c;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_9

    :cond_f
    if-eqz v0, :cond_10

    iget-object v1, v1, Lg5/c;->n:Ljava/lang/Object;

    check-cast v1, Li9/c;

    invoke-interface {v1, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lp2/s;

    :cond_10
    :goto_9
    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    new-instance v0, Lp2/e;

    invoke-direct {v0, v4, v2, v3, v9}, Lp2/e;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    :goto_a
    return-object v0

    :pswitch_7
    invoke-static {v1, v7}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, La3/h;

    invoke-direct {v1, v0}, La3/h;-><init>(I)V

    return-object v1

    :pswitch_8
    invoke-static {v1, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, La3/f;->a(F)V

    new-instance v1, La3/f;

    invoke-direct {v1, v0}, La3/f;-><init>(F)V

    return-object v1

    :pswitch_9
    invoke-static {v1, v8}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    new-instance v1, La3/i;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget v3, La3/f;->b:F

    sget-object v3, Lp2/c0;->B:Lp2/b0;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v2, :cond_11

    iget-object v3, v3, Lp2/b0;->m:Li9/c;

    invoke-interface {v3, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La3/f;

    goto :goto_b

    :cond_11
    move-object v2, v9

    :goto_b
    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v2, v2, La3/f;->a:F

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v6, Lp2/c0;->C:Lp2/b0;

    invoke-static {v3, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v3, :cond_12

    iget-object v6, v6, Lp2/b0;->m:Li9/c;

    invoke-interface {v6, v3}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La3/h;

    goto :goto_c

    :cond_12
    move-object v3, v9

    :goto_c
    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v3, v3, La3/h;->a:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v5, Lp2/c0;->D:Lp2/b0;

    invoke-static {v0, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v0, :cond_13

    iget-object v4, v5, Lp2/b0;->m:Li9/c;

    invoke-interface {v4, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, La3/g;

    :cond_13
    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v0, v9, La3/g;->a:I

    invoke-direct {v1, v2, v3, v0}, La3/i;-><init>(FII)V

    return-object v1

    :pswitch_a
    invoke-static {v1, v6}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    check-cast v1, Ljava/lang/String;

    goto :goto_d

    :cond_14
    move-object v1, v9

    :goto_d
    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lp2/c0;->i:Lg5/c;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_e

    :cond_15
    if-eqz v0, :cond_16

    iget-object v2, v2, Lg5/c;->n:Ljava/lang/Object;

    check-cast v2, Li9/c;

    invoke-interface {v2, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lp2/k0;

    :cond_16
    :goto_e
    new-instance v0, Lp2/k;

    invoke-direct {v0, v1, v9}, Lp2/k;-><init>(Ljava/lang/String;Lp2/k0;)V

    return-object v0

    :pswitch_b
    new-instance v0, Lw2/a;

    const-string v2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v1, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lw2/c;->a:Lg5/m;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "und"

    invoke-static {v3, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The language tag "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not well-formed. Locale is resolved to Undetermined. Note that underscore \'_\' is not a valid subtag delimiter and must be replaced with \'-\'."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Locale"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    invoke-direct {v0, v2}, Lw2/a;-><init>(Ljava/util/Locale;)V

    return-object v0

    :pswitch_c
    invoke-static {v1, v8}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_f
    if-ge v10, v2, :cond_1a

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lp2/c0;->z:Lg5/c;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    :cond_18
    move-object v3, v9

    goto :goto_10

    :cond_19
    if-eqz v3, :cond_18

    iget-object v4, v4, Lg5/c;->n:Ljava/lang/Object;

    check-cast v4, Li9/c;

    invoke-interface {v4, v3}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw2/a;

    :goto_10
    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_1a
    new-instance v0, Lw2/b;

    invoke-direct {v0, v1}, Lw2/b;-><init>(Ljava/util/List;)V

    return-object v0

    :pswitch_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Ll1/b;

    const-wide v1, 0x7fc000007fc00000L    # 2.247117487993712E307

    invoke-direct {v0, v1, v2}, Ll1/b;-><init>(J)V

    goto :goto_12

    :cond_1b
    invoke-static {v1, v6}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    check-cast v1, Ljava/lang/Float;

    goto :goto_11

    :cond_1c
    move-object v1, v9

    :goto_11
    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    move-object v9, v0

    check-cast v9, Ljava/lang/Float;

    :cond_1d
    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x20

    shl-long v0, v1, v0

    const-wide v5, 0xffffffffL

    and-long v2, v3, v5

    or-long/2addr v0, v2

    new-instance v2, Ll1/b;

    invoke-direct {v2, v0, v1}, Ll1/b;-><init>(J)V

    move-object v0, v2

    :goto_12
    return-object v0

    :pswitch_e
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lb3/p;

    const-wide v1, 0x200000000L

    invoke-direct {v0, v1, v2}, Lb3/p;-><init>(J)V

    goto :goto_13

    :cond_1e
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lb3/p;

    const-wide v1, 0x100000000L

    invoke-direct {v0, v1, v2}, Lb3/p;-><init>(J)V

    goto :goto_13

    :cond_1f
    new-instance v0, Lb3/p;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lb3/p;-><init>(J)V

    :goto_13
    return-object v0

    :pswitch_f
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    sget-wide v0, Lb3/o;->c:J

    new-instance v2, Lb3/o;

    invoke-direct {v2, v0, v1}, Lb3/o;-><init>(J)V

    goto :goto_15

    :cond_20
    invoke-static {v1, v8}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_21

    check-cast v2, Ljava/lang/Float;

    goto :goto_14

    :cond_21
    move-object v2, v9

    :goto_14
    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lp2/c0;->w:Lp2/b0;

    invoke-static {v1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v1, :cond_22

    iget-object v0, v3, Lp2/b0;->m:Li9/c;

    invoke-interface {v0, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lb3/p;

    :cond_22
    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v0, v9, Lb3/p;->a:J

    invoke-static {v2, v0, v1}, La/a;->u(FJ)J

    move-result-wide v0

    new-instance v2, Lb3/o;

    invoke-direct {v2, v0, v1}, Lb3/o;-><init>(J)V

    :goto_15
    return-object v2

    :pswitch_10
    invoke-static {v1, v7}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lt2/j;

    invoke-direct {v1, v0}, Lt2/j;-><init>(I)V

    return-object v1

    :pswitch_11
    invoke-static {v1, v7}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lt2/i;

    invoke-direct {v1, v0}, Lt2/i;-><init>(I)V

    return-object v1

    :pswitch_12
    invoke-static {v1, v8}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_16
    if-ge v10, v2, :cond_25

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lp2/c0;->b:Lg5/c;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    :cond_23
    move-object v3, v9

    goto :goto_17

    :cond_24
    if-eqz v3, :cond_23

    iget-object v4, v4, Lg5/c;->n:Ljava/lang/Object;

    check-cast v4, Li9/c;

    invoke-interface {v4, v3}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp2/e;

    :goto_17
    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_16

    :cond_25
    return-object v1

    :pswitch_13
    invoke-static {v1, v7}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, La3/d;

    invoke-direct {v1, v0}, La3/d;-><init>(I)V

    return-object v1

    :pswitch_14
    invoke-static {v1, v7}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, La3/m;

    invoke-direct {v1, v0}, La3/m;-><init>(I)V

    return-object v1

    :pswitch_15
    invoke-static {v1, v6}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_26

    check-cast v1, Ljava/lang/String;

    goto :goto_18

    :cond_26
    move-object v1, v9

    :goto_18
    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lp2/c0;->i:Lg5/c;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_19

    :cond_27
    if-eqz v0, :cond_28

    iget-object v2, v2, Lg5/c;->n:Ljava/lang/Object;

    check-cast v2, Li9/c;

    invoke-interface {v2, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lp2/k0;

    :cond_28
    :goto_19
    new-instance v0, Lp2/l;

    invoke-direct {v0, v1, v9}, Lp2/l;-><init>(Ljava/lang/String;Lp2/k0;)V

    return-object v0

    :pswitch_16
    invoke-static {v1, v7}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, La3/k;

    invoke-direct {v1, v0}, La3/k;-><init>(I)V

    return-object v1

    :pswitch_17
    invoke-static {v1, v8}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    new-instance v12, Lm1/g0;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget v2, Lm1/p;->h:I

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v1, :cond_2a

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    sget-wide v3, Lm1/p;->g:J

    new-instance v1, Lm1/p;

    invoke-direct {v1, v3, v4}, Lm1/p;-><init>(J)V

    goto :goto_1a

    :cond_29
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lm1/v;->c(I)J

    move-result-wide v3

    new-instance v1, Lm1/p;

    invoke-direct {v1, v3, v4}, Lm1/p;-><init>(J)V

    goto :goto_1a

    :cond_2a
    move-object v1, v9

    :goto_1a
    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v13, v1, Lm1/p;->a:J

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lp2/c0;->x:Lp2/b0;

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v1, :cond_2b

    iget-object v2, v3, Lp2/b0;->m:Li9/c;

    invoke-interface {v2, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll1/b;

    goto :goto_1b

    :cond_2b
    move-object v1, v9

    :goto_1b
    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v1, v1, Ll1/b;->a:J

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    move-object v9, v0

    check-cast v9, Ljava/lang/Float;

    :cond_2c
    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v17

    move-wide v15, v1

    invoke-direct/range {v12 .. v17}, Lm1/g0;-><init>(JJF)V

    return-object v12

    :pswitch_18
    invoke-static {v1, v8}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2d

    check-cast v1, Ljava/lang/Integer;

    goto :goto_1c

    :cond_2d
    move-object v1, v9

    :goto_1c
    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2e

    move-object v9, v0

    check-cast v9, Ljava/lang/Integer;

    :cond_2e
    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lp2/d0;->b(II)J

    move-result-wide v0

    new-instance v2, Lp2/l0;

    invoke-direct {v2, v0, v1}, Lp2/l0;-><init>(J)V

    return-object v2

    :pswitch_19
    invoke-static {v1, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    new-instance v1, La3/a;

    invoke-direct {v1, v0}, La3/a;-><init>(F)V

    return-object v1

    :pswitch_1a
    new-instance v0, Lt2/k;

    invoke-static {v1, v7}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lt2/k;-><init>(I)V

    return-object v0

    :pswitch_1b
    invoke-static {v1, v8}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    new-instance v1, La3/q;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lb3/o;->b:[Lb3/p;

    sget-object v3, Lp2/c0;->v:Lp2/b0;

    iget-object v3, v3, Lp2/b0;->m:Li9/c;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v2, :cond_2f

    invoke-interface {v3, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb3/o;

    goto :goto_1d

    :cond_2f
    move-object v2, v9

    :goto_1d
    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v5, v2, Lb3/o;->a:J

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v0, :cond_30

    invoke-interface {v3, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lb3/o;

    :cond_30
    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v2, v9, Lb3/o;->a:J

    invoke-direct {v1, v5, v6, v2, v3}, La3/q;-><init>(JJ)V

    return-object v1

    :pswitch_1c
    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Float>"

    invoke-static {v1, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    new-instance v1, La3/p;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-direct {v1, v2, v0}, La3/p;-><init>(FF)V

    return-object v1

    :pswitch_1d
    new-instance v0, La3/l;

    invoke-static {v1, v7}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, La3/l;-><init>(I)V

    return-object v0

    :pswitch_1e
    invoke-static {v1, v6}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lp2/c0;->a:Lg5/c;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    :cond_31
    move-object v1, v9

    goto :goto_1e

    :cond_32
    if-eqz v1, :cond_31

    iget-object v2, v2, Lg5/c;->n:Ljava/lang/Object;

    check-cast v2, Li9/c;

    invoke-interface {v2, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :goto_1e
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_33

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    :cond_33
    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    new-instance v0, Lp2/g;

    invoke-direct {v0, v1, v9}, Lp2/g;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0

    :pswitch_1f
    invoke-static {v1, v6}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lp2/c0;->h:Lg5/c;

    iget-object v2, v2, Lg5/c;->n:Ljava/lang/Object;

    check-cast v2, Li9/c;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    :cond_34
    move-object v1, v9

    goto :goto_1f

    :cond_35
    if-eqz v1, :cond_34

    invoke-interface {v2, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp2/e0;

    :goto_1f
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    :cond_36
    move-object v6, v9

    goto :goto_20

    :cond_37
    if-eqz v6, :cond_36

    invoke-interface {v2, v6}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lp2/e0;

    :goto_20
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    :cond_38
    move-object v5, v9

    goto :goto_21

    :cond_39
    if-eqz v5, :cond_38

    invoke-interface {v2, v5}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp2/e0;

    :goto_21
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_22

    :cond_3a
    if-eqz v0, :cond_3b

    invoke-interface {v2, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lp2/e0;

    :cond_3b
    :goto_22
    new-instance v0, Lp2/k0;

    invoke-direct {v0, v1, v6, v5, v9}, Lp2/k0;-><init>(Lp2/e0;Lp2/e0;Lp2/e0;Lp2/e0;)V

    return-object v0

    :pswitch_20
    move-object v0, v1

    check-cast v0, Lp2/p;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lp2/p;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lp2/p;->c:I

    const/16 v2, 0x29

    invoke-static {v1, v0, v2}, Lr0/i;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_21
    move-object v0, v1

    check-cast v0, Lp2/b;

    instance-of v0, v0, Lp2/s;

    xor-int/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_22
    move-object v0, v1

    check-cast v0, Le2/e2;

    invoke-static {v0, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :pswitch_23
    move-object v0, v1

    check-cast v0, Le2/e2;

    invoke-static {v0, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
