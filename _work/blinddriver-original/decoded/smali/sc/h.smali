.class public final Lsc/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lsc/h;->l:I

    iput-object p2, p0, Lsc/h;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lsc/h;->l:I

    iget-object p0, p0, Lsc/h;->m:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lr0/i1;

    iget-object p0, p0, Lr0/i1;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lk/m0;

    invoke-direct {v1, v0}, Lk/m0;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_6

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr0/p0;

    iget-object v5, v4, Lr0/p0;->b:Ljava/lang/Object;

    iget v6, v4, Lr0/p0;->a:I

    if-eqz v5, :cond_0

    new-instance v5, Lr0/o0;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v4, Lr0/p0;->b:Ljava/lang/Object;

    invoke-direct {v5, v6, v7}, Lr0/o0;-><init>(Ljava/lang/Integer;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1
    invoke-virtual {v1, v5}, Lk/m0;->f(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    move v7, v2

    :goto_2
    if-eqz v7, :cond_2

    const/4 v8, 0x0

    goto :goto_3

    :cond_2
    iget-object v8, v1, Lk/m0;->c:[Ljava/lang/Object;

    aget-object v8, v8, v6

    :goto_3
    if-nez v8, :cond_3

    goto :goto_4

    :cond_3
    instance-of v9, v8, Lk/h0;

    if-eqz v9, :cond_4

    check-cast v8, Lk/h0;

    invoke-virtual {v8, v4}, Lk/h0;->a(Ljava/lang/Object;)V

    move-object v4, v8

    goto :goto_4

    :cond_4
    sget-object v9, Lk/r0;->a:[Ljava/lang/Object;

    new-instance v9, Lk/h0;

    const/4 v10, 0x2

    invoke-direct {v9, v10}, Lk/h0;-><init>(I)V

    invoke-virtual {v9, v8}, Lk/h0;->a(Ljava/lang/Object;)V

    invoke-virtual {v9, v4}, Lk/h0;->a(Ljava/lang/Object;)V

    move-object v4, v9

    :goto_4
    if-eqz v7, :cond_5

    not-int v6, v6

    iget-object v7, v1, Lk/m0;->b:[Ljava/lang/Object;

    aput-object v5, v7, v6

    iget-object v5, v1, Lk/m0;->c:[Ljava/lang/Object;

    aput-object v4, v5, v6

    goto :goto_5

    :cond_5
    iget-object v5, v1, Lk/m0;->c:[Ljava/lang/Object;

    aput-object v4, v5, v6

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    new-instance p0, Lt0/a;

    invoke-direct {p0, v1}, Lt0/a;-><init>(Lk/m0;)V

    return-object p0

    :pswitch_0
    check-cast p0, Lua/nav/MainActivity;

    invoke-virtual {p0}, Lb/o;->getDefaultViewModelCreationExtras()Ld4/b;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lua/nav/MainActivity;

    invoke-virtual {p0}, Lb/o;->getViewModelStore()Landroidx/lifecycle/f1;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lua/nav/MainActivity;

    invoke-virtual {p0}, Lb/o;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/c1;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
