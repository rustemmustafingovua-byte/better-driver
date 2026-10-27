.class public final synthetic Lod/m6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lua/nav/a;Li9/c;Lr0/r2;Lr0/r2;Lr0/r2;Lr0/u0;Ljd/b;)V
    .locals 0

    .line 1
    const/4 p7, 0x0

    iput p7, p0, Lod/m6;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/m6;->m:Ljava/lang/Object;

    iput-object p2, p0, Lod/m6;->n:Ljava/lang/Object;

    iput-object p3, p0, Lod/m6;->o:Ljava/lang/Object;

    iput-object p4, p0, Lod/m6;->p:Ljava/lang/Object;

    iput-object p5, p0, Lod/m6;->q:Ljava/lang/Object;

    iput-object p6, p0, Lod/m6;->r:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>([Lc2/f1;Ljava/util/List;Lc2/t0;La6/k;La6/k;Lu/m;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lod/m6;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/m6;->m:Ljava/lang/Object;

    iput-object p2, p0, Lod/m6;->n:Ljava/lang/Object;

    iput-object p3, p0, Lod/m6;->o:Ljava/lang/Object;

    iput-object p4, p0, Lod/m6;->p:Ljava/lang/Object;

    iput-object p5, p0, Lod/m6;->q:Ljava/lang/Object;

    iput-object p6, p0, Lod/m6;->r:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lod/m6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lod/m6;->m:Ljava/lang/Object;

    check-cast v0, [Lc2/f1;

    iget-object v1, p0, Lod/m6;->n:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lod/m6;->o:Ljava/lang/Object;

    check-cast v2, Lc2/t0;

    iget-object v3, p0, Lod/m6;->p:Ljava/lang/Object;

    check-cast v3, La6/k;

    iget-object v4, p0, Lod/m6;->q:Ljava/lang/Object;

    check-cast v4, La6/k;

    iget-object p0, p0, Lod/m6;->r:Ljava/lang/Object;

    check-cast p0, Lu/m;

    move-object v5, p1

    check-cast v5, Lc2/e1;

    array-length p1, v0

    const/4 v6, 0x0

    move v12, v6

    :goto_0
    if-ge v12, p1, :cond_0

    move v7, v6

    aget-object v6, v0, v12

    add-int/lit8 v13, v7, 0x1

    const-string v8, "null cannot be cast to non-null type androidx.compose.ui.layout.Placeable"

    invoke-static {v6, v8}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc2/q0;

    invoke-interface {v2}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v8

    iget v9, v3, La6/k;->m:I

    iget v10, v4, La6/k;->m:I

    iget-object v11, p0, Lu/m;->a:Lf1/j;

    invoke-static/range {v5 .. v11}, Lu/l;->b(Lc2/e1;Lc2/f1;Lc2/q0;Lb3/m;IILf1/j;)V

    add-int/lit8 v12, v12, 0x1

    move v6, v13

    goto :goto_0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lod/m6;->m:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lua/nav/a;

    iget-object v0, p0, Lod/m6;->n:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Li9/c;

    iget-object v0, p0, Lod/m6;->o:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lr0/r2;

    iget-object v0, p0, Lod/m6;->p:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lr0/r2;

    iget-object v0, p0, Lod/m6;->q:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lr0/r2;

    iget-object p0, p0, Lod/m6;->r:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Lr0/u0;

    check-cast p1, Lw/e;

    const-string p0, "$this$group"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lod/p5;

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lod/p5;-><init>(Lua/nav/a;Li9/c;Lr0/r2;Lr0/r2;Lr0/r2;Lr0/u0;I)V

    new-instance p0, Lz0/d;

    const v0, -0x2b616568

    const/4 v5, 0x1

    invoke-direct {p0, v0, v5, v1}, Lz0/d;-><init>(IZLt8/e;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p1, v0, p0, v1}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    sget-object p0, Lod/m;->r0:Lz0/d;

    invoke-static {p1, v0, p0, v1}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    sget-object p0, Lod/m;->s0:Lz0/d;

    invoke-static {p1, v0, p0, v1}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    sget-object p0, Lvc/f;->Companion:Lvc/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lvc/c;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lod/m;->t0:Lz0/d;

    invoke-static {p1, v0, p0, v1}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    :cond_1
    new-instance p0, Lod/q5;

    const/4 v6, 0x0

    invoke-direct {p0, v2, v6}, Lod/q5;-><init>(Lua/nav/a;I)V

    new-instance v2, Lz0/d;

    const v6, 0x472c823f

    invoke-direct {v2, v6, v5, p0}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-static {p1, v0, v2, v1}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    sget-object p0, Lod/m;->u0:Lz0/d;

    invoke-static {p1, v0, p0, v1}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    new-instance p0, Lod/r5;

    const/4 v2, 0x0

    invoke-direct {p0, v3, v4, v2}, Lod/r5;-><init>(Li9/c;Lr0/r2;I)V

    new-instance v2, Lz0/d;

    const v3, -0x2d350a03

    invoke-direct {v2, v3, v5, p0}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-static {p1, v0, v2, v1}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
