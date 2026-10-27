.class public final synthetic Lod/z5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:Lr0/u0;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/Object;Lr0/u0;I)V
    .locals 0

    iput p4, p0, Lod/z5;->l:I

    iput-boolean p1, p0, Lod/z5;->m:Z

    iput-object p2, p0, Lod/z5;->o:Ljava/lang/Object;

    iput-object p3, p0, Lod/z5;->n:Lr0/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lod/z5;->l:I

    sget-object v1, Lt8/z;->a:Lt8/z;

    iget-object v2, p0, Lod/z5;->n:Lr0/u0;

    iget-object v3, p0, Lod/z5;->o:Ljava/lang/Object;

    iget-boolean p0, p0, Lod/z5;->m:Z

    packed-switch v0, :pswitch_data_0

    check-cast v3, Li9/a;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lod/f4;

    sget-object v4, Lod/f4;->l:Lod/f4;

    if-eq v0, v4, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lod/f4;

    sget-object v0, Lod/f4;->o:Lod/f4;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2, v4}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {v3}, Li9/a;->invoke()Ljava/lang/Object;

    :goto_1
    return-object v1

    :pswitch_0
    check-cast v3, Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x2c

    if-eqz p0, :cond_2

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-array v4, v4, [C

    aput-char v5, v4, v0

    invoke-static {p0, v4}, Lr9/k;->q0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v3}, Lu8/m;->o0(Ljava/util/List;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-array v4, v4, [C

    aput-char v5, v4, v0

    invoke-static {p0, v4}, Lr9/k;->q0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v3}, Lu8/m;->q0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_3
    :goto_3
    if-ge v0, v4, :cond_4

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    const/16 v8, 0x3e

    const-string v4, ","

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
