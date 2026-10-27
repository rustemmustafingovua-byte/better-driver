.class public final synthetic Lk0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lk0/g;


# direct methods
.method public synthetic constructor <init>(Lk0/g;I)V
    .locals 0

    .line 1
    iput p2, p0, Lk0/f;->l:I

    iput-object p1, p0, Lk0/f;->m:Lk0/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk0/g;Lm2/x;)V
    .locals 0

    .line 2
    const/4 p2, 0x3

    iput p2, p0, Lk0/f;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/f;->m:Lk0/g;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lk0/f;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object p0, p0, Lk0/f;->m:Lk0/g;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lp2/g;

    iget-boolean v0, p0, Lk0/g;->E:Z

    if-nez v0, :cond_0

    move v2, v3

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lk0/g;->D:Lb0/r1;

    iget-object v0, v0, Lb0/r1;->e:Lu2/a0;

    if-eqz v0, :cond_1

    new-instance v4, Lu2/i;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lu2/a;

    invoke-direct {v5, p1, v2}, Lu2/a;-><init>(Lp2/g;I)V

    const/4 p1, 0x2

    new-array p1, p1, [Lu2/g;

    aput-object v4, p1, v3

    aput-object v5, p1, v2

    invoke-static {p1}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lk0/g;->D:Lb0/r1;

    iget-object v3, p0, Lb0/r1;->d:Lg5/e;

    iget-object p0, p0, Lb0/r1;->v:Lb0/h0;

    invoke-virtual {v3, p1}, Lg5/e;->h(Ljava/util/List;)Lu2/x;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lu2/a0;->a(Lu2/x;Lu2/x;)V

    invoke-virtual {p0, p1}, Lb0/h0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lk0/g;->C:Lu2/x;

    iget-object v1, v0, Lu2/x;->a:Lp2/g;

    iget-object v1, v1, Lp2/g;->m:Ljava/lang/String;

    iget-wide v4, v0, Lu2/x;->b:J

    sget v0, Lp2/l0;->c:I

    const/16 v0, 0x20

    shr-long v6, v4, v0

    long-to-int v6, v6

    const-wide v7, 0xffffffffL

    and-long/2addr v4, v7

    long-to-int v4, v4

    const-string v5, "<this>"

    invoke-static {v1, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "replacement"

    invoke-static {p1, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-lt v4, v6, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1, v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v5, v1, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lk0/g;->C:Lu2/x;

    iget-wide v3, v3, Lu2/x;->b:J

    shr-long/2addr v3, v0

    long-to-int v0, v3

    iget-object p1, p1, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p1, p1}, Lp2/d0;->b(II)J

    move-result-wide v3

    iget-object p0, p0, Lk0/g;->D:Lb0/r1;

    iget-object p0, p0, Lb0/r1;->v:Lb0/h0;

    new-instance p1, Lu2/x;

    const/4 v0, 0x4

    invoke-direct {p1, v0, v3, v4, v1}, Lu2/x;-><init>(IJLjava/lang/String;)V

    invoke-virtual {p0, p1}, Lb0/h0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, ") is less than start index ("

    const-string v0, ")."

    const-string v1, "End index ("

    invoke-static {v1, v4, p1, v6, v0}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p1, Lp2/g;

    iget-object v0, p0, Lk0/g;->D:Lb0/r1;

    iget-object p1, p1, Lp2/g;->m:Ljava/lang/String;

    iget-boolean p0, p0, Lk0/g;->E:Z

    invoke-static {v0, p1, p0}, Lk0/g;->P0(Lb0/r1;Ljava/lang/String;Z)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lk0/g;->D:Lb0/r1;

    invoke-virtual {v0}, Lb0/r1;->d()Lb0/z2;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lk0/g;->D:Lb0/r1;

    invoke-virtual {p0}, Lb0/r1;->d()Lb0/z2;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object p0, p0, Lb0/z2;->a:Lp2/j0;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lg1/f;

    iget-object v0, p0, Lk0/g;->D:Lb0/r1;

    iget-object v0, v0, Lb0/r1;->t:Lr0/e1;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lk0/g;->D:Lb0/r1;

    iget-object v0, v0, Lb0/r1;->s:Lr0/e1;

    invoke-virtual {v0, v2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lk0/g;->D:Lb0/r1;

    iget-object p1, p1, Lg1/f;->a:Landroid/view/autofill/AutofillValue;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    :cond_4
    const-string p1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v1, p1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    iget-boolean p0, p0, Lk0/g;->E:Z

    invoke-static {v0, v1, p0}, Lk0/g;->P0(Lb0/r1;Ljava/lang/String;Z)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
