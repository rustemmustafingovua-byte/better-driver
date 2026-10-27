.class public final synthetic Lod/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Ld1/v;

.field public final synthetic m:F

.field public final synthetic n:Li9/c;

.field public final synthetic o:Lr0/u0;

.field public final synthetic p:Lr0/u0;

.field public final synthetic q:Li9/c;

.field public final synthetic r:F

.field public final synthetic s:Li9/c;

.field public final synthetic t:Li9/c;


# direct methods
.method public synthetic constructor <init>(Ld1/v;FLi9/c;Lr0/u0;Lr0/u0;Li9/c;FLi9/c;Li9/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/g1;->l:Ld1/v;

    iput p2, p0, Lod/g1;->m:F

    iput-object p3, p0, Lod/g1;->n:Li9/c;

    iput-object p4, p0, Lod/g1;->o:Lr0/u0;

    iput-object p5, p0, Lod/g1;->p:Lr0/u0;

    iput-object p6, p0, Lod/g1;->q:Li9/c;

    iput p7, p0, Lod/g1;->r:F

    iput-object p8, p0, Lod/g1;->s:Li9/c;

    iput-object p9, p0, Lod/g1;->t:Li9/c;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    check-cast p1, Lw/e;

    const-string v0, "$this$LazyColumn"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lod/u;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lod/u;-><init>(I)V

    iget-object v3, p0, Lod/g1;->l:Ld1/v;

    invoke-virtual {v3}, Ld1/v;->size()I

    move-result v1

    new-instance v13, Lb0/b1;

    const/4 v2, 0x3

    invoke-direct {v13, v2, v0, v3}, Lb0/b1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lod/p;

    const/4 v2, 0x1

    invoke-direct {v0, v3, v2}, Lod/p;-><init>(Ljava/util/List;I)V

    new-instance v2, Lod/a3;

    iget v4, p0, Lod/g1;->m:F

    iget-object v5, p0, Lod/g1;->n:Li9/c;

    iget-object v6, p0, Lod/g1;->o:Lr0/u0;

    iget-object v7, p0, Lod/g1;->p:Lr0/u0;

    iget-object v8, p0, Lod/g1;->q:Li9/c;

    iget v9, p0, Lod/g1;->r:F

    iget-object v10, p0, Lod/g1;->s:Li9/c;

    iget-object v11, p0, Lod/g1;->t:Li9/c;

    move-object v12, v3

    invoke-direct/range {v2 .. v12}, Lod/a3;-><init>(Ljava/util/List;FLi9/c;Lr0/u0;Lr0/u0;Li9/c;FLi9/c;Li9/c;Ld1/v;)V

    new-instance p0, Lz0/d;

    const v3, 0x799532c4

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4, v2}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-virtual {p1, v1, v13, v0, p0}, Lw/e;->b(ILi9/c;Li9/c;Lz0/d;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
