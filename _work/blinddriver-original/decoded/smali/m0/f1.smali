.class public final synthetic Lm0/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Li9/a;


# direct methods
.method public synthetic constructor <init>(Li9/a;I)V
    .locals 0

    iput p2, p0, Lm0/f1;->l:I

    iput-object p1, p0, Lm0/f1;->m:Li9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lm0/f1;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lt8/z;->a:Lt8/z;

    iget-object p0, p0, Lm0/f1;->m:Li9/a;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ly1/u;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    return-object v4

    :pswitch_0
    check-cast p1, Lw/e;

    const-string v0, "$this$LazyColumn"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lod/l6;

    const/4 v5, 0x5

    invoke-direct {v0, p0, v5}, Lod/l6;-><init>(Li9/a;I)V

    new-instance p0, Lz0/d;

    const v5, -0x17e3825f

    invoke-direct {p0, v5, v2, v0}, Lz0/d;-><init>(IZLt8/e;)V

    const/4 v0, 0x3

    invoke-static {p1, v3, p0, v0}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    sget-object p0, Lod/d0;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lod/k0;

    iget-object v6, v5, Lod/k0;->a:Ljava/lang/String;

    const-string v7, "h:"

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lb0/x2;

    const/16 v8, 0xd

    invoke-direct {v7, v8, v5}, Lb0/x2;-><init>(ILjava/lang/Object;)V

    new-instance v8, Lz0/d;

    const v9, -0x4aba2d8c

    invoke-direct {v8, v9, v2, v7}, Lz0/d;-><init>(IZLt8/e;)V

    const/4 v7, 0x2

    invoke-static {p1, v6, v8, v7}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    iget-object v6, v5, Lod/k0;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v8, v1

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    if-ltz v8, :cond_1

    check-cast v9, Lod/j0;

    iget-object v11, v5, Lod/k0;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "i:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Lb0/x2;

    const/16 v12, 0xe

    invoke-direct {v11, v12, v9}, Lb0/x2;-><init>(ILjava/lang/Object;)V

    new-instance v9, Lz0/d;

    const v12, 0x30351af1

    invoke-direct {v9, v12, v2, v11}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-static {p1, v8, v9, v7}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    move v8, v10

    goto :goto_0

    :cond_1
    invoke-static {}, Lg5/f;->P()V

    throw v3

    :cond_2
    sget-object p0, Lod/m;->c1:Lz0/d;

    invoke-static {p1, v3, p0, v0}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    return-object v4

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    return-object v4

    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    return-object v4

    :pswitch_3
    check-cast p1, Lm2/x;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v3, p0

    :cond_3
    check-cast v3, Ljava/lang/Float;

    const/4 p0, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_4
    move v0, p0

    :goto_1
    new-instance v3, Lo9/a;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, p0, v5}, Lo9/a;-><init>(FF)V

    new-instance p0, Lm2/g;

    invoke-direct {p0, v0, v3, v1}, Lm2/g;-><init>(FLo9/a;I)V

    sget-object v0, Lm2/v;->a:[Lp9/d;

    sget-object v0, Lm2/t;->c:Lm2/w;

    sget-object v1, Lm2/v;->a:[Lp9/d;

    aget-object v1, v1, v2

    invoke-interface {p1, v0, p0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    return-object v4

    :pswitch_4
    check-cast p1, Lb3/c;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll1/b;

    return-object p0

    :pswitch_5
    check-cast p1, Lb3/c;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll1/b;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
